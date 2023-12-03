package com.spring.boot.mapper;

import com.spring.boot.dto.AdminDTO;
import com.spring.boot.dto.EventDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {
    AdminDTO find(AdminDTO admin);
    void save(AdminDTO admin);
    void update(AdminDTO event);
}
