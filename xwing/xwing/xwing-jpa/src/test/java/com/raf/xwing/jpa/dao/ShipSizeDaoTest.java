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
import com.raf.xwing.jpa.domain.model.ShipSize;
import com.raf.xwing.util.Paged;

/**
 * Test class for {@link ShipSizeDao}
 * 
 * @author RAF
 */
public class ShipSizeDaoTest extends AbstractDaoTest {
  
  /** The shipSize DAO. */
  @Resource
  private transient ShipSizeDao shipSizeDao;
  
  /**
   * Constructor.
   */
  public ShipSizeDaoTest() {
    super();
  }
  
  /**
   * Test method for {@link ShipSizeDao#getById(Serializable)}.
   */
  @Test
  public final void testGetById() {
    ShipSize shipSize = this.shipSizeDao.getById(Integer.valueOf(1));
    assertNotNull("La shipSize n'a pas été trouvé", shipSize);
    assertEquals("L'identifiant de la shipSize est incorrect :", shipSize.getId(), Integer.valueOf(1));
    shipSize = this.shipSizeDao.getById(Integer.valueOf(0));
    assertNull("La shipSize ne devrait pas exister", shipSize);
  }
  
  /**
   * Test method for {@link ShipSizeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistIntegrity() {
    final ShipSize shipSize = new ShipSize();
    shipSize.setIdent(Integer.valueOf(0));
    this.shipSizeDao.persist(shipSize);
    fail("Persistence d'un objet incomplet");
  }
  
  /**
   * Test method for {@link ShipSizeDao#persist(DomainEntity)}.
   */
  @Test(expected = DataIntegrityViolationException.class)
  public final void testPersistExists() {
    final ShipSize shipSize = new ShipSize();
    shipSize.setIdent(Integer.valueOf(1));
    shipSize.setName("Test");
    this.shipSizeDao.persist(shipSize);
    fail("Persistence d'un objet existant");
  }
  
  /**
   * Test method for {@link ShipSizeDao#persist(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testPersist() {
    final Integer ident = Integer.valueOf(0);
    ShipSize resultat = this.shipSizeDao.getById(ident);
    assertNull("L'objet existe avant la création", resultat);
    final ShipSize shipSize = new ShipSize();
    shipSize.setIdent(ident);
    shipSize.setName("Test");
    this.shipSizeDao.persist(shipSize);
    resultat = this.shipSizeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la création", resultat);
    assertEquals("Le nom de l'objet n'est pas correct", "Test", resultat.getName());
  }
  
  /**
   * Test method for {@link ShipSizeDao#merge(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testMerge() {
    final Integer ident = Integer.valueOf(1);
    ShipSize resultat = this.shipSizeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    final String name = resultat.getName();
    ShipSize shipSize = new ShipSize();
    shipSize.setIdent(resultat.getIdent());
    shipSize.setName(resultat.getName() + "1");
    shipSize = this.shipSizeDao.merge(shipSize);
    assertNotNull("L'objet mis à jour est null", shipSize);
    resultat = this.shipSizeDao.getById(ident);
    assertNotNull("L'objet n'existe pas après la mise à jour", resultat);
    assertNotEquals("Le nom n'a pas été modifié", name, resultat.getName());
  }
  
  /**
   * Test method for {@link ShipSizeDao#remove(DomainEntity)}.
   */
  @Test
  @Transactional
  @Rollback
  public final void testRemove() {
    final Integer ident = Integer.valueOf(1);
    ShipSize resultat = this.shipSizeDao.getById(ident);
    assertNotNull("L'objet n'existe pas avant la mise à jour", resultat);
    this.shipSizeDao.remove(resultat);
    resultat = this.shipSizeDao.getById(ident);
    assertNull("L'objet existe après la mise à jour", resultat);
  }
  
  /**
   * Test method for {@link ShipSizeDao#findByExample(DomainEntity)}.
   */
  @Test
  public final void testFindByExample() {
    final ShipSize example = new ShipSize();
    List<ShipSize> resultats = this.shipSizeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 3, resultats.size());
    example.setName("Grand");
    resultats = this.shipSizeDao.findByExample(example);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas correcte", 1, resultats.size());
  }
  
  /**
   * Test method for {@link EntityDao#list(int, int)}.
   */
  @Test
  public final void testList() {
    final Paged<ShipSize> resultats = this.shipSizeDao.list(10, 1);
    assertFalse("La liste est vide", resultats.isEmpty());
    assertEquals("La liste n'est pas complete", 3, resultats.size());
  }
  
}
