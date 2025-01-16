class PricingCalculator {
  static double calculateTotalPrice(double productprice, String location) {
    double taxrate = getTaxRateForLocation(location);
    double taxamount = productprice * taxrate;
    double shippingcost = getShippingCost(location);
    double totalprice = productprice + taxamount + shippingcost;
    return totalprice;
  }

  static String calculateShippingCost(double productprice, String location) {
    double shippingcost = getShippingCost(location);
    return shippingcost.toStringAsFixed(2);
  }

  static String calculatetax(double productprice, String location) {
    double taxrate = getTaxRateForLocation(location);
    double taxamount = productprice * taxrate;
    return taxamount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
// Lookup the tax rate for the given location from a tax rate database or API.
// Return the appropriate tax rate.
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
// Lookup the tax rate for the given location from a tax rate database or API.
// Return the appropriate tax rate.
    return 0.5; // Example tax rate of 10%
  }
}
