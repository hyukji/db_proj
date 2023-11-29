package com.spring.boot.service;

import com.spring.boot.dto.MemberDTO;
import com.spring.boot.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;

    public List<MemberDTO> findAll() {
        return memberMapper.findAll();
    }

    public void save(MemberDTO member) {
        memberMapper.save(member);
    }

    public void delete(int number) {
        memberMapper.delete(number);
    }

    public void update(MemberDTO member) {
        memberMapper.update(member);
    }

}
