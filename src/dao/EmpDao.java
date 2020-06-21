package dao;


import bean.Biaozhun;
import bean.Emp;

import java.util.List;

public interface EmpDao {

    /**
     * 新建人员信息
     * @param emp 对应的信息
     */
    void addEmp(Emp emp);

    /**
     * 更新人员所有信息
     * @param emp 对应的信息
     */
    void updAll(Emp emp);

    /**
     * 更新人员信息
     * @param emp 对应的信息
     */
    void updEmp(Emp emp);

    /**
     * 更新人员发放记录
     * @param emp 对应的信息
     */
    void updRecord(Emp emp);

    /**
     * 删除人员信息
     * @param no 工资号
     */
    void delEmp(String no);

    /**
     * 全体查询
     * @return 所有人员所有信息
     */
    List<Emp> findAll();

    /**
     * 条件查询
     * @param option [4]数组条件
     * @return 信息
     */
    List<Emp> findEmpByOption(String[] option);

    /**
     * 查询某部门的信息
     * @param bumen 某部门
     * @return 信息
     */
    List<Emp> findBumenEmp(String bumen);

    /**
     * 更新尺码
     * @param emp 对应信息
     */
    void updSize(Emp emp);

    /**
     * 查询部门名字
     * @return 部门名字
     */
    List<String> findBumenNames();

    /**
     * 查询某部门的班组名字
     * @param bumen 要查询的部门
     * @return 班组名字
     */
    List<String> findBanzuNames(String bumen);


    List<Emp> findEmpByBiaozhun(String biaozhun);
}
