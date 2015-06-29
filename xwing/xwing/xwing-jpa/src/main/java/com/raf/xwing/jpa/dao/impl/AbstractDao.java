package com.raf.xwing.jpa.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Locale;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.From;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.transaction.annotation.Transactional;

import com.raf.xwing.jpa.dao.EntityDao;
import com.raf.xwing.jpa.domain.DomainEntity;
import com.raf.xwing.util.Loggable;
import com.raf.xwing.util.Paged;
import com.raf.xwing.util.PagedImpl;

/**
 * Abstract implementation for all DAOs.
 *
 * @param <E>
 *          the entity
 * @param <I>
 *          the identifier
 *
 * @author RAF
 */
public abstract class AbstractDao<E extends DomainEntity<I>, I extends Serializable> implements EntityDao<E, I> {

  /** The persistence context. */
  @PersistenceContext
  private transient EntityManager entityManager;

  /** The entity Class. */
  private final transient Class<E> entityClass;

  /**
   * Constructor.
   *
   * @param entityClass
   *          the entity class.
   */
  public AbstractDao(final Class<E> entityClass) {
    super();
    this.entityClass = entityClass;
  }

  /**
   * Retrieve the entity with it's identifier.
   *
   * @param ident
   *          the identifier
   * @return the entity
   * @see com.raf.xwing.jpa.dao.EntityDao#getById(java.io.Serializable)
   */
  @Override
  @Loggable
  public final E getById(final I ident) {
    return this.entityManager.find(this.entityClass, ident);
  }

  /**
   * Insert a new entity.
   *
   * @param entity
   *          the entity to insert
   * @see com.raf.xwing.jpa.dao.EntityDao#persist(com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Transactional
  @Override
  @Loggable
  public final void persist(final E entity) {
    this.entityManager.persist(entity);
  }

  /**
   * Updates an existing entity.
   *
   * @param entity
   *          the entity to update
   * @return the entity
   * @see com.raf.xwing.jpa.dao.EntityDao#merge(com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Transactional
  @Override
  @Loggable
  public final E merge(final E entity) {
    return this.entityManager.merge(entity);
  }

  /**
   * Deletes an existing entity.
   *
   * @param entity
   *          the entity to delete
   * @see com.raf.xwing.jpa.dao.EntityDao#remove(com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Transactional
  @Override
  @Loggable
  public final void remove(final E entity) {
    this.entityManager.remove(entity);
  }

  /**
   * count the entities.
   * 
   * @return the number of entities
   * @see com.raf.xwing.jpa.dao.EntityDao#list(int, int)
   */
  @Override
  @Loggable
  public final Long countByExample(final E example) {
    final CriteriaBuilder builder = getCriteriaBuilder();

    CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
    final Root<E> root = countCriteria.from(this.entityClass);
    countCriteria = countCriteria.select(builder.count(root));
    if (example != null) {
      countCriteria = countCriteria.where(getPredicates(root, example));
    }
    return this.entityManager.createQuery(countCriteria).getSingleResult();
  }

  /**
   * Retrieves a list of entities from an example entity.
   *
   * @param example
   *          the entity example
   * @return a list of entities
   * @see com.raf.xwing.jpa.dao.EntityDao#findByExample(com.raf.xwing.jpa.domain.DomainEntity)
   */
  @Override
  @Loggable
  public final List<E> findByExample(final E example) {
    final CriteriaBuilder builder = getCriteriaBuilder();
    final CriteriaQuery<E> query = builder.createQuery(this.entityClass);
    final Root<E> root = query.from(this.entityClass);
    final Predicate[] predicates = getPredicates(root, example);
    final TypedQuery<E> typedQuery = this.entityManager.createQuery(query.select(root).where(predicates));
    return typedQuery.getResultList();
  }

  
  /**
   * List the entities.
   * 
   * @return the list of entities
   * @see com.raf.xwing.jpa.dao.EntityDao#listAll()
   */
  @Override
  @Loggable
  public final List<E> listAll() {
    final CriteriaBuilder builder = getCriteriaBuilder();
    final CriteriaQuery<E> criteria = builder.createQuery(this.entityClass);
    final Root<E> root = criteria.from(this.entityClass);
    final TypedQuery<E> query = this.entityManager.createQuery(criteria.select(root));
    return query.getResultList();
  }

