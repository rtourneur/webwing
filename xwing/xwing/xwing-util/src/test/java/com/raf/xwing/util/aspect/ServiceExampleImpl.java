package com.raf.xwing.util.aspect;

import org.springframework.stereotype.Repository;

import com.raf.xwing.util.Loggable;

@Repository
public final class ServiceExampleImpl implements ServiceExample {

  public ServiceExampleImpl() {
    super();
  }

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
