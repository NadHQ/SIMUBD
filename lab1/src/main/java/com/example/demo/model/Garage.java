package com.example.demo.model;


import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

@Data
@Entity
@Table(schema = "laba1", name = "garage")
public class Garage {

    @Id
    @GeneratedValue
    private Long id;
    private String garage_name;
    @ManyToOne
    private Cars cars;
    private String type;
    private Date datein;
    private Date dateout;
    private String result;
    @ManyToOne
    private SecWorker secWorker;

}
