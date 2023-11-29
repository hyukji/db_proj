package com.spring.boot.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.lang.Nullable;

import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PayDTO {

    @Nullable
    private int id;
    private int fee_id;
    private int member_number;
    private String member_name;
    private LocalDate date;

    public PayDTO(int fee_id, int member_number, LocalDate date) {
        this.fee_id = fee_id;
        this.member_number = member_number;
        this.date = date;
    }

    @Override
    public String toString() {
        return "PayDTO{" +
                "id=" + id +
                ", feeId=" + fee_id +
                ", memberNumber=" + member_number +
                ", memberName='" + member_name + '\'' +
                ", date=" + date +
                '}';
    }
}
