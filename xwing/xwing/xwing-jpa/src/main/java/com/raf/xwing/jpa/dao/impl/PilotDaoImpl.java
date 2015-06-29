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

import com.raf.xwing.jpa.dao.PilotDao;
import com.raf.xwing.jpa.domain.card.Pilot;
import com.raf.xwing.jpa.domain.card.PilotExpansion;
import com.raf.xwing.jpa.domain.model.Expansion;
import com.raf.xwing.jpa.domain.model.ShipType;

/**
 * DAO implementation for Pilot.
 *
 * @author RAF
 */
@Repository
public final class PilotDaoImpl extends AbstractDao<Pilot, Integer> implements PilotDao {

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class
   */
  public PilotDaoImpl() {
    super(Pilot.class);
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
  protected Predicate[] getPredicates(final Root<Pilot> root, final Pilot example) {

    final List<Predicate> predicatesList = new ArrayList<>();

    if (StringUtils.isNotBlank(example.getName())) {
      final String name = example.getName();
      predicatesList.add(getLike(root, "name", name));
    }
    if (example.getShipType() != null) {
      final ShipType shipType  = example.getShipType();
      if (shipType.getId() != null) {
        final Join<Pilot, ShipType> join = root.join("shipType", JoinType.INNER);
        predicatesList.add(getEquals(join, "ident", shipType.getId()));
      }
    }
    if (example.getExpansions() != null && !example.getExpansions().isEmpty()) {
      final List<Expansion> expansions = new ArrayList<>();
      for (final PilotExpansion pilotExpansion : example.getExpansions()) {
        expansions.add(pilotExpansion.getExpansion());
      }
      final Join<Pilot, Expansion> join = root.join("expansions", JoinType.INNER);
      final CriteriaBuilder builder = getCriteriaBuilder();
      predicatesList.add(builder.in(join.get("expansion")).value(expansions));
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
  protected Order getOrder(final CriteriaBuilder builder, final Root<Pilot> root) {
    return builder.asc(root.get("ident"));
  }

}
