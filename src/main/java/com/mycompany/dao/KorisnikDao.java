/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.dao;

import com.mycompany.model.Korisnik;
import java.util.List;

/**
 *
 * @author vesna.lazarevic
 */
public interface KorisnikDao {

    public int getCount();
    
    public Korisnik getByID(int id);
    
    public boolean update(Korisnik korisnik);
    
    public int getNextID();

    public List<Korisnik> getAllKorisnici();

    public boolean addKorisnik(Korisnik korisnik);

	//public List<Zaposleni> getZaposlenisByName(String name);

    public boolean deleteKorisnik(int kor);
}
