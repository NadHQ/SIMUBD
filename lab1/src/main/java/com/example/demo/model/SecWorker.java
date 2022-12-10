package com.example.demo.model;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

@Entity
@Data
@Table(schema = "laba1", name = "secworker")
public class SecWorker {

    @Id
    @GeneratedValue
    private Long id;
    private String workname;
    private String second_name;
    private String Name;
    private String thirdName;
    private String year;
    private Date inviteyear;
    private Integer workyear;
    private String gender;
    private String adress;
    private String city;
    private String mobile;


}
