/**
 * ${classInfo.className}ServiceImpl
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Slf4j
@RequiredArgsConstructor
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {
    private final ${classInfo.className}Repository ${classInfo.className?uncap_first}Repository;

    @Override
    public void save(${classInfo.className}SaveVo saveVo) {
        ${classInfo.className} ${classInfo.className?uncap_first} = BeanUtil.copyProperties(saveVo, ${classInfo.className}.class);
        ${classInfo.className?uncap_first}Repository.save(${classInfo.className?uncap_first});
    }

    @Override
    public void modify(Long id, ${classInfo.className}SaveVo saveVo) {
        ${classInfo.className} ${classInfo.className?uncap_first} = BeanUtil.copyProperties(saveVo, ${classInfo.className}.class);
        ${classInfo.className?uncap_first}.setId(id);
        ${classInfo.className?uncap_first}Repository.updateById(${classInfo.className?uncap_first});
    }

    @Override
    public void remove(Long id) {
        ${classInfo.className?uncap_first}Repository.removeById(id);
    }

    @Override
    public ${classInfo.className}InfoVo info(Long id) {
        ${classInfo.className} ${classInfo.className?uncap_first} = ${classInfo.className?uncap_first}Repository.getById(id);
        return BeanUtil.copyProperties(${classInfo.className?uncap_first}, ${classInfo.className}InfoVo.class);
    }

    @Override
    public Page<${classInfo.className}Vo> page(${classInfo.className}QueryVo queryVo, Pageable pageReq) {
        QueryWrapper qw = QueryWrapper.create();
        return ${classInfo.className?uncap_first}Repository.springPageAs(pageReq, qw, ${classInfo.className}Vo.class);
    }

    @Override
    public List<${classInfo.className}Vo> list(${classInfo.className}QueryVo queryVo) {
        QueryWrapper qw = QueryWrapper.create();
        return ${classInfo.className?uncap_first}Repository.listAs(qw, ${classInfo.className}Vo.class);
    }
}
