/**
 * 
 */
package com.raf.xwing.util.aspect;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author raphael.tourneur
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context-test.xml")
public class ServiceExampleTest {

  
  @Resource
  private ServiceExample serviceExample; 
  /**
   * Test method for {@link com.raf.xwing.util.aspect.ServiceExample#getById(java.lang.Integer)}.
   */
  @Test
  public final void testGetById() {
    serviceExample.getById(Integer.valueOf(0));
  }

}
