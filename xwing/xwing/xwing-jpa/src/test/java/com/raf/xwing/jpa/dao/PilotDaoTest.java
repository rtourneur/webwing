package com.raf.xwing.jpa.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.fail;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link PilotDao}
 * 
 * @author RAF
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class PilotDaoTest {

  /** The pilot DAO. */
  @Resource
  private transient PilotDao pilotDao;

  /** The pilot type DAO. */
  @Resource
  private transient ShipTypeDao shipTypeDao;

  /**
   * Constructor.
   */
  public PilotDaoTest() {
    super();
  }

  /**
   * Test method for {@link PilotDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    Pilot pilot = this.pilotDao.getById(Integer.valueOf(1));
    assertNotNull("L'entité n'a pas été trouvé", pilot);
    assertEquals("L'identifiant de l'entité est incorrect :", pilot.getId(), Integer.valueOf(1));
    pilot = this.pilotDao.getById(Integer.valueOf(0));
    assertNull("L'entité ne devrait pas exister", pilot);
  }

  /**
   * Test method for {@link PilotDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final Pilot pilot = new Pilot();
    pilot.setIdent(Integer.valueOf(0));
    this.pilotDao.persist(pilot);
    fail("Persistence d'un objet incomplet");
  }

  /**
   * Test method for {@link PilotDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final Pilot pilot = new Pilot();
    pilot.setIdent(Integer.valueOf(1));
    pilot.setName("Test");
    pilot.setDescription("Description de test");
    this.pilotDao.persist(pilot);
    fail("Persistence d'un objet existant");
  }

  /**
   * Test method for {@link PilotDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    Pilot resultat = this.pilotDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final Pilot pilot = new Pilot();
    pilot.setIdent(ident);
    pilot.setName("Test");
    pilot.setDescription("Description de test");
    pilot.setCost(1);
    pilot.setUniqueness(true);
    pilot.setShipType(this.shipTypeDao.getById(Integer.valueOf(1)));
    this.pilotDao.persist(pilot);
    resultat = this.pilotDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }

  /**
   * Test method for {@link PilotDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    Pilot resultat = this.pilotDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    Pilot pilot = new Pilot();
    pilot.setIdent(resultat.getIdent());
    pilot.setName(resultat.getName() + "1");
    pilot.setDescription(resultat.getDescription());
    pilot.setCost(resultat.getCost() + 1);
    pilot.setUniqueness(!resultat.isUniqueness());
    pilot.setShipType(this.shipTypeDao.getById(Integer.valueOf(resultat.getShipType().getId().intValue() + 1)));
    pilot = this.pilotDao.merge(pilot);
    assertNotNull("L'objet mis à jour est null", pilot);
    resultat = this.pilotDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }

  /**
   * Test method for {@link PilotDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    Pilot resultat = this.pilotDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.pilotDao.remove(resultat);
    resultat = this.pilotDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link PilotDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final Pilot example = new Pilot();
    List<Pilot> resultats = this.pilotDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 125, resultats.size());
    example.setName("Pilote de l'escadron");
    resultats = this.pilotDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 23, resultats.size());
    example.setName(null);
    example.setShipType(this.shipTypeDao.getById(Integer.valueOf(1)));
    resultats = this.pilotDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 10, resultats.size());
  }

  /**
   * Test method for {@link PilotDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    Paged<Pilot> resultats = this.pilotDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    resultats = this.pilotDao.list(10, 0);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    resultats = this.pilotDao.list(10, 14);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 5, resultats.size());
    resultats = this.pilotDao.list(0, 0);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 125, resultats.size());
  }
}
