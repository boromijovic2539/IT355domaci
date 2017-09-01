/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.hibernatecrud.converter;

import com.mycompany.hibernatecrud.dao.KartaDao;
import com.mycompany.hibernatecrud.entity.Klub;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

/**
 *
 * @author vesna.lazarevic
 */
@Component
final public class IntegerToKlub implements Converter<String , Klub>{

    @Autowired
    KartaDao kartaDao;

    @Override
    public Klub convert(String  s) {
        if(s.isEmpty()){
            return null;
        }
        Integer valeu = Integer.valueOf(s);
        System.out.println("Konvertujem u kategoriju");
        Klub cat = kartaDao.getKlubById(valeu);
        return cat;
    }
}
