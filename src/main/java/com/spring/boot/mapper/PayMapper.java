package com.spring.boot.mapper;

import com.spring.boot.dto.PayDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PayMapper {
    List<PayDTO> findByFeeId(int feeId);

    int countByFeeId(int feeId);

    void delete(int id);

    void update(PayDTO pay);

    void save(PayDTO pay);

}
