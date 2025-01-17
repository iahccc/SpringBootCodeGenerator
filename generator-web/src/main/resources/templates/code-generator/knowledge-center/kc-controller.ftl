/**
 * ${classInfo.classComment?replace("表", "")} Controller
 *
 * @author ${authorName}
 * @date ${.now?string('yyyy/MM/dd')}
 */
@Api(tags = {"${classInfo.classComment?replace("表", "")}"})
@RequiredArgsConstructor
@Slf4j
@RestController
@RequestMapping("/${classInfo.className?uncap_first}")
public class ${classInfo.className}Controller {

    private final ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    @ApiOperation(value = "新增")
    @SaCheckLogin
    @PostMapping
    public ResultInfo<Void> save(@RequestBody @Validated ${classInfo.className}SaveVo saveVo) {
        ${classInfo.className?uncap_first}Service.save(saveVo);
        return ${returnUtilSuccess}();
    }

    @ApiOperation(value = "修改")
    @SaCheckLogin
    @PutMapping("/{id}")
    public ResultInfo<Void> modify(@PathVariable Long id, @RequestBody @Validated ${classInfo.className}SaveVo saveVo) {
        ${classInfo.className?uncap_first}Service.modify(id, saveVo);
        return ${returnUtilSuccess}();
    }

    @ApiOperation(value = "删除")
    @SaCheckLogin
    @DeleteMapping("/{id}")
    public ResultInfo<Void> remove(@PathVariable Long id) {
        ${classInfo.className?uncap_first}Service.remove(id);
        return ${returnUtilSuccess}();
    }

    @ApiOperation(value = "信息")
    @SaCheckLogin
    @GetMapping("/{id}")
    public ResultInfo<${classInfo.className}InfoVo> info(@PathVariable Long id) {
        return ${returnUtilSuccess}(${classInfo.className?uncap_first}Service.info(id));
    }

    @ApiOperation(value = "分页查询")
    @SaCheckLogin
    @GetMapping("/page")
    public ResultInfo<Page<${classInfo.className}Vo>> page(
            @Validated ${classInfo.className}QueryVo queryVo,
            @PageableDefault(sort = {"update_time", "create_time"}, direction = Sort.Direction.DESC) Pageable pageReq) {
        return ${returnUtilSuccess}(${classInfo.className?uncap_first}Service.page(queryVo, pageReq));
    }

    @ApiOperation(value = "列表查询")
    @SaCheckLogin
    @GetMapping("/list")
    public ResultInfo<List<${classInfo.className}Vo>> list(@Validated ${classInfo.className}QueryVo queryVo) {
        return ${returnUtilSuccess}(${classInfo.className?uncap_first}Service.list(queryVo));
    }
}
