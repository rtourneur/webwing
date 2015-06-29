package com.raf.xwing.jpa.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.raf.xwing.jpa.dao.ShipTypeDao;
import com.raf.xwing.jpa.domain.model.ShipType;
import com.raf.xwing.jpa.domain.model.ShipUpgrade;
import com.raf.xwing.jpa.domain.model.UpgradeType;

/**
 * DAO implementation for ShipType.
 *
 * @author RAF
 */
@Repository
public final class ShipTypeDaoImpl extends AbstractDao<ShipType, Integer> implements ShipTypeDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public ShipTypeDaoImpl() {
    super(ShipType.class);
  }

  /**
   * Set the predicate for the findByExample request.
   * <ul>
   * <li>the name as like</li>
   * <li>the primary weapon as equals</li>
   * <li>the primary agility as equals</li>
   * </ul>
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   * @see AbstractDao#getPredicates(Root, com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  protected Predicate[] getPredicates(final Root<ShipType> root, final ShipType example) {

    final List<Predicate> predicatesList = new ArrayList<>();

    if (StringUtils.isNotBlank(example.getName())) {
      final String name = example.getName();
      predicatesList.add(getLike(root, "name", name));
    }
    if (example.getPrimaryWeapon() >= 0) {
      predicatesList.add(getEquals(root, "primaryWeapon", Integer.valueOf(example.getPrimaryWeapon())));
    }
    if (example.getAgility() >= 0) {
      predicatesList.add(getEquals(root, "agility", Integer.valueOf(example.getAgility())));
    }
    if (example.getUpgrades() != null && !example.getUpgrades().isEmpty()) {
      final List<UpgradeType> upgrades = new ArrayList<>();
      for (final ShipUpgrade shipUpgrade : example.getUpgrades()) {
        upgrades.add(shipUpgrade.getUpgradeType());
      }
      final Join<ShipType, ShipUpgrade> join = root.join("upgrades", JoinType.INNER);
      final CriteriaBuilder builder = getCriteriaBuilder();
      predicatesList.add(builder.in(join.get("upgradeType")).value(upgrades));
    }

    return predicatesList.toArray(new Predicate[predicatesList.size()]);
  }

  /**
   * Return the criteria default order.
   * 
   * @param builder
   *          the criteria builder
   * @param root
   *          the root type
   * @return the criteria order
   * @see AbstractDao#getOrder(CriteriaBuilder, Root)
   */
  @Override
  protected Order getOrder(final CriteriaBuilder builder, final Root<ShipType> root) {
    return builder.asc(root.get("ident"));
  }

}
