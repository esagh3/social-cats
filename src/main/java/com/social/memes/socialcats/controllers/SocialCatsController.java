package com.social.memes.socialcats.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.social.memes.socialcats.domain.Cat;
import com.social.memes.socialcats.services.SocialCatsService;
import io.vavr.control.Either;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class SocialCatsController {
    private SocialCatsService socialCatsService;

    @Autowired
    public SocialCatsController(SocialCatsService socialCatsService) {
        this.socialCatsService = socialCatsService;
    }

    @GetMapping("/cats")
    public ResponseEntity<List<Cat>> getAllCats(){
        return ResponseEntity.ok(socialCatsService.listAllCats());
    }

    @GetMapping("/cats/{id}")
    public ResponseEntity<Cat> getCatById(@NonNull @PathVariable int id){
        Either<String,Cat> result =  socialCatsService.findCatById(id);

        if(result.isLeft()){
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(result.get());
    }

    @PostMapping("/cats")
    //@ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE,reason = "Wrong information")
    public ResponseEntity<Cat> insertCat(@NonNull @RequestBody Cat cat){

        Cat result = socialCatsService.insertCat(cat);
        ResponseEntity<Cat> entityCat;

            if(result == null){
                entityCat = new ResponseEntity<Cat>(HttpStatus.NOT_ACCEPTABLE);

            }else if(result.equals(cat)){
                entityCat = new ResponseEntity<Cat>(result,HttpStatus.CREATED);
            }else {
                entityCat = new ResponseEntity<Cat>(HttpStatus.CONFLICT);
            }

            return entityCat;

    }

    @PutMapping("/cats")
    public ResponseEntity<Cat> changeCat(@NonNull @RequestBody Cat cat){
        Cat modifiedCat = socialCatsService.modifyCat(cat);
        if(modifiedCat==null){
            return ResponseEntity.badRequest().body(null);
        }
        return ResponseEntity.ok(modifiedCat);
    }

    @DeleteMapping("/cats/{id}")
    public ResponseEntity<Cat> deleteCat(@NonNull @PathVariable int id){
        Cat cat = socialCatsService.deleteCat(id);
        if (cat==null){
            return ResponseEntity.badRequest().body(null);
        }
        return ResponseEntity.ok(cat);
    }

}
