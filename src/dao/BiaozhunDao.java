package dao;


import bean.Biaozhun;

import java.util.List;

public interface BiaozhunDao {
    /**
     * 新建标准
     * @param bz 实体类
     */
    void addBiaozhun(Biaozhun bz);

    /**
     * 更新标准
     * @param bz 实体类
     */
    void updBiaozhun(Biaozhun bz);

    /**
     * 删除标准
     * @param xuhao 序号
     */
    void delBiaozhun(String xuhao);

    /**
     * 查找标准
     * @return 全部标准
     */
    List<Biaozhun> findBiaozhun();
}
