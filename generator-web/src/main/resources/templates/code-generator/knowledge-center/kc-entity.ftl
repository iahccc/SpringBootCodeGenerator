/**
 * ${classInfo.classComment}
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy/MM/dd')}
 */
@Table(value = "${classInfo.originTableName}", onInsert = MyInsertListener.class, onUpdate = MyUpdateListener.class)
@EqualsAndHashCode(callSuper = true)
@Data
public class ${classInfo.className} extends BaseEntity {
    private static final long serialVersionUID = -1L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem>
<#if fieldItem.fieldName != 'id' && fieldItem.fieldName != 'createTime' && fieldItem.fieldName != 'updateTime' && fieldItem.fieldName != 'createUser' && fieldItem.fieldName != 'updateUser' && fieldItem.fieldName != 'deleteStatus'>
    /**
     * ${fieldItem.fieldComment}
     */
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};
</#if>
</#list>
</#if>
}

