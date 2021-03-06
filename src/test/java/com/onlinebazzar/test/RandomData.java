package com.onlinebazzar.test;


/*******************************************************************************
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/

import java.util.Collections;
import java.util.List;
import java.util.Random;

/**
 * 
 * 
 * @author Abdul
 */
public class RandomData {

	private static Random random = new Random();

	/**
	 * ID.
	 */
	public static long randomId() {
		return random.nextLong();
	}

	/**
	 *prefix
	 */
	public static String randomName(String prefix) {
		return prefix + random.nextInt(10000);
	}

	/**
	 * list
	 */
	public static <T> T randomOne(List<T> list) {
		Collections.shuffle(list);
		return list.get(0);
	}

	/**
	 * list
	 */
	public static <T> List<T> randomSome(List<T> list, int n) {
		Collections.shuffle(list);
		return list.subList(0, n);
	}

	/**
	 * list
	 */
	public static <T> List<T> randomSome(List<T> list) {
		int size = random.nextInt(list.size());
		if (size == 0) {
			size = 1;
		}
		return randomSome(list, size);
	}
}
