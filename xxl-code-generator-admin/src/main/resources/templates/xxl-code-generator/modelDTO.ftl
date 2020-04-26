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
</#if>
import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
/**
*  ${classInfo.classComment}
*  @author: louchaoyang
*  @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Data
public class ${classInfo.className}DTO {

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    /**
    * ${fieldItem.fieldComment }
    */
    @JSONField(name = "${fieldItem.columnName}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
</#if>

}