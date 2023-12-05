package com.spring.boot.service;

import com.spring.boot.dto.FeeDTO;
import com.spring.boot.dto.PayDTO;
import com.spring.boot.mapper.FeeMapper;
import com.spring.boot.mapper.MemberMapper;
import com.spring.boot.mapper.PayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PayService {

    @Autowired
    private PayMapper payMapper;

    @Autowired
    private MemberMapper memberMapper;


    public List<PayDTO> findByFeeId(int feeId) {
        return payMapper.findByFeeId(feeId);
    }

    public void save(PayDTO pay) {
        payMapper.save(pay);
    }

    public void delete(int id) {
        payMapper.delete(id);
    }

    public void update(PayDTO pay) {
        payMapper.update(pay);
    }

}
