package com.controller;

import com.bean.Student;
import com.dao.StudentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author HUI
 * @create 2020-11-02 14:53
 */
@Controller
public class StudentController {
    @Autowired
    private StudentDao studentDao;

    @RequestMapping(value = "getStu.do",method = RequestMethod.GET)
    public String getAll(HttpServletRequest request){
        System.out.println("执行查询所有学生！！！");
        List<Student> listStu = studentDao.getAll();
        listStu.forEach((e)-> System.out.println(e));
        request.getSession().setAttribute("listStu",listStu);
        return "success";
    }


}
