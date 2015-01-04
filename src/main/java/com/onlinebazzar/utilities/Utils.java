package com.onlinebazzar.utilities;

import java.util.Iterator;
import java.util.List;

import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.ShoppingCart;

public class Utils {

	public static double Double(ShoppingCart shoppingCart) {
		double totalBalance = 0D;
		List<LineItem> items = shoppingCart.getItems();
		Iterator<LineItem> it = items.iterator();

		while (it.hasNext()) {
			LineItem item = it.next();
			totalBalance = totalBalance + item.getPrice();
		}
		return totalBalance;
	}
}
