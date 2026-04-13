package ${domainPackage};
<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
        <#if fieldItem.fieldClass == "Date">
            <#assign importDdate = true />
        </#if>
    </#list>
</#if>
import java.io.Serializable;
<#if importDdate>
import java.util.Date;
import javax.persistence.Table;

</#if>
import lombok.Data;
/**
*  ${classInfo.classComment}
*  @author: louchaoyang
*  @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Data
@Table(name = "${classInfo.tableName}")
public class ${classInfo.className?remove_beginning("Biz")}DO implements Serializable {

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    /**
    * ${fieldItem.fieldComment }
    */
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
</#if>

}