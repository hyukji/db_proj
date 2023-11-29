package com.spring.boot.mapper;

import com.spring.boot.dto.FeeDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FeeMapper {
    List<FeeDTO> findAll();
    void save(FeeDTO fee);
    void delete(int id);
    void update(FeeDTO fee);
}
