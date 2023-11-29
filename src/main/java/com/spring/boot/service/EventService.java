package com.spring.boot.service;

import com.spring.boot.dto.EventDTO;
import com.spring.boot.dto.MemberDTO;
import com.spring.boot.mapper.EventMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {

    @Autowired
    private EventMapper eventMapper;

    public List<EventDTO> findAll() {
        return eventMapper.findAll();
    }

    public void save(EventDTO event) {
        eventMapper.save(event);
    }

    public void delete(int number) {
        eventMapper.delete(number);
    }

    public void update(EventDTO event) {
        eventMapper.update(event);
    }
}
