package com.raf.xwing.jpa.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.fail;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.jpa.domain.model.Expansion;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link ExpansionDao}
 * 
 * @author RAF
 */
public class ExpansionDaoTest extends AbstractDaoTest {
  
  /** The expansion DAO. */
  @Resource
  private transient ExpansionDao expansionDao;
  
  /**
   * Constructor.
   */
  public ExpansionDaoTest() {
    super();
  }
  
  /**
   * Test method for {@link ExpansionDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    Expansion expansion = this.expansionDao.getById(Integer.valueOf(1));
    assertNotNull("La expansion n'a pas été trouvé", expansion);
    assertEquals("L'identifiant de la expansion est incorrect :", expansion.getId(), Integer.valueOf(1));
    expansion = this.expansionDao.getById(Integer.valueOf(0));
    assertNull("La expansion ne devrait pas exister", expansion);
  }
  
  /**
   * Test method for {@link ExpansionDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final Expansion expansion = new Expansion();
    expansion.setIdent(Integer.valueOf(0));
    this.expansionDao.persist(expansion);
    fail("Persistence d'un objet incomplet");
  }
  
  /**
   * Test method for {@link ExpansionDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final Expansion expansion = new Expansion();
    expansion.setIdent(Integer.valueOf(1));
    expansion.setName("Test");
    expansion.setDescription("Description de test");
    this.expansionDao.persist(expansion);
    fail("Persistence d'un objet existant");
  }
  
  /**
   * Test method for {@link ExpansionDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    Expansion resultat = this.expansionDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final Expansion expansion = new Expansion();
    expansion.setIdent(ident);
    expansion.setName("Test");
    expansion.setDescription("Description de test");
    expansion.setWave("Test wave");
    expansion.setCost(BigDecimal.ONE);
    this.expansionDao.persist(expansion);
    resultat = this.expansionDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }
  
  /**
   * Test method for {@link ExpansionDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    Expansion resultat = this.expansionDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    Expansion expansion = new Expansion();
    expansion.setIdent(resultat.getIdent());
    expansion.setName(resultat.getName() + "1");
    expansion.setDescription(resultat.getDescription());
    expansion.setWave(resultat.getWave() + "1");
    expansion.setCost(resultat.getCost().add(BigDecimal.ONE));
    expansion = this.expansionDao.merge(expansion);
    assertNotNull("L'objet mis à jour est null", expansion);
    resultat = this.expansionDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }
  
  /**
   * Test method for {@link ExpansionDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    Expansion resultat = this.expansionDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.expansionDao.remove(resultat);
    resultat = this.expansionDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }
  
  /**
   * Test method for {@link ExpansionDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final Expansion example = new Expansion();
    List<Expansion> resultats = this.expansionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 32, resultats.size());
    example.setName("wing");
    resultats = this.expansionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 6, resultats.size());
    example.setWave("1");
    resultats = this.expansionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 2, resultats.size());
  }
  
  /**
   * Test method for {@link ExpansionDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    Paged<Expansion> resultats = this.expansionDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    resultats = this.expansionDao.list(10, 0);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    resultats = this.expansionDao.list(10, 10);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 2, resultats.size());
    resultats = this.expansionDao.list(0, 0);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 32, resultats.size());
  }
}
