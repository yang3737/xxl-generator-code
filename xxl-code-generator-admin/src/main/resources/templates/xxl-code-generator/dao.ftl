import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;
import mf.code.thirdpay.repo.po.${classInfo.className};
import java.util.List;

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Repository
public interface ${classInfo.className}Mapper extends BaseMapper<${classInfo.className}>{

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
	List<${classInfo.className}> find${classInfo.className}List(${classInfo.className} ${classInfo.className?uncap_first});

}
