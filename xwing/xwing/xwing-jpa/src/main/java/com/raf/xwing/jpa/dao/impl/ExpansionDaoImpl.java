package com.raf.xwing.jpa.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.raf.xwing.jpa.dao.ExpansionDao;
import com.raf.xwing.jpa.domain.model.Expansion;

/**
 * DAO implementation for Expansion.
 *
 * @author RAF
 */
@Repository
public final class ExpansionDaoImpl extends AbstractDao<Expansion, Integer> implements ExpansionDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public ExpansionDaoImpl() {
    super(Expansion.class);
  }

  /**
   * Set the predicate for the findByExample request.
   * <ul>
   * <li>the name as like</li>
   * <li>the wave as like</li>
   * </ul>
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   * @see AbstractDao#getPredicates(Root, com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  protected Predicate[] getPredicates(final Root<Expansion> root, final Expansion example) {

    final List<Predicate> predicatesList = new ArrayList<>();

    if (StringUtils.isNotBlank(example.getName())) {
      final String name = example.getName();
      predicatesList.add(getLike(root, "name", name));
    }
    if (StringUtils.isNotBlank(example.getWave())) {
      final String wave = example.getWave();
      predicatesList.add(getLike(root, "wave", wave));
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
  protected Order getOrder(final CriteriaBuilder builder, final Root<Expansion> root) {
    return builder.asc(root.get("ident"));
  }

}
