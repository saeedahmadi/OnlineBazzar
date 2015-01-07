package com.onlinebazzar.aspects;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class EncryptionAspect {



 @After("execution(* com.onlinebazzar.model.*.*(..))") 
  public void beforeExecution(JoinPoint jp) {
    System.out.println("Before method: " + jp.getSignature().getName()
        + ". Class: " + jp.getTarget().getClass().getSimpleName());
  }
}
