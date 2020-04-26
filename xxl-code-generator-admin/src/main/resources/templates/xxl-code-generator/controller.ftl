import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import mf.code.common.simpleresp.SimpleResponse;
import mf.code.thirdpay.repo.po.${classInfo.className};

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@RestController
public class ${classInfo.className}Api {

    @Autowired
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增
    */
    @PostMapping("/insert")
    public SimpleResponse insert(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first});
    }

    /**
    * 删除
    */
    @GetMapping("/delete")
    public SimpleResponse delete(Long id){
        return ${classInfo.className?uncap_first}Service.delete(id);
    }

    /**
    * 更新
    */
    @PostMapping("/update")
    public SimpleResponse update(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
    }

    /**
    * 查询
    */
    @GetMapping("/detail")
    public SimpleResponse detail(Long id){
        return ${classInfo.className?uncap_first}Service.detail(id);
    }

    /**
    * 分页查询
    */
    @PostMapping("/page")
    public SimpleResponse page(${classInfo.className} ${classInfo.className?uncap_first},
                                @RequestParam(value = "offset", defaultValue = "0") Long offset,
                                @RequestParam(value = "size", defaultValue = "10") Long size) {
        return ${classInfo.className?uncap_first}Service.page(${classInfo.className?uncap_first},offset,size);
    }

}
