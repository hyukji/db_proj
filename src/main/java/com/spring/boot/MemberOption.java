package com.spring.boot;

public enum MemberOption {
    name("학생명"),
    number("학번"),
    inception("기수");

    private String option;

    MemberOption(String option) {
        this.option = option;
    }

    public static MemberOption from(String option) {
        MemberOption[] values = MemberOption.values();
        for(MemberOption value : values) {
            if (value.option.equals(option)) {
                return value;
            }
        }
        return null;
    }
}
