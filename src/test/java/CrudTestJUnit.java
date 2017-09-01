/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mycompany.hibernatecrud.dao.KartaDao;
import com.mycompany.hibernatecrud.entity.Klub;
import com.mycompany.hibernatecrud.entity.Utakmica;

import java.util.Arrays;
import java.util.Locale;
import org.hibernate.SessionFactory;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.runner.RunWith;
import org.junit.Test;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/PrviDomaci-servlet.xml"})
public class CrudTestJUnit {

    @Autowired
    protected KartaDao kartaDao;

    @Autowired
    private ApplicationContext context;

    @Before
    public void setUp() {

    }

    @Test
    public void addKlubTest() {
        Klub cat = new Klub();
        cat.setNaziv_klub("Piki");
        cat.setAdresa_klub("Birmigem");
        cat.setKontakt_telefon("7978787");
        cat.setNaziv_stadiona("Blinders");
        Klub newCat = kartaDao.addKlub(cat);
        kartaDao.deleteKlub(newCat);
        Assert.assertNotNull(newCat);
        System.out.println("USPESNO");
    }

    @Test
    public void getKlubByIdTest() {
        Klub cat = new Klub();
        cat.setNaziv_klub("Piki");
        cat.setAdresa_klub("Birmigem");
        cat.setKontakt_telefon("7978787");
        cat.setNaziv_stadiona("Blinders");
        Klub newCat = kartaDao.addKlub(cat);
        Klub get = kartaDao.getKlubById(newCat.getId_klub());
        kartaDao.deleteKlub(newCat);
        Assert.assertNotNull(get);
    }

    @Test
    public void createUtakmicaTest() {
        Utakmica pro = new Utakmica();
        pro.setGostujuci_tim("Kirgiz");
        pro.setVreme_utakmice("15:00");
        Klub get = kartaDao.getKlubById(1);
        pro.setKlub(get);
        Utakmica newPro = kartaDao.addUtakmica(pro);
        kartaDao.deleteUtakmica(newPro);
        Assert.assertNotNull(newPro);
    }

    @Test
    public void getUtakmicaByIdTest() {
        Utakmica pro = new Utakmica();
        pro.setGostujuci_tim("Kirgiz");
        pro.setVreme_utakmice("15:00");
        Klub klub = kartaDao.getKlubById(1);
        pro.setKlub(klub);
        Utakmica newPro = kartaDao.addUtakmica(pro);
        Utakmica get = kartaDao.getUtakmicaById(newPro.getId_utakmica());
        kartaDao.deleteUtakmica(newPro);
        Assert.assertNotNull(get);
    }

    @Test
    public void deleteUtakmicaTest() {
        Utakmica pro = new Utakmica();
        pro.setGostujuci_tim("Kirgiz");
        pro.setVreme_utakmice("15:00");
        Klub klub = kartaDao.getKlubById(1);
        pro.setKlub(klub);
        Utakmica newPro = kartaDao.addUtakmica(pro);
        kartaDao.deleteUtakmica(newPro);
        Utakmica deletedProduct = kartaDao.getUtakmicaById(newPro.getId_utakmica());
        Assert.assertNull(deletedProduct);
    }

}
