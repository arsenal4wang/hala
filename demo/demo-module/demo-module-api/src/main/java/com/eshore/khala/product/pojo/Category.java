package com.eshore.khala.product.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_category")
public class Category implements Serializable {
    
    private String            id;
    
    private String            code;
    
    private String            name;
    
    @Id
    @Column(name = "id", length = 32)
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    @Column(name = "code", length = 32)
    public String getCode() {
        return code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
    
    @Column(name = "name", length = 32)
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}
