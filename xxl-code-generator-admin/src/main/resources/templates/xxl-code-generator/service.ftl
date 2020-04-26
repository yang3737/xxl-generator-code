import java.util.Map;
import mf.code.common.simpleresp.SimpleResponse;
import mf.code.thirdpay.repo.po.${classInfo.className};

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
public interface ${classInfo.className}Service {

    /**
    * 新增
    */
    SimpleResponse insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    SimpleResponse delete(Long id);

    /**
    * 更新
    */
    SimpleResponse update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 详情
    */
    SimpleResponse detail(Long id);


    /**
    * 分页查询
    */
    SimpleResponse page(${classInfo.className} ${classInfo.className?uncap_first},Long offset, Long size);

}