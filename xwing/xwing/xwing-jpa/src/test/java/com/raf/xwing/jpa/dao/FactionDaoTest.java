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
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.jpa.domain.model.Faction;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link FactionDao}
 * 
 * @author RAF
 */
public class FactionDaoTest extends AbstractDaoTest {
  
  /** The faction DAO. */
  @Resource
  private transient FactionDao factionDao;
  
  /**
   * Constructor.
   */
  public FactionDaoTest() {
    super();
  }
  
  /**
   * Test method for {@link FactionDao#getById(Serializable)}.
   */
  @Test
  public void testGetById() {
    Faction faction = this.factionDao.getById(Integer.valueOf(1));
    assertNotNull("La faction n'a pas été trouvé", faction);
    assertEquals("L'identifiant de la faction est incorrect :", faction.getId(), Integer.valueOf(1));
    faction = this.factionDao.getById(Integer.valueOf(0));
    assertNull("La faction ne devrait pas exister", faction);
  }
  
  /**
   * Test method for {@link FactionDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public void testPersistIntegrity() {
    final Faction faction = new Faction();
    faction.setIdent(Integer.valueOf(0));
    this.factionDao.persist(faction);
    fail("Persistence d'un objet incomplet");
  }
  
  /**
   * Test method for {@link FactionDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public void testPersistExists() {
    final Faction faction = new Faction();
    faction.setIdent(Integer.valueOf(1));
    faction.setName("Test");
    faction.setDescription("Description de test");
    this.factionDao.persist(faction);
    fail("Persistence d'un objet existant");
  }
  
  /**
   * Test method for {@link FactionDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public void testPersist() {
    final Integer ident = Integer.valueOf(0);
    Faction resultat = this.factionDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final Faction faction = new Faction();
    faction.setIdent(ident);
    faction.setName("Test");
    faction.setDescription("Description de test");
    this.factionDao.persist(faction);
    resultat = this.factionDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }
  
  /**
   * Test method for {@link FactionDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public void testMerge() {
    final Integer ident = Integer.valueOf(1);
    Faction resultat = this.factionDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    Faction faction = new Faction();
    faction.setIdent(resultat.getIdent());
    faction.setName(resultat.getName() + "1");
    faction.setDescription(resultat.getDescription());
    faction = this.factionDao.merge(faction);
    assertNotNull("L'objet mis à jour est null", faction);
    resultat = this.factionDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }
  
  /**
   * Test method for {@link FactionDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public void testRemove() {
    final Integer ident = Integer.valueOf(1);
    Faction resultat = this.factionDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.factionDao.remove(resultat);
    resultat = this.factionDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }
  
  /**
   * Test method for {@link FactionDao#findByExample(DomainEntity)}.
   */
  @Test
  public void testFindByExample() {
    final Faction example = new Faction();
    List<Faction> resultats = this.factionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 3, resultats.size());
    example.setName("Rebelle");
    resultats = this.factionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }
  
  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<Faction> resultats = this.factionDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 3, resultats.size());
  }
  
}
