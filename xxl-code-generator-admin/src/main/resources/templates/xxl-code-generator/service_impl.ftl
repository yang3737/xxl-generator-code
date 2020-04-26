import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import mf.code.common.simpleresp.SimpleResponse;
import org.springframework.transaction.annotation.Transactional;
import mf.code.thirdpay.repo.po.${classInfo.className};

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Service
@Transactional
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Autowired
	private ${classInfo.className}Repository ${classInfo.className?uncap_first}Repository;

	/**
    * 新增
    */
	@Override
	public SimpleResponse insert(${classInfo.className} ${classInfo.className?uncap_first}) {

		${classInfo.className?uncap_first}Repository.insertSelective(${classInfo.className?uncap_first});
        return new SimpleResponse();
	}

	/**
	* 删除
	*/
	@Override
	public SimpleResponse delete(Long id) {
		${classInfo.className?uncap_first}Repository.deleteByPrimaryKey(id);
		return new SimpleResponse();
	}

	/**
	* 更新
	*/
	@Override
	public SimpleResponse update(${classInfo.className} ${classInfo.className?uncap_first}) {
		${classInfo.className?uncap_first}Repository.updateByPrimaryKeySelective(${classInfo.className?uncap_first});
	    return new SimpleResponse();
	}

	@Override
	public SimpleResponse detail(Long id) {
		return new SimpleResponse(${classInfo.className?uncap_first}Repository.selectByPrimaryKey(id));
	}

	/**
	* 分页查询
	*/
	@Override
	public SimpleResponse page(${classInfo.className} ${classInfo.className?uncap_first},Long offset, Long size) {

		return new SimpleResponse(${classInfo.className?uncap_first}Repository.page(${classInfo.className?uncap_first}, offset, size));
	}

}
