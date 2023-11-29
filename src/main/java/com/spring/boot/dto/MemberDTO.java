package com.spring.boot.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MemberDTO {

    private int number;
    private String name;
    private int inception;
    private String image;
    private String category;
    private String etc;

}