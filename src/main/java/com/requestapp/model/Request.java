package com.requestapp.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;


import java.util.Date;

@Entity
@Table(name = "requests")
public class Request {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotEmpty (message = "Введите текст заявки")
    @Column(name = "Text")
    private String text;

    @Column(name="RequestDate")
    @DateTimeFormat(pattern = "yy-MM-dd HH:mm:ss")
    private Date date = new Date();

    @NotEmpty(message = "Введите автора заявки")
    @Column(name = "Author")
    private String author;

    @Column(name = "Department")
    private String department;

    @NotEmpty(message = "Введите адрес")
    @Column(name = "Adress")
    private String adress;

    @Column(name = "NameCalled")
    private String nameCalled;

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getNameCalled() {
        return nameCalled;
    }

    public void setNameCalled(String nameCalled) {
        this.nameCalled = nameCalled;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Request{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", author='" + author + '\'' +
                ", department='" + department + '\'' +
                '}';
    }
}
