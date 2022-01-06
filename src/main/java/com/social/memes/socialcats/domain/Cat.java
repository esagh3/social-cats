package com.social.memes.socialcats.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize
public class Cat {
    private int id;
    private String name;
    private int age;
    private String breed;
    private String furPattern;
    private String likes;
    private String dislikes;

    public Cat() {
    }

    public Cat(int id, String name, int age, String breed, String furPattern, String likes, String dislikes) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.breed = breed;
        this.furPattern = furPattern;
        this.likes = likes;
        this.dislikes = dislikes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getFurPattern() {
        return furPattern;
    }

    public void setFurPattern(String furPattern) {
        this.furPattern = furPattern;
    }

    public String getLikes() {
        return likes;
    }

    public void setLikes(String likes) {
        this.likes = likes;
    }

    public String getDislikes() {
        return dislikes;
    }

    public void setDislikes(String dislikes) {
        this.dislikes = dislikes;
    }
}
