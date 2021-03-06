package com.raf.xwing.jpa.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.raf.xwing.jpa.dao.RestrictionDao;
import com.raf.xwing.jpa.domain.model.Restriction;
import com.raf.xwing.jpa.domain.model.RestrictionType;

/**
 * DAO implementation for Restriction.
 *
 * @author RAF
 */
@Repository
public final class RestrictionDaoImpl extends AbstractDao<Restriction, Integer> implements RestrictionDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public RestrictionDaoImpl() {
    super(Restriction.class);
  }

  /**
   * Set the predicate for the findByExample request.
   * <ul>
   * <li>nothing yet</li>
   * </ul>
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   * @see AbstractDao#getPredicates(Root, com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  protected Predicate[] getPredicates(final Root<Restriction> root, final Restriction example) {

    final List<Predicate> predicatesList = new ArrayList<>();
    if (example.getRestrictionType() != null) {
      final RestrictionType restrictionType = example.getRestrictionType();
      if (StringUtils.isNotBlank(restrictionType.getName())) {
        final Join<Restriction, RestrictionType> join = root.join("restrictionType", JoinType.INNER);
        final CriteriaBuilder builder = getCriteriaBuilder();
        join.on(builder.like(builder.lower(join.<String>get("name")),
            '%' + restrictionType.getName().toLowerCase(Locale.getDefault()) + '%'));
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
  protected Order getOrder(final CriteriaBuilder builder, final Root<Restriction> root) {
    return builder.asc(root.get("ident"));
  }

}
