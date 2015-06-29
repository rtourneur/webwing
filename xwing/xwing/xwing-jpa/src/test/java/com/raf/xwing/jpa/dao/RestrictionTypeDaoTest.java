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
import com.raf.xwing.jpa.domain.model.RestrictionType;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link RestrictionTypeDao}
 * 
 * @author RAF
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class RestrictionTypeDaoTest {

  /** The restrictionType DAO. */
  @Resource
  private transient RestrictionTypeDao restrictionTypeDao;

  /**
   * Constructor.
   */
  public RestrictionTypeDaoTest() {
    super();
  }

  /**
   * Test method for {@link RestrictionTypeDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    RestrictionType restrictionType = this.restrictionTypeDao.getById(Integer.valueOf(1));
    assertNotNull("La restrictionType n'a pas été trouvé", restrictionType);
    assertEquals("L'identifiant de la restrictionType est incorrect :", restrictionType.getId(), Integer.valueOf(1));
    restrictionType = this.restrictionTypeDao.getById(Integer.valueOf(0));
    assertNull("La restrictionType ne devrait pas exister", restrictionType);
  }

  /**
   * Test method for {@link RestrictionTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final RestrictionType restrictionType = new RestrictionType();
    restrictionType.setIdent(Integer.valueOf(0));
    this.restrictionTypeDao.persist(restrictionType);
    fail("Persistence d'un objet incomplet");
  }

  /**
   * Test method for {@link RestrictionTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final RestrictionType restrictionType = new RestrictionType();
    restrictionType.setIdent(Integer.valueOf(1));
    restrictionType.setName("Test");
    restrictionType.setDescription("DescTest");
    this.restrictionTypeDao.persist(restrictionType);
    fail("Persistence d'un objet existant");
  }

  /**
   * Test method for {@link RestrictionTypeDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    RestrictionType resultat = this.restrictionTypeDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final RestrictionType restrictionType = new RestrictionType();
    restrictionType.setIdent(ident);
    restrictionType.setName("Test");
    restrictionType.setDescription("DescTest");
    this.restrictionTypeDao.persist(restrictionType);
    resultat = this.restrictionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }

  /**
   * Test method for {@link RestrictionTypeDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    RestrictionType resultat = this.restrictionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    RestrictionType restrictionType = new RestrictionType();
    restrictionType.setIdent(resultat.getIdent());
    restrictionType.setName(resultat.getName() + "1");
    restrictionType = this.restrictionTypeDao.merge(restrictionType);
    assertNotNull("L'objet mis à jour est null", restrictionType);
    resultat = this.restrictionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }

  /**
   * Test method for {@link RestrictionTypeDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    RestrictionType resultat = this.restrictionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.restrictionTypeDao.remove(resultat);
    resultat = this.restrictionTypeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link RestrictionTypeDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final RestrictionType example = new RestrictionType();
    List<RestrictionType> resultats = this.restrictionTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 3, resultats.size());
    example.setName("Ship");
    resultats = this.restrictionTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }

  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<RestrictionType> resultats = this.restrictionTypeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 3, resultats.size());
  }

}
