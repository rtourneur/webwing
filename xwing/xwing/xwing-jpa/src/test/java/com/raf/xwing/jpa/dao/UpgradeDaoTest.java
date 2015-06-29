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
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link UpgradeDao}
 * 
 * @author RAF
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class UpgradeDaoTest {

  /** The upgrade DAO. */
  @Resource
  private transient UpgradeDao upgradeDao;

  /** The upgrade type DAO. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  /**
   * Constructor.
   */
  public UpgradeDaoTest() {
    super();
  }

  /**
   * Test method for {@link UpgradeDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    Upgrade upgrade = this.upgradeDao.getById(Integer.valueOf(1));
    assertNotNull("L'entité n'a pas été trouvé", upgrade);
    assertEquals("L'identifiant de l'entité est incorrect :", upgrade.getId(), Integer.valueOf(1));
    upgrade = this.upgradeDao.getById(Integer.valueOf(0));
    assertNull("L'entité ne devrait pas exister", upgrade);
  }

  /**
   * Test method for {@link UpgradeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final Upgrade upgrade = new Upgrade();
    upgrade.setIdent(Integer.valueOf(0));
    this.upgradeDao.persist(upgrade);
    fail("Persistence d'un objet incomplet");
  }

  /**
   * Test method for {@link UpgradeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final Upgrade upgrade = new Upgrade();
    upgrade.setIdent(Integer.valueOf(1));
    upgrade.setName("Test");
    upgrade.setDescription("Description de test");
    this.upgradeDao.persist(upgrade);
    fail("Persistence d'un objet existant");
  }

  /**
   * Test method for {@link UpgradeDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    Upgrade resultat = this.upgradeDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final Upgrade upgrade = new Upgrade();
    upgrade.setIdent(ident);
    upgrade.setName("Test");
    upgrade.setDescription("Description de test");
    upgrade.setCost(1);
    upgrade.setLimited(true);
    upgrade.setUniqueness(true);
    upgrade.setUpgradeType(this.upgradeTypeDao.getById(Integer.valueOf(1)));
    this.upgradeDao.persist(upgrade);
    resultat = this.upgradeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }

  /**
   * Test method for {@link UpgradeDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    Upgrade resultat = this.upgradeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    Upgrade upgrade = new Upgrade();
    upgrade.setIdent(resultat.getIdent());
    upgrade.setName(resultat.getName() + "1");
    upgrade.setDescription(resultat.getDescription());
    upgrade.setCost(resultat.getCost() + 1);
    upgrade.setLimited(!resultat.isLimited());
    upgrade.setUniqueness(!resultat.isUniqueness());
    upgrade.setUpgradeType(this.upgradeTypeDao.getById(Integer.valueOf(resultat.getUpgradeType().getId().intValue() + 1)));
    upgrade = this.upgradeDao.merge(upgrade);
    assertNotNull("L'objet mis à jour est null", upgrade);
    resultat = this.upgradeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }

  /**
   * Test method for {@link UpgradeDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    Upgrade resultat = this.upgradeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.upgradeDao.remove(resultat);
    resultat = this.upgradeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link UpgradeDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final Upgrade example = new Upgrade();
    List<Upgrade> resultats = this.upgradeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 136, resultats.size());
    example.setName("Torpilles");
    resultats = this.upgradeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 4, resultats.size());
    example.setName(null);
    example.setUpgradeType(this.upgradeTypeDao.getById(Integer.valueOf(1)));
    resultats = this.upgradeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 23, resultats.size());
  }

  /**
   * Test method for {@link UpgradeDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    Paged<Upgrade> resultats = this.upgradeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    resultats = this.upgradeDao.list(10, 0);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    resultats = this.upgradeDao.list(10, 14);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 6, resultats.size());
    resultats = this.upgradeDao.list(0, 0);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 136, resultats.size());
  }
}
