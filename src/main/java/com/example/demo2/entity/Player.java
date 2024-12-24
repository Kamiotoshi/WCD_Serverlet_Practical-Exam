package com.example.demo2.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Player {
    private int playerId;
    private String name;
    private String fullName;
    private String age;
    private int indexId;

}
