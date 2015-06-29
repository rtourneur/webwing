package com.raf.xwing.jpa.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.raf.xwing.jpa.dao.ManeuverTypeDao;
import com.raf.xwing.jpa.domain.model.ManeuverType;

/**
 * DAO implementation for ManeuverType.
 *
 * @author RAF
 */
@Repository
public final class ManeuverTypeDaoImpl extends AbstractDao<ManeuverType, Integer> implements ManeuverTypeDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public ManeuverTypeDaoImpl() {
    super(ManeuverType.class);
  }

  /**
   * Set the predicate for the findByExample request.
   * <ul>
   * <li>the name as like</li>
   * </ul>
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   * @see AbstractDao#getPredicates(Root, com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  protected Predicate[] getPredicates(final Root<ManeuverType> root, final ManeuverType example) {

    final List<Predicate> predicatesList = new ArrayList<>();

    if (StringUtils.isNotBlank(example.getName())) {
      final String name = example.getName();
      predicatesList.add(getLike(root, "name", name));
    }
    if (StringUtils.isNotBlank(example.getDifficulty())) {
      final String difficulty = example.getDifficulty();
      predicatesList.add(getLike(root, "difficulty", difficulty));
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
  protected Order getOrder(final CriteriaBuilder builder, final Root<ManeuverType> root) {
    return builder.asc(root.get("ident"));
  }

}
