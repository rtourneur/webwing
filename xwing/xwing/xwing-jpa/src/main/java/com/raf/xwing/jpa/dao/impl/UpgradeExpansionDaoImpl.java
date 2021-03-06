package com.raf.xwing.jpa.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.raf.xwing.jpa.dao.UpgradeExpansionDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.card.UpgradeExpansion;

/**
 * DAO implementation for Upgrade Expansion.
 *
 * @author RAF
 */
@Repository
public final class UpgradeExpansionDaoImpl extends AbstractDao<UpgradeExpansion, Integer> implements
    UpgradeExpansionDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public UpgradeExpansionDaoImpl() {
    super(UpgradeExpansion.class);
  }

  /**
   * Set the predicate for the findByExample request.
   * <ul>
   * <li>the name as like</li>
   * <li>the ship type</li>
   * </ul>
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   * @see AbstractDao#getPredicates(Root, com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  protected Predicate[] getPredicates(final Root<UpgradeExpansion> root, final UpgradeExpansion example) {

    final List<Predicate> predicatesList = new ArrayList<>();

    if (example.getUpgrade() != null) {
      final Upgrade upgrade = example.getUpgrade();
      if (upgrade.getId() != null) {
        final Join<UpgradeExpansion, Upgrade> join = root.join("upgrade", JoinType.INNER);
        predicatesList.add(getEquals(join, "ident", upgrade.getId()));
      }
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
  protected Order getOrder(final CriteriaBuilder builder, final Root<UpgradeExpansion> root) {
    return null;
  }

}
