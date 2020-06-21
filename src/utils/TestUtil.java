/**
 * @author gao
 * @create  2020-01-10 9:02
 */
package utils;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TestUtil {
    public static void main(String[] args) {

    }

    /**
     * 判断对象数据类型
     * @param obj 对象
     * @return  字符串判断结果
     */
    private String whatClass(Object obj) {
        StringBuilder sb1 = new StringBuilder("排除了：");
        StringBuilder sb2 = new StringBuilder("经过判断是：");
        /*引用类型判定*/
        if (obj.getClass().equals(String.class)) {
            sb2.append("String");
        } else {
            sb1.append("、String");
        }
        if (obj.getClass().isArray()) {
            sb2.append("Array "+obj.getClass().toString().replace("Ljava.lang."," ").replace("class ","").replace(";",""));
        } else {
            sb1.append("、Array");
        }
        if (obj.getClass().isInterface()) {
            sb2.append("Interface");
        } else {
            sb1.append("、Interface");
        }
        /*基本类型判定*/
        if (obj.getClass().equals(Character.class)) {
            sb2.append("Char");
        } else {
            sb1.append("、Char");
        }
        if (obj.getClass().equals(Short.class)) {
            sb2.append("Short");
        } else {
            sb1.append("、Short");
        }
        if (obj.getClass().equals(Byte.class)) {
            sb2.append("Byte");
        } else {
            sb1.append("、Byte");
        }
        if (obj.getClass().equals(Long.class)) {
            sb2.append("Long");
        } else {
            sb1.append("、Long");
        }
        if (obj.getClass().equals(Boolean.class)) {
            sb2.append("Boolean");
        } else {
            sb1.append("、Boolean");
        }
        if (obj.getClass().equals(Integer.class)) {
            sb2.append("Integer");
        } else {
            sb1.append("、Integer");
        }
        if (obj.getClass().equals(Float.class)) {
            sb2.append("Float");
        } else {
            sb1.append("、Float");
        }
        if (obj.getClass().equals(Double.class)) {
            sb2.append("Double");
        } else {
            sb1.append("、Double");
        }
        return sb1.toString() + "\n" + sb2.toString();
    }
    @Before
    public void 测试之前的代码() {
        System.out.println("…………开始运行测试…………");
    }

    @After
    public void 之后的代码() {
        System.out.println("————已结束测试————");
    }

    @Test
    public void 测试1() {

        

    }





}

