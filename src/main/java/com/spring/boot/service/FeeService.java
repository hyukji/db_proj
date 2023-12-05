package com.spring.boot.service;

import com.spring.boot.dto.FeeDTO;
import com.spring.boot.mapper.FeeMapper;
import com.spring.boot.mapper.PayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeeService {

    @Autowired
    private FeeMapper feeMapper;
    @Autowired
    private PayMapper payMapper;

    public List<FeeDTO> findAll() {
        return feeMapper.findAll();
    }

    public int sumPayAmount(FeeDTO fee) {
        return payMapper.countByFeeId(fee.getId()) * fee.getPrice();
    }

    public void save(FeeDTO fee) {
        feeMapper.save(fee);
    }

    public void delete(int id) {
        feeMapper.delete(id);
    }

    public void update(FeeDTO fee) {
        feeMapper.update(fee);
    }

    public FeeDTO findById(int id) {
        return feeMapper.findById(id);
    }
}
