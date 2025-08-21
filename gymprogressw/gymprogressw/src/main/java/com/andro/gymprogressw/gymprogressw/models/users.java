package com.andro.gymprogressw.gymprogressw.models;

public class users {
    private String id, name, nickname ;
    private String password, email;
    private int age, weight, height,porpuse;

    /* constructor
    public users(String id, String name, String nickname, String porpuse, String password, String email, int age, int weight, int height) {
        this.id = id;
        this.name = name;
        this.nickname = nickname;
        this.porpuse = porpuse;
        this.password = password;
        this.email = email;
        this.age = age;
        this.weight = weight;
        this.height = height;
    }
    */
    // getters y setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public int getPorpuse() {
        return porpuse;
    }

    public void setPorpuse(int porpuse) {
        this.porpuse = porpuse;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }
}

