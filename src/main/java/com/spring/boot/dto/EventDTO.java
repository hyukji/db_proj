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
public class EventDTO {

    @Nullable
    private int id;
    private String name;
    private LocalDate date;
    private String content;
    private String image;

    public EventDTO(String name, LocalDate date, String content, String image) {
        this.name = name;
        this.date = date;
        this.content = content;
        this.image = image;
    }
}
