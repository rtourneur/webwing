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
import com.raf.xwing.jpa.domain.model.Restriction;
import com.raf.xwing.jpa.domain.model.RestrictionType;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link RestrictionDao}
 * 
 * @author RAF
 */
public class RestrictionDaoTest extends AbstractDaoTest {
  
  /** Le DAO restriction. */
  @Resource
  private transient RestrictionDao restrictionDao;
  
  /** Le DAO restriction type. */
  @Resource
  private transient RestrictionTypeDao restrictionTypeDao;
  
  /**
   * Constructeur.
   */
  public RestrictionDaoTest() {
    super();
  }
  
  /**
   * Test method for {@link RestrictionDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    Restriction restriction = this.restrictionDao.getById(Integer.valueOf(1));
    assertNotNull("Le type d'action n'a pas été trouvé", restriction);
    assertEquals("L'identifiant du type d'action est incorrect :", restriction.getId(), Integer.valueOf(1));
    restriction = this.restrictionDao.getById(Integer.valueOf(0));
    assertNull("Le type d'action ne devrait pas exister", restriction);
  }
  
  /**
   * Test method for {@link RestrictionDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final Restriction restriction = new Restriction();
    restriction.setIdent(Integer.valueOf(0));
    this.restrictionDao.persist(restriction);
    fail("Persistence d'un objet incomplet");
  }
  
  /**
   * Test method for {@link RestrictionDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final Restriction restriction = new Restriction();
    restriction.setIdent(Integer.valueOf(1));
    final RestrictionType restrictionType = this.restrictionTypeDao.getById(Integer.valueOf(1));
    restriction.setRestrictionType(restrictionType);
    this.restrictionDao.persist(restriction);
    fail("Persistence d'un objet existant");
  }
  
  /**
   * Test method for {@link RestrictionDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    Restriction resultat = this.restrictionDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final Restriction restriction = new Restriction();
    restriction.setIdent(ident);
    final RestrictionType restrictionType = this.restrictionTypeDao.getById(Integer.valueOf(1));
    restriction.setRestrictionType(restrictionType);
    this.restrictionDao.persist(restriction);
    resultat = this.restrictionDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le type de l'objet n'est pas correct", "Ship", resultat.getRestrictionType().getName());
  }
  
  /**
   * Test method for {@link RestrictionDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    Restriction resultat = this.restrictionDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final RestrictionType restrictionType = resultat.getRestrictionType();
    Restriction restriction = new Restriction();
    restriction.setIdent(resultat.getIdent());
    restriction.setRestrictionType(this.restrictionTypeDao.getById(Integer.valueOf(1)));
    restriction = this.restrictionDao.merge(restriction);
    assertNotNull("L'objet mis à jour est null", restriction);
    resultat = this.restrictionDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le type n'a pas été modifié", restrictionType, resultat.getRestrictionType());
  }
  
  /**
   * Test method for {@link RestrictionDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    Restriction resultat = this.restrictionDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.restrictionDao.remove(resultat);
    resultat = this.restrictionDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }
  
  /**
   * Test method for {@link RestrictionDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final Restriction example = new Restriction();
    List<Restriction> resultats = this.restrictionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 22, resultats.size());
    example.setRestrictionType(this.restrictionTypeDao.getById(Integer.valueOf(1)));
    resultats = this.restrictionDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 17, resultats.size());
  }
  
  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<Restriction> resultats = this.restrictionDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
  }
  
}
