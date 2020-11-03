package com.dao;

import com.bean.Student;

import java.util.List;

public interface StudentDao {
    public List<Student> getAll();

    public int addUser();
}