package com.social.memes.socialcats.repositories;

import com.social.memes.socialcats.domain.Cat;
import org.slf4j.helpers.FormattingTuple;

import java.util.List;

public interface SocialCatsRepository {
    Cat save(Cat cat);

    Cat findById(int id);

    List<Cat> findAll();

    Cat update(Cat cat);

    Cat deletById(int id);
}
