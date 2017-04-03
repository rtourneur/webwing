package com.raf.xwing.util.aspect;

import org.springframework.stereotype.Repository;

import com.raf.xwing.util.Loggable;

/**
 * Service for testing logs (implementation).
 * 
 * @author RAF
 */
@Repository
public final class ServiceExampleImpl implements ServiceExample {

  /**
   * Constructor.
   */
  public ServiceExampleImpl() {
    super();
  }

  /**
   * Method for testing logs (implementation).
   * 
   * @param ident
   *          the identifier
   * @see ServiceExample#getById(Integer)
   */
  @Override
  @Loggable
  public void getById(Integer ident) {
    try {
      Thread.sleep(500);
    } catch (InterruptedException e) {
      e.printStackTrace();
    }

  }

}
