package com.spring.boot.service;

import com.spring.boot.MemberOption;
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

    public List<MemberDTO> findByOption(MemberOption memberOption, String searchContent) {
        switch (memberOption) {  // 입력 변수의 자료형은 byte, short, char, int, enum, String만 가능하다.
            case name:
                return memberMapper.findByName(searchContent);
            case number:
                return memberMapper.findByNumber(searchContent);
            case inception:
                return memberMapper.findByInception(searchContent);
            default:
                throw new IllegalStateException("Unexpected value: " + memberOption);
        }
    }
}
