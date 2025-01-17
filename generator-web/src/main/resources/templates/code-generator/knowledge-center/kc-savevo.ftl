/**
 * ${classInfo.className}SaveVo
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy/MM/dd')}
 */
@ApiModel
@Data
public class ${classInfo.className}SaveVo implements Serializable {
    private static final long serialVersionUID = -1L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem>
    @ApiModelProperty("${fieldItem.fieldComment}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
</#if>
}
