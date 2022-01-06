package com.social.memes.socialcats.services;

import com.social.memes.socialcats.domain.Cat;
import com.social.memes.socialcats.repositories.SocialCatsRepository;
import io.vavr.control.Either;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SocialCatsServiceImpl implements SocialCatsService{

    private SocialCatsRepository socialCatsRepository;

    @Autowired
    public SocialCatsServiceImpl(SocialCatsRepository socialCatsRepository) {
        this.socialCatsRepository = socialCatsRepository;
    }

    @Override
    public List<Cat> listAllCats() {
        return socialCatsRepository.findAll();
    }

    @Override
    public Either<String,Cat> findCatById(int id) {
        Cat x = socialCatsRepository.findById(id);
        if(x==null){
            return Either.left("");
        }
        return Either.right(x);
    }

    @Override
    public Cat insertCat(Cat cat) {
        if(cat.getName() != null && cat.getBreed() != null && cat.getFurPattern() != null){
            return socialCatsRepository.save(cat);
        }
        return null;
    }

    @Override
    public Cat modifyCat(Cat cat) {
        if(cat != null){
            return socialCatsRepository.update(cat);
        }
        return null;
    }

    @Override
    public Cat deleteCat(int id) {
        if(id != 0) {
            return socialCatsRepository.deletById(id);
        }
        return null;
    }
}
