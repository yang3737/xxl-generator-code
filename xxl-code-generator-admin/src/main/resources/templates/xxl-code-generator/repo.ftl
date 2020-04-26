import com.baomidou.mybatisplus.core.metadata.IPage;
import mf.code.thirdpay.repo.po.${classInfo.className};

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
public interface ${classInfo.className}Repository{

    /**
    * 新增
    */
    int insertSelective(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    int deleteByPrimaryKey(Long id);

    /**
    * 更新
    */
    int updateByPrimaryKeySelective(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 主见查询
    */
    ${classInfo.className} selectByPrimaryKey(Long id);

    /**
    * 分页查询Data
    */
    IPage<${classInfo.className}>  page(${classInfo.className} ${classInfo.className?uncap_first},Long offset, Long size);

}
