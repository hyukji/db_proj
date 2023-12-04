package com.spring.boot.mapper;

import com.spring.boot.dto.EventDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EventMapper {
    List<EventDTO> findAll();
    void save(EventDTO event);
    void delete(int number);
    void update(EventDTO event);

    List<EventDTO> findByName(String searchContent);

    List<EventDTO> findByDate(String searchContent);
}
