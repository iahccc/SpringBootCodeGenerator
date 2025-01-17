/**
 * ${classInfo.className}Service
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy/MM/dd')}
 */
public interface ${classInfo.className}Service {
    /**
     * 新增
     *
     * @param saveVo 参数
     */
    void save(${classInfo.className}SaveVo saveVo);

    /**
     * 修改
     *
     * @param id     ID
     * @param saveVo 参数
     */
    void modify(Long id, ${classInfo.className}SaveVo saveVo);

    /**
     * 删除
     *
     * @param id ID
     */
    void remove(Long id);

    /**
     * 信息
     *
     * @param id ID
     * @return {@link ${classInfo.className}InfoVo}
     */
    ${classInfo.className}InfoVo info(Long id);

    /**
     * 分页查询
     *
     * @param queryVo 查询参数
     * @param pageReq    分页参数
     * @return 分页数据
     */
    Page<${classInfo.className}Vo> page(${classInfo.className}QueryVo queryVo, Pageable pageReq);

    /**
     * 列表数据
     *
     * @param queryVo 查询参数
     * @return 列表数据
     */
    List<${classInfo.className}Vo> list(${classInfo.className}QueryVo queryVo);
}
