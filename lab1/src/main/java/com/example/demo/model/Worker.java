package com.example.demo.model;


import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor
@Data
@Entity
@Table(name = "worker", schema = "laba1")
public class Worker {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String second_name;
    private String name;
    private String third_name;
    private Long birth_date;
    private Long start_work;
    private Long work_years;
    private String work_name;
    private String gender;
    private String adress;
    private String town;
    private String phone;
}
