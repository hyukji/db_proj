package com.spring.boot.service;

import com.spring.boot.dto.AdminDTO;
import com.spring.boot.dto.EventDTO;
import com.spring.boot.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public AdminDTO login(AdminDTO admin) {
        return adminMapper.find(admin);
    }

    public void save(AdminDTO admin) {
        adminMapper.save(admin);
    }

    public void update(AdminDTO admin) {
        adminMapper.update(admin);
    }
}
