package com.example.chatApp.service;

import java.util.List;

public interface CommonService<T>
{
    void insert(T object);
    void update(T object);
    void delete(Integer id);
    void delete(String ids);
    T findById(Integer id);
    List<T> findAll();
}