  /**
   * List the entities.
   * 
   * @param nbRows
   *          the number of rows to return
   * @param pageNum
   *          the page number to return
   * @return a paged list of entities
   * @see com.raf.xwing.jpa.dao.EntityDao#list(int, int)
   */
  @Override
  @Loggable
  public final Paged<E> list(final int nbRows, final int pageNum) {
    return list(null, nbRows, pageNum);
  }

  /**
   * List the entities.
   * 
   * @param example
   *          the entity example
   * @param nbRows
   *          the number of rows to return
   * @param pageNum
   *          the page number to return
   * @return a paged list of entities
   * @see com.raf.xwing.jpa.dao.EntityDao#list(com.raf.xwing.jpa.domain.DomainEntity, int, int)
   */
  @Override
  @Loggable
  public final Paged<E> list(final E example, final int nbRows, final int pageNum) {
    final CriteriaBuilder builder = getCriteriaBuilder();
    CriteriaQuery<E> criteria = builder.createQuery(this.entityClass);
    final Root<E> root = criteria.from(this.entityClass);
    criteria = criteria.select(root).orderBy(getOrder(builder, root));
    if (example != null) {
      criteria = criteria.where(getPredicates(root, example));
    }
    final TypedQuery<E> query = this.entityManager.createQuery(criteria);
    final Paged<E> result = new PagedImpl<>();
    if (nbRows > 0) {
      final Long numRows = countByExample(example);
      result.setNbRows(nbRows);
      result.setPageNum(pageNum);
      result.setTotalRows(numRows.intValue());
      setLimites(query, result);
    }
    final List<E> pageItems = query.getResultList();
    result.addAll(pageItems);
    return result;
  }

  /**
   * Return the criteria builder.
   *
   * @return the criteria builder
   */
  protected final CriteriaBuilder getCriteriaBuilder() {
    return this.entityManager.getCriteriaBuilder();
  }

  /**
   * Creates a "and" predicate.
   *
   * @param from
   *          the root type
   * @param attributeName
   *          the name of the column
   * @param value
   *          the searched value
   * @return the predicate
   */
  protected final Predicate getEquals(final From<E,?> from, final String attributeName, final Object value) {
    return getCriteriaBuilder().equal(from.get(attributeName), value);
  }

  /**
   * Creates a "like" predicate.
   *
   * @param root
   *          the root type
   * @param attributeName
   *          the name of the column
   * @param value
   *          the searched value
   * @return the predicate
   */
  protected final Predicate getLike(final Root<E> root, final String attributeName, final String value) {
    final CriteriaBuilder builder = getCriteriaBuilder();
    return builder.like(builder.lower(root.<String>get(attributeName)),
        '%' + value.toLowerCase(Locale.getDefault()) + '%');
  }

  /**
   * Set the first and max results.
   * 
   * @param query
   *          the query
   * @param entityList
   *          the entity list
   */
  protected final void setLimites(final TypedQuery<E> query, final Paged<E> entityList) {
    int firstResult;
    final int maxResults = entityList.getNbRows();
    int numPage = entityList.getPageNum();
    final int totalPages = entityList.getTotalPages();
    if (numPage == 0 || totalPages == 0) {
      numPage = 1;
      entityList.setPageNum(numPage);
    } else if (numPage > totalPages) {
      numPage = totalPages;
      entityList.setPageNum(numPage);
    }
    firstResult = (numPage - 1) * maxResults;
    query.setFirstResult(firstResult).setMaxResults(maxResults);
  }

  /**
   * Set the predicate for the findByExample request.
   *
   * @param criteriaQuery
   *          the predicate
   * @param example
   *          the example
   */
  protected abstract Predicate[] getPredicates(Root<E> root, E example);

  /**
   * Return the criteria default order.
   * 
   * @param builder
   *          the criteria builder
   * @param root
   *          the root type
   * @return the criteria order
   */
  protected abstract Order getOrder(CriteriaBuilder builder, Root<E> root);

}
