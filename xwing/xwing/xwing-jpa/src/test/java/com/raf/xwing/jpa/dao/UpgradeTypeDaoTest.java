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
import com.raf.xwing.jpa.domain.model.UpgradeType;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link UpgradeTypeDao}
 * 
 * @author RAF
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class UpgradeTypeDaoTest {

  /** The upgrade type DAO. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  /**
   * Constructor.
   */
  public UpgradeTypeDaoTest() {
    super();
  }

  /**
   * Test method for {@link UpgradeTypeDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    UpgradeType upgradeType = this.upgradeTypeDao.getById(Integer.valueOf(1));
    assertNotNull("Le type d'upgrade n'a pas été trouvé", upgradeType);
    assertEquals("L'identifiant du type d'upgrade est incorrect :", upgradeType.getId(), Integer.valueOf(1));
    upgradeType = this.upgradeTypeDao.getById(Integer.valueOf(0));
    assertNull("Le type d'upgrade ne devrait pas exister", upgradeType);
  }

  /**
   * Test method for {@link UpgradeTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final UpgradeType upgradeType = new UpgradeType();
    upgradeType.setIdent(Integer.valueOf(0));
    this.upgradeTypeDao.persist(upgradeType);
    fail("Persistence d'un objet incomplet");
  }

  /**
   * Test method for {@link UpgradeTypeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final UpgradeType upgradeType = new UpgradeType();
    upgradeType.setIdent(Integer.valueOf(1));
    upgradeType.setName("Test");
    upgradeType.setDescription("Description de test");
    upgradeType.setIcon("icon");
    this.upgradeTypeDao.persist(upgradeType);
    fail("Persistence d'un objet existant");
  }

  /**
   * Test method for {@link UpgradeTypeDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    UpgradeType resultat = this.upgradeTypeDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final UpgradeType upgradeType = new UpgradeType();
    upgradeType.setIdent(ident);
    upgradeType.setName("Test");
    upgradeType.setDescription("Description de test");
    upgradeType.setIcon("icon");
    this.upgradeTypeDao.persist(upgradeType);
    resultat = this.upgradeTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }

  /**
   * Test method for {@link UpgradeTypeDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    UpgradeType resultat = this.upgradeTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    UpgradeType upgradeType = new UpgradeType();
    upgradeType.setIdent(resultat.getIdent());
    upgradeType.setName(resultat.getName() + "1");
    upgradeType.setDescription(resultat.getDescription());
    upgradeType.setIcon(resultat.getIcon() + "1");
    upgradeType = this.upgradeTypeDao.merge(upgradeType);
    assertNotNull("L'objet mis à jour est null", upgradeType);
    resultat = this.upgradeTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }

  /**
   * Test method for {@link UpgradeTypeDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    UpgradeType resultat = this.upgradeTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.upgradeTypeDao.remove(resultat);
    resultat = this.upgradeTypeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link UpgradeTypeDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final UpgradeType example = new UpgradeType();
    List<UpgradeType> resultats = this.upgradeTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 16, resultats.size());
    example.setName("Torpilles");
    resultats = this.upgradeTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }

  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<UpgradeType> resultats = this.upgradeTypeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
  }

}
