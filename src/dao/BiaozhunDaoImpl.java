package dao;

import bean.Biaozhun;
import bean.Emp;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import java.util.List;
import java.util.regex.Pattern;

public class BiaozhunDaoImpl implements BiaozhunDao {

    private final JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public void addBiaozhun(Biaozhun bz) {
        String sql = "INSERT INTO tb_biaozhun (biaozhunname, lb1, lb2, lb3, lb4, lb5, lb6, lb7, lb8, lb9, lb10, lb11, lb12, lb13, lb14, lb15)" +
                " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        template.update(sql, bz.getBiaozhunname(), bz.getLb1(), bz.getLb2(), bz.getLb3(), bz.getLb4(), bz.getLb5(), bz.getLb6(), bz.getLb7(), bz.getLb8(), bz.getLb9(), bz.getLb10(), bz.getLb11(), bz.getLb12(), bz.getLb13(), bz.getLb14(), bz.getLb15()
        );
    }

    @Override
    public void updBiaozhun(Biaozhun bz) {
        String sql = "UPDATE tb_biaozhun SET " +
                " biaozhunname = ?, lb1 = ?, lb2 = ?, lb3 = ?, lb4 = ?, lb5 = ?, lb6 = ?, lb7 = ?, lb8 = ?, lb9 = ?, lb10 = ?, lb11 = ?, lb12 = ?, lb13 = ?, lb14 = ?, lb15 = ?" +
                " WHERE  xuhao = ? ";
        template.update(sql, bz.getBiaozhunname(), bz.getLb1(), bz.getLb2(), bz.getLb3(), bz.getLb4(), bz.getLb5(), bz.getLb6(), bz.getLb7(), bz.getLb8(), bz.getLb9(), bz.getLb10(), bz.getLb11(), bz.getLb12(), bz.getLb13(), bz.getLb14(), bz.getLb15(), bz.getXuhao());
    }

    @Override
    public void delBiaozhun(String xuhao) {
        String sql = "DELETE FROM tb_biaozhun WHERE xuhao = ?";
        template.update(sql, xuhao);
    }

    @Override
    public List<Biaozhun> findBiaozhun() {
        String sql = "SELECT * FROM tb_biaozhun";
        return template.query(sql, new BeanPropertyRowMapper<>(Biaozhun.class));
    }
}
