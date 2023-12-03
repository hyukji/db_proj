package com.spring.boot.mapper;

import com.spring.boot.MemberOption;
import com.spring.boot.dto.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberMapper {
    List<MemberDTO> findAll();
    void save(MemberDTO member);
    void delete(int number);
    void update(MemberDTO member);
    List<MemberDTO> findByName(String searchContent);
    List<MemberDTO> findByNumber(String searchContent);
    List<MemberDTO> findByInception(String searchContent);

}
