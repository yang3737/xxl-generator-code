<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="mf.code.thirdpay.repo.dao.${classInfo.className}Mapper">

    <resultMap id="${classInfo.className}Mapper" type="mf.code.thirdpay.repo.po.${classInfo.className}" >
        <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
                <result column="${fieldItem.columnName}" property="${fieldItem.fieldName}" jdbcType="${fieldItem.jdbcType}" />
            </#list>
        </#if>
    </resultMap>

    <sql id="Base_Column_List">
        <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
                `${fieldItem.columnName}`<#if fieldItem_has_next>,</#if>
            </#list>
        </#if>
    </sql>

    <insert id="insertSelective" parameterType="mf.code.thirdpay.repo.po.${classInfo.className}" >
        INSERT INTO ${classInfo.tableName}
        <trim prefix="(" suffix=")" suffixOverrides=",">
            <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
                <#list classInfo.fieldList as fieldItem >
                    <#if fieldItem.columnName != "Id" >
                        <if test="${fieldItem.fieldName} != null"> `${fieldItem.columnName}` , </if>
                    </#if>
                </#list>
            </#if>
        </trim>
        <trim prefix="values (" suffix=")" suffixOverrides=",">

            <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
                <#list classInfo.fieldList as fieldItem >
                    <#if fieldItem.columnName != "Id" >
                        <#if fieldItem.columnName="AddTime" || fieldItem.columnName="UpdateTime" >
                            NOW()<#if fieldItem_has_next>,</#if>
                        <#else>
                            <if test="${fieldItem.fieldName} != null"> ${r"#{"}${fieldItem.fieldName},jdbcType=${fieldItem.jdbcType}${r"}"}  ,</if>
                        </#if>
                    </#if>
                </#list>
            </#if>
        </trim>

    </insert>

    <delete id="deleteByPrimaryKey" parameterType="java.lang.Long">
        DELETE FROM ${classInfo.tableName}
        WHERE `id` = ${r"#{id}"}
    </delete>

    <update id="updateByPrimaryKeySelective" parameterType="mf.code.thirdpay.repo.po.${classInfo.className}" >
        UPDATE ${classInfo.tableName}
        <set>
            <#list classInfo.fieldList as fieldItem >
                <#if fieldItem.columnName != "Id" && fieldItem.columnName != "AddTime" && fieldItem.columnName != "UpdateTime" >
                    <if test="${fieldItem.fieldName} != null">   ${fieldItem.columnName} = ${r"#{"}${fieldItem.fieldName},jdbcType=${fieldItem.jdbcType}${r"}"} , </if>

                </#if>
            </#list>
        </set>
        WHERE `id` = ${r"#{"}id${r"}"}
    </update>


    <select id="selectByPrimaryKey" parameterType="java.lang.Long" resultMap="${classInfo.className}Mapper">
        SELECT <include refid="Base_Column_List" />
        FROM ${classInfo.tableName}
        WHERE `id` = ${r"#{id}"}
    </select>

    <select id="find${classInfo.className}List" parameterType="mf.code.thirdpay.repo.po.${classInfo.className}" resultMap="${classInfo.className}Mapper">
        SELECT <include refid="Base_Column_List" />
        FROM ${classInfo.tableName}
        <where>
            1=1
            <#list classInfo.fieldList as fieldItem >
                <#if fieldItem.columnName != "Id" && fieldItem.columnName != "AddTime" && fieldItem.columnName != "UpdateTime" >
                    <if test="${fieldItem.fieldName} != null">and ${fieldItem.columnName} = ${r"#{"}${fieldItem.fieldName},jdbcType=${fieldItem.jdbcType}${r"}"} </if>

                </#if>
            </#list>
        </where>

    </select>


</mapper>
