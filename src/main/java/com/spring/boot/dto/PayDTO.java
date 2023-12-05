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
    private int price;
    private String etc;
    private LocalDate date;

    @Override
    public String toString() {
        return "PayDTO{" +
                "id=" + id +
                ", fee_id=" + fee_id +
                ", member_number=" + member_number +
                ", member_name='" + member_name + '\'' +
                ", price=" + price +
                ", etc='" + etc + '\'' +
                ", date=" + date +
                '}';
    }
}
