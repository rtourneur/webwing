package com.raf.xwing.jpa.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.jpa.domain.model.ActionType;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.jpa.domain.model.ShipUpgrade;
import com.raf.xwing.jpa.domain.model.UpgradeType;
import com.raf.xwing.util.Paged;

/**
 * @author raphael.tourneur
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class ShipTypeDaoTest {

  /** The ship type DAO. */
  @Resource
  private transient ShipTypeDao shipTypeDao;

  /** The action type DAO. */
  @Resource
  private transient ActionTypeDao actionTypeDao;

  /** The upgrade type DAO. */
  @Resource
  private transient UpgradeTypeDao upgradeTypeDao;

  /**
   * Constructor.
   */
  public ShipTypeDaoTest() {
    super();
  }

  /**
   * Test method for {@link EntityDao#getById(java.io.Serializable)}.
   */
  @Test
  @Transactional
  public final void testGetById() {
    final ShipType shipType = this.shipTypeDao.getById(Integer.valueOf(1));
    assertNotNull("Le type de vaisseau n'a pas été trouvé", shipType);
    assertEquals("Le vaisseau n'est pas un X-Wing", "X-Wing", shipType.getName());
    assertFalse("La liste des actions est vide", shipType.getActions().isEmpty());
    assertEquals("La liste des actions n'est pas correcte", 2, shipType.getActions().size());
    assertFalse("La liste des améliorations est vide", shipType.getUpgrades().isEmpty());
    assertEquals("La liste des améliorations n'est pas correcte", 2, shipType.getUpgrades().size());
  }

  /**
   * Test method for {@link EntityDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    ShipType resultat = this.shipTypeDao.getById(Integer.valueOf(0));
    assertNull("L'objet existe avant la création", resultat);
    final ShipType shipType = new ShipType();
    shipType.setIdent(Integer.valueOf(0));
    shipType.setName("Test ship");
    shipType.setPrimaryWeapon(1);
    shipType.setAgility(2);
    shipType.setHull(3);
    shipType.setShield(4);
    shipType.setIcon("icon");
    final List<ActionType> actions = new ArrayList<>();
    shipType.setActions(actions);
    actions.add(this.actionTypeDao.getById(Integer.valueOf(1)));
    final List<ShipUpgrade> upgrades = new ArrayList<>();
    shipType.setUpgrades(upgrades);
    final ShipUpgrade shipUpgrade = new ShipUpgrade();
    // shipUpgrade.setShipUpgradePk(new ShipUpgradePk());

    // shipUpgrade.getShipUpgradePk().setShipType(shipType.getId());
    shipUpgrade.setUpgradeType(this.upgradeTypeDao.getById(Integer.valueOf(1)));
    shipUpgrade.setQuantity(2);
    upgrades.add(shipUpgrade);
    this.shipTypeDao.persist(shipType);
    resultat = this.shipTypeDao.getById(Integer.valueOf(0));
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertFalse("La liste des actions est vide", resultat.getActions().isEmpty());
    assertFalse("La liste des améliorations est vide", resultat.getUpgrades().isEmpty());
  }

  /**
   * Test method for {@link EntityDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    ShipType resultat = this.shipTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);

    final String name = resultat.getName();
    final int nbActions = resultat.getActions().size();
    final int nbUpgrades = resultat.getUpgrades().size();
    ShipType shipType = new ShipType();
    shipType.setIdent(resultat.getIdent());
    shipType.setName(resultat.getName() + "1");
    shipType.setPrimaryWeapon(resultat.getPrimaryWeapon() + 1);
    shipType.setAgility(resultat.getAgility() + 1);
    shipType.setHull(resultat.getHull() + 1);
    shipType.setShield(resultat.getShield() + 1);
    shipType.setEnergy(resultat.getEnergy() + 1);
    shipType.setActions(resultat.getActions());
    shipType.getActions().add(this.actionTypeDao.getById(ident));
    shipType.setUpgrades(resultat.getUpgrades());
    final UpgradeType upgradeType = this.upgradeTypeDao.getById(ident);
    final ShipUpgrade shipUpgrade = new ShipUpgrade();
    shipUpgrade.setUpgradeType(upgradeType);
    shipUpgrade.setQuantity(1);
    shipType.getUpgrades().add(shipUpgrade);
    shipType = this.shipTypeDao.merge(shipType);
    assertNotNull("L'objet mis à jour est null", shipType);
    resultat = this.shipTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
    assertFalse("La liste des actions est vide", resultat.getActions().isEmpty());
    assertEquals("La liste des actions n'est pas correcte", nbActions + 1, resultat.getActions().size());
    assertFalse("La liste des améliorations est vide", resultat.getUpgrades().isEmpty());
    assertEquals("La liste des améliorations n'est pas correcte", nbUpgrades + 1, resultat.getUpgrades().size());

  }

  /**
   * Test method for {@link EntityDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    ShipType resultat = this.shipTypeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.shipTypeDao.remove(resultat);
    resultat = this.shipTypeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }

  /**
   * Test method for {@link EntityDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final ShipType example = new ShipType();
    example.setPrimaryWeapon(-1);
    example.setAgility(-1);
    example.setHull(-1);
    example.setShield(-1);
    example.setEnergy(-1);
    List<ShipType> resultats = this.shipTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 31, resultats.size());
    example.setName("wing");
    resultats = this.shipTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 6, resultats.size());
    example.setPrimaryWeapon(2);
    resultats = this.shipTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 3, resultats.size());
    example.setName(null);
    example.setAgility(1);
    resultats = this.shipTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 3, resultats.size());
    final List<ShipUpgrade> upgrades = new ArrayList<>();
    example.setUpgrades(upgrades);
    final ShipUpgrade shipUpgrade = new ShipUpgrade();
    //UpgradeType upgradeType = this.upgradeTypeDao.getById(Integer.valueOf(2));
    final UpgradeType upgradeType = new UpgradeType();
    upgradeType.setIdent(Integer.valueOf(2));
    shipUpgrade.setUpgradeType(upgradeType);
    //shipUpgrade.setQuantity(1);
    upgrades.add(shipUpgrade);
    resultats = this.shipTypeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }

  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    Paged<ShipType> resultats = this.shipTypeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
    final ShipType example = new ShipType();
    example.setPrimaryWeapon(-1);
    example.setAgility(-1);
    example.setHull(-1);
    example.setShield(-1);
    example.setEnergy(-1);
    resultats = this.shipTypeDao.list(example, 10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 10, resultats.size());
  }
}
