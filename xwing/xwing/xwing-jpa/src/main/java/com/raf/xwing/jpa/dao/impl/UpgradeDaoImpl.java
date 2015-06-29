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

import com.raf.xwing.jpa.dao.UpgradeDao;
import com.raf.xwing.jpa.domain.card.Upgrade;
import com.raf.xwing.jpa.domain.model.UpgradeType;

/**
 * DAO implementation for Upgrade.
 *
 * @author RAF
 */
@Repository
public final class UpgradeDaoImpl extends AbstractDao<Upgrade, Integer> implements UpgradeDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public UpgradeDaoImpl() {
    super(Upgrade.class);
  }

  /**
   * Set the predicate for the findByExample request.
   * <ul>
   * <li>the name as like</li>
   * <li>the upgrade type</li>
   * </ul>
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   * @see AbstractDao#getPredicates(Root, com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  protected Predicate[] getPredicates(final Root<Upgrade> root, final Upgrade example) {

    final List<Predicate> predicatesList = new ArrayList<>();

    if (StringUtils.isNotBlank(example.getName())) {
      final String name = example.getName();
      predicatesList.add(getLike(root, "name", name));
    }
    if (example.getUpgradeType() != null) {
      final UpgradeType upgradeType = example.getUpgradeType();
      if (upgradeType.getId() != null) {
        final Join<Upgrade, UpgradeType> join = root.join("upgradeType", JoinType.INNER);
        predicatesList.add(getEquals(join, "ident", upgradeType.getId()));
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
  protected Order getOrder(final CriteriaBuilder builder, final Root<Upgrade> root) {
    return builder.asc(root.get("ident"));
  }

}
