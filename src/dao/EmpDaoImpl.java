package dao;

import bean.Biaozhun;
import bean.Emp;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import java.util.List;
import java.util.regex.Pattern;

public class EmpDaoImpl implements EmpDao {

    private final JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public void addEmp(Emp emp) {
        String sql = "INSERT INTO tb_emp (no,name,id,cap,bumen,banzu,zhiwu,biaozhun,state," +
                " male,sign,size_lb1,size_lb2,size_lb3,size_lb4,size_lb5,size_lb6,size_lb7,size_lb8,size_lb9,size_lb10,size_lb11,size_lb12,size_lb13,size_lb14,size_lb15," +
                " lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8,lb9,lb10,lb11,lb12,lb13,lb14,lb15)" +
                " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                 template.update(sql,
                         emp.getNo(), emp.getName(), emp.getId(), emp.getCap(), emp.getBumen(), emp.getBanzu(), emp.getZhiwu(), emp.getBiaozhun(), emp.getState(),
                         emp.getMale(), emp.getSign(), emp.getSize_lb1(), emp.getSize_lb2(), emp.getSize_lb3(), emp.getSize_lb4(), emp.getSize_lb5(), emp.getSize_lb6(), emp.getSize_lb7(), emp.getSize_lb8(), emp.getSize_lb9(), emp.getSize_lb10(), emp.getSize_lb11(), emp.getSize_lb12(), emp.getSize_lb13(), emp.getSize_lb14(), emp.getSize_lb15(),
                         emp.getLb1(), emp.getLb2(), emp.getLb3(), emp.getLb4(), emp.getLb5(), emp.getLb6(), emp.getLb7(), emp.getLb8(), emp.getLb9(), emp.getLb10(), emp.getLb11(), emp.getLb12(), emp.getLb13(), emp.getLb14(), emp.getLb15()
                 );
    }
    @Override
    public void updAll(Emp emp) {
        String sql = "UPDATE tb_emp SET" +
                " name = ?, id = ?, cap = ?, bumen = ?, banzu = ?, zhiwu = ?, biaozhun = ?, state = ?," +
                " male = ?, sign = ?, size_lb1 = ?, size_lb2 = ?, size_lb3 = ?, size_lb4 = ?, size_lb5 = ?, size_lb6 = ?, size_lb7 = ?, size_lb8 = ?, size_lb9 = ?, size_lb10 = ?, size_lb11 = ?, size_lb12 = ?, size_lb13 = ?, size_lb14 = ?, size_lb15 = ?," +
                " lb1 = ?, lb2 = ?, lb3 = ?, lb4 = ?, lb5 = ?, lb6 = ?, lb7 = ?, lb8 = ?, lb9 = ?, lb10 = ?, lb11 = ?, lb12 = ?, lb13 = ?, lb14 = ?, lb15 = ?" +
                " WHERE  no = ? ";
        template.update(sql,emp.getName(), emp.getId(), emp.getCap(), emp.getBumen(), emp.getBanzu(), emp.getZhiwu(), emp.getBiaozhun(), emp.getState(),
                emp.getMale(), emp.getSign(), emp.getSize_lb1(), emp.getSize_lb2(), emp.getSize_lb3(), emp.getSize_lb4(), emp.getSize_lb5(), emp.getSize_lb6(), emp.getSize_lb7(), emp.getSize_lb8(), emp.getSize_lb9(), emp.getSize_lb10(), emp.getSize_lb11(), emp.getSize_lb12(), emp.getSize_lb13(), emp.getSize_lb14(), emp.getSize_lb15(),
                emp.getLb1(), emp.getLb2(), emp.getLb3(), emp.getLb4(), emp.getLb5(), emp.getLb6(), emp.getLb7(), emp.getLb8(), emp.getLb9(), emp.getLb10(), emp.getLb11(), emp.getLb12(), emp.getLb13(), emp.getLb14(), emp.getLb15(),
                emp.getNo());
    }

    @Override
    public void updEmp(Emp emp) {
        String sql = "UPDATE tb_emp SET" +
                " name = ?, id = ?, cap = ?, bumen = ?, banzu = ?, zhiwu = ?, biaozhun = ?, state = ?" +
                " WHERE no = ? ";
        template.update(sql,emp.getName(), emp.getId(), emp.getCap(), emp.getBumen(), emp.getBanzu(), emp.getZhiwu(), emp.getBiaozhun(), emp.getState(),
                emp.getNo());
    }



    @Override
    public void updRecord(Emp emp) {
        String sql = "UPDATE tb_emp SET" +
                " lb1 = ?, lb2 = ?, lb3 = ?, lb4 = ?, lb5 = ?, lb6 = ?, lb7 = ?, lb8 = ?, lb9 = ?, lb10 = ?, lb11 = ?, lb12 = ?, lb13 = ?, lb14 = ?, lb15 = ?" +
                " WHERE  no = ? ";
        template.update(sql,
                emp.getLb1(), emp.getLb2(), emp.getLb3(), emp.getLb4(), emp.getLb5(), emp.getLb6(), emp.getLb7(), emp.getLb8(), emp.getLb9(), emp.getLb10(), emp.getLb11(), emp.getLb12(), emp.getLb13(), emp.getLb14(), emp.getLb15(),
                emp.getNo());
    }
    

    @Override
    public void delEmp(String no) {
        String sql = "DELETE FROM tb_emp WHERE no = ?";
        template.update(sql,no);
    }

    
    
    @Override
    public List<Emp> findAll() {
        String sql = "SELECT * FROM tb_emp";
        return template.query(sql, new BeanPropertyRowMapper<>(Emp.class));
    }


    @Override
    public List<Emp> findEmpByOption(String[] option) {
        StringBuilder sb =new StringBuilder("SELECT * FROM tb_emp WHERE 1 = 1");
        if( option[0]!= null && option[0].length() > 0){
            String  nameRegEx   =   "^[\u0391-\uFFE5]+$";
            String  idRegEx  =  "^(\\d{6})(18|19|20)?(\\d{2})([01]\\d)([0123]\\d)(\\d{3})(\\d|X|x)?$";
            String  noRegEx  =  "^[0-9]{0,6}$";
            String  capRegEx  =  "^[a-zA-Z]{0,10}$";
            boolean bid = Pattern.compile(idRegEx).matcher(option[0]).matches();
            boolean bname = Pattern.compile(nameRegEx).matcher(option[0]).matches();
            boolean bno = Pattern.compile(noRegEx).matcher(option[0]).matches();
            boolean bcap = Pattern.compile(capRegEx).matcher(option[0]).matches();
            if (bno) {
                sb.append(" AND no = ").append(option[0]);
            }
            if (bname) {
                sb.append(" AND name = ").append(option[0]);
            }
            if (bid) {
                sb.append(" AND id = ").append(option[0]);
            }
            if (bcap) {
                sb.append(" AND cap = ").append(option[0]);
            }
        }
        if( "正常".equals(option[1])||"不正常".equals(option[1]) ){
            sb.append(" AND state = ").append(option[1]);
        }
        if( option[2]!= null && option[2].length() > 0){
            sb.append(" AND bumen = ").append(option[2]);
            if( option[3]!= null && option[3].length() > 0){
                sb.append(" AND banzu = ").append(option[3]);
            }
        }
        String sql =sb.toString();
        return template.query(sql, new BeanPropertyRowMapper<>(Emp.class));
    }

    @Override
    public List<Emp> findBumenEmp(String bumen) {
        String sql = "SELECT * FROM tb_emp WHERE bumen = ?";
        return template.query(sql, new BeanPropertyRowMapper<>(Emp.class),bumen);
    }

    @Override
    public void updSize(Emp emp) {
        String sql = "UPDATE tb_emp SET banzu = ? ," +
                " male = ?, sign = ?, size_lb1 = ?, size_lb2 = ?, size_lb3 = ?, size_lb4 = ?, size_lb5 = ?, size_lb6 = ?, size_lb7 = ?, size_lb8 = ?, size_lb9 = ?, size_lb10 = ?, size_lb11 = ?, size_lb12 = ?, size_lb13 = ?, size_lb14 = ?, size_lb15 = ?" +
                " WHERE  no = ? ";
        template.update(sql,emp.getBanzu(),
                emp.getMale(), emp.getSign(), emp.getSize_lb1(), emp.getSize_lb2(), emp.getSize_lb3(), emp.getSize_lb4(), emp.getSize_lb5(), emp.getSize_lb6(), emp.getSize_lb7(), emp.getSize_lb8(), emp.getSize_lb9(), emp.getSize_lb10(), emp.getSize_lb11(), emp.getSize_lb12(), emp.getSize_lb13(), emp.getSize_lb14(), emp.getSize_lb15(),
                emp.getNo());
    }

    @Override
    public List<String> findBumenNames() {
        String sql = "SELECT DISTINCT bumen FROM tb_emp";
        return template.queryForList(sql, String.class);
    }

    @Override
    public List<String> findBanzuNames(String bumen) {
        String sql = "SELECT DISTINCT banzu FROM tb_emp WHERE bumen = ?";
        return template.queryForList(sql, String.class, bumen);
    }

    @Override
    public List<Emp> findEmpByBiaozhun(String biaozhun) {
        return null;
    }


}
