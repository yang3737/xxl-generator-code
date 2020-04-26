import org.springframework.beans.factory.annotation.Autowired;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.stereotype.Service;
import mf.code.thirdpay.repo.po.${classInfo.className};
import mf.code.thirdpay.repo.dao.${classInfo.className}Mapper;
import mf.code.thirdpay.repo.repository.${classInfo.className}Repository;

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Service
public class ${classInfo.className}RepositoryImpl implements ${classInfo.className}Repository{

    @Autowired
    private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

    /**
    * 新增
    */
    @Override
    public int insertSelective(${classInfo.className} ${classInfo.className?uncap_first}) {

        return ${classInfo.className?uncap_first}Mapper.insertSelective(${classInfo.className?uncap_first});
    }

    /**
    * 删除
    */
    @Override
    public int deleteByPrimaryKey(Long id) {

        return ${classInfo.className?uncap_first}Mapper.deleteByPrimaryKey(id);
    }

    /**
    * 更新
    */
    @Override
    public int updateByPrimaryKeySelective(${classInfo.className} ${classInfo.className?uncap_first}) {

        return ${classInfo.className?uncap_first}Mapper.updateByPrimaryKeySelective(${classInfo.className?uncap_first});
    }

    @Override
    public ${classInfo.className} selectByPrimaryKey(Long id) {
        return ${classInfo.className?uncap_first}Mapper.selectByPrimaryKey(id);
    }
    /**
    * 分页查询
    */
    @Override
    public IPage<${classInfo.className}> page(${classInfo.className} ${classInfo.className?uncap_first},Long offset, Long size) {

        QueryWrapper<${classInfo.className}> queryWrapper = new QueryWrapper<>();
        Page<${classInfo.className}> page = new Page<>(offset / size + 1, size);
        IPage<${classInfo.className}> iPage = ${classInfo.className?uncap_first}Mapper.selectPage(page, queryWrapper);
        return iPage;
    }

}
