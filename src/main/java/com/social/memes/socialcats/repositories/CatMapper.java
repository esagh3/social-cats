package com.social.memes.socialcats.repositories;

import com.social.memes.socialcats.domain.Cat;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CatMapper implements RowMapper<Cat> {

    @Override
    public Cat mapRow(ResultSet rs, int rowNum) throws SQLException {
        Cat cat = new Cat();
        cat.setId(rs.getInt("id"));
        cat.setName(rs.getString("cat_name"));
        cat.setAge(rs.getInt("age"));
        cat.setBreed(rs.getString("breed"));
        cat.setFurPattern(rs.getString("fur_pattern"));
        cat.setLikes(rs.getString("likes"));
        cat.setDislikes(rs.getString("dislikes"));

        return cat;
    }
}
