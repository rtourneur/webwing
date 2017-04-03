package com.raf.xwing.jpa.dao;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import com.raf.xwing.jpa.config.PersistenceJpaConfig;

/**
 * 
 * Abstract class for all DAO tests.
 * 
 * @author RAF
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { PersistenceJpaConfig.class }, loader = AnnotationConfigContextLoader.class)
public abstract class AbstractDaoTest  {

  /**
   * Constructor.
   */
  public AbstractDaoTest() {
    super();
  }

}
