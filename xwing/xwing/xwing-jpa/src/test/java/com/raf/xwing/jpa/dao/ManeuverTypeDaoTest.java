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
import com.raf.xwing.jpa.domain.model.ManeuverType;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link ManeuverTypeDao}
 * 
 * @author RAF
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class ManeuverTypeDaoTest {

  /** Le DAO action type. */
  @Resource
  private transient ManeuverTypeDao maneuverTypeDao;

  /**
   * Constructeur.
   */
  public ManeuverTypeDaoTest() {
    super();
  }

  /**
   * Test method for {@link ManeuverTypeDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    ManeuverType maneuverType = this.maneuverTypeDao.getById(Integer.valueOf(1));
    assertNotNull("Le type d'action n'a pas été trouvé", maneuverType);
    assertEquals("L'identifiant du type d'action est incorrect :", maneuverType.getId(), Integer.valueOf(1));
    maneuverType = this.maneuverTypeDao.getById(Integer.valueOf(0));
    assertNull("Le type d'action ne devrait pas exister", maneuverType);
  }

  /**
   * Test method for {@link ManeuverTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final ManeuverType maneuverType = new ManeuverType();
    maneuverType.setIdent(Integer.valueOf(0));
    this.maneuverTypeDao.persist(maneuverType);
    fail("Persistence d'un objet incomplet");
  }

  /**
   * Test method for {@link ManeuverTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final ManeuverType maneuverType = new ManeuverType();
    maneuverType.setIdent(Integer.valueOf(1));
    maneuverType.setName("Test");
    maneuverType.setDescription("Description de test");
    maneuverType.setIcon("icon");
    maneuverType.setDifficulty("Green");
    this.maneuverTypeDao.persist(maneuverType);
    fail("Persistence d'un objet existant");
  }

  /**
   * Test method for {@link ManeuverTypeDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    ManeuverType resultat = this.maneuverTypeDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final ManeuverType maneuverType = new ManeuverType();
    maneuverType.setIdent(ident);
    maneuverType.setName("Test");
    maneuverType.setDescription("Description de test");
    maneuverType.setIcon("icon");
    maneuverType.setDifficulty("Green");
    this.maneuverTypeDao.persist(maneuverType);
    resultat = this.maneuverTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }

  /**
   * Test method for {@link ManeuverTypeDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    ManeuverType resultat = this.maneuverTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    ManeuverType maneuverType = new ManeuverType();
    maneuverType.setIdent(resultat.getIdent());
    maneuverType.setName(resultat.getName() + "1");
    maneuverType.setDescription(resultat.getDescription());
    maneuverType.setIcon(resultat.getIcon() + "1");
    maneuverType = this.maneuverTypeDao.merge(maneuverType);
    assertNotNull("L'objet mis à jour est null", maneuverType);
    resultat = this.maneuverTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }

  /**
   * Test method for {@link ManeuverTypeDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    ManeuverType resultat = this.maneuverTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.maneuverTypeDao.remove(resultat);
    resultat = this.maneuverTypeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link ManeuverTypeDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final ManeuverType example = new ManeuverType();
    List<ManeuverType> resultats = this.maneuverTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 19, resultats.size());
    example.setName("Straight");
    resultats = this.maneuverTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 3, resultats.size());
    example.setDifficulty("Green");
    resultats = this.maneuverTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }

  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<ManeuverType> resultats = this.maneuverTypeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
  }

}
