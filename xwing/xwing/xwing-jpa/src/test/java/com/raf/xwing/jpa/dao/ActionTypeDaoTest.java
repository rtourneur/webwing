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
import com.raf.xwing.jpa.domain.model.ActionType;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link ActionTypeDao}
 * 
 * @author RAF
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class ActionTypeDaoTest {

  /** Le DAO action type. */
  @Resource
  private transient ActionTypeDao actionTypeDao;

  /**
   * Constructeur.
   */
  public ActionTypeDaoTest() {
    super();
  }

  /**
   * Test method for {@link ActionTypeDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    ActionType actionType = this.actionTypeDao.getById(Integer.valueOf(1));
    assertNotNull("Le type d'action n'a pas été trouvé", actionType);
    assertEquals("L'identifiant du type d'action est incorrect :", actionType.getId(), Integer.valueOf(1));
    actionType = this.actionTypeDao.getById(Integer.valueOf(0));
    assertNull("Le type d'action ne devrait pas exister", actionType);
  }

  /**
   * Test method for {@link ActionTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final ActionType actionType = new ActionType();
    actionType.setIdent(Integer.valueOf(0));
    this.actionTypeDao.persist(actionType);
    fail("Persistence d'un objet incomplet");
  }

  /**
   * Test method for {@link ActionTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final ActionType actionType = new ActionType();
    actionType.setIdent(Integer.valueOf(1));
    actionType.setName("Test");
    actionType.setDescription("Description de test");
    actionType.setIcon("icon");
    this.actionTypeDao.persist(actionType);
    fail("Persistence d'un objet existant");
  }

  /**
   * Test method for {@link ActionTypeDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    ActionType resultat = this.actionTypeDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final ActionType actionType = new ActionType();
    actionType.setIdent(ident);
    actionType.setName("Test");
    actionType.setDescription("Description de test");
    actionType.setIcon("icon");
    this.actionTypeDao.persist(actionType);
    resultat = this.actionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }

  /**
   * Test method for {@link ActionTypeDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    ActionType resultat = this.actionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    ActionType actionType = new ActionType();
    actionType.setIdent(resultat.getIdent());
    actionType.setName(resultat.getName() + "1");
    actionType.setDescription(resultat.getDescription());
    actionType.setIcon(resultat.getIcon() + "1");
    actionType = this.actionTypeDao.merge(actionType);
    assertNotNull("L'objet mis à jour est null", actionType);
    resultat = this.actionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }

  /**
   * Test method for {@link ActionTypeDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    ActionType resultat = this.actionTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.actionTypeDao.remove(resultat);
    resultat = this.actionTypeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link ActionTypeDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final ActionType example = new ActionType();
    List<ActionType> resultats = this.actionTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    example.setName("Tonneau");
    resultats = this.actionTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }

  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<ActionType> resultats = this.actionTypeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
  }

}
