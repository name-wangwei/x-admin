package cn.qqcn.emp.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Dept implements Serializable {
    private Integer deptId;
    private String deptName;
}
