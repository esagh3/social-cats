package com.social.memes.socialcats.repositories;

import com.social.memes.socialcats.domain.Cat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.jdbc.JdbcTemplateAutoConfiguration;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;


@Repository
public class SocialCatsRepositoryImpl implements SocialCatsRepository{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Cat save(Cat cat) {
        KeyHolder keyholder = new GeneratedKeyHolder();
        //https://www.baeldung.com/spring-jdbc-autogenerated-keys
        String INSERT_CAT_SQL = "INSERT INTO social_cats_schema.cats (cat_name, age, breed, fur_pattern, likes, dislikes) VALUES(?,?,?,?,?,?)";

        Cat queriedCat = findById(cat.getId());

        if(queriedCat == null){
            jdbcTemplate.update(connection -> {
                PreparedStatement ps = connection.prepareStatement(INSERT_CAT_SQL, new String[] { "id" } );
                ps.setString(1, cat.getName());
                ps.setInt(2,cat.getAge());
                ps.setString(3, cat.getBreed());
                ps.setString(4, cat.getFurPattern());
                ps.setString(5, cat.getLikes());
                ps.setString(6, cat.getDislikes());
                return ps;}, keyholder
            );
            cat.setId((int) keyholder.getKey());
            return cat;
        }

        return null;

    }

    @Override
    public Cat findById(int id) {
    String FIND_CAT_SQL = "SELECT * FROM social_cats_schema.cats where id=?";
        try {
            return jdbcTemplate.query(connection -> {
                PreparedStatement ps = connection.prepareStatement(FIND_CAT_SQL);
                ps.setInt(1, id);
                return ps;}, new CatMapper()).get(0);
        }
        catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    @Override
    public List<Cat> findAll() {
        return jdbcTemplate.query("SELECT * FROM social_cats_schema.cats",
                new CatMapper());
    }

    @Override
    public Cat update(Cat cat) {
        String UPDATE_CAT_SQL = "UPDATE social_cats_schema.cats SET cat_name=?, age=?, breed=?, fur_pattern=?, likes=?, dislikes=? WHERE id=?";
        Cat querie = findById(cat.getId());

        if(querie != null){
            jdbcTemplate.update(connection -> {
                PreparedStatement ps = connection.prepareStatement(UPDATE_CAT_SQL);
                ps.setString(1, cat.getName());
                ps.setInt(2,cat.getAge());
                ps.setString(3, cat.getBreed());
                ps.setString(4, cat.getFurPattern());
                ps.setString(5, cat.getLikes());
                ps.setString(6, cat.getDislikes());
                ps.setInt(7,cat.getId());
                return ps;});

            return findById(cat.getId());
        }

        return null;
    }

    @Override
    public Cat deletById(int id) {
        String DELETE_CAT_SQL = "DELETE FROM social_cats_schema.cats WHERE id=?";
        Cat querie = findById(id);

        if(querie != null){
            jdbcTemplate.update(connection -> {
                PreparedStatement ps = connection.prepareStatement(DELETE_CAT_SQL);
                ps.setInt(1, id);
                return ps;});

            return querie;
        }
        return null;
    }

}

