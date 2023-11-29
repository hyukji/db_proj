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
public class FeeDTO {

    @Nullable
    private int id;
    private String name;
    private int price;
    private LocalDate date;

    public FeeDTO(String name, int price, LocalDate date) {
        this.name = name;
        this.price = price;
        this.date = date;
    }


}
