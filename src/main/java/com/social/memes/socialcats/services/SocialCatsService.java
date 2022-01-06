package com.social.memes.socialcats.services;

import com.social.memes.socialcats.domain.Cat;
import io.vavr.control.Either;

import java.util.List;

public interface SocialCatsService {
    List<Cat> listAllCats();

    Either<String,Cat> findCatById(int id);

    Cat insertCat(Cat cat);

    Cat modifyCat(Cat cat);

    Cat deleteCat(int id);
}
