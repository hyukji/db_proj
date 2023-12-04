package com.spring.boot.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class EventDTO {

    @Nullable
    private int id;
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    private String content;
    private String image;

    static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");

    public EventDTO(String name, LocalDate date, String content, String image) {
        this.name = name;
        this.date = date;
        this.content = content;
        this.image = image;
    }

    public String getDateFormat() {
        return this.date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

}
