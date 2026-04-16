package ${daoPackage};
import ${domainPackage}.${classInfo.className?remove_beginning("Experts")}DO;
import java.util.List;

/**
* @description: ${classInfo.classComment}
* @author: louchaoyang
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
public interface ${classInfo.className?remove_beginning("Experts")}Mapper {

    /**
    * 新增
    */
    int insert(${classInfo.className?remove_beginning("Experts")}DO ${classInfo.className?remove_beginning("Experts")?uncap_first});

    /**
    * 删除
    */
    int delete(Long id);

    /**
    * 更新
    */
    int update(${classInfo.className?remove_beginning("Experts")}DO ${classInfo.className?uncap_first});

    /**
    * 主见查询
    */
    ${classInfo.className?remove_beginning("Experts")}DO selectById(Long id);

    /**
    * 分页查询Data
    */
    List<${classInfo.className?remove_beginning("Experts")}DO> find${classInfo.className?remove_beginning("Experts")}List(${classInfo.className?remove_beginning("Experts")}DO ${classInfo.className?remove_beginning("Experts")?uncap_first});

}
