void main() {
  int customer_id = 1001;
  String customer_name = 'James';
  int unit_consumed_by_the_user = 800;
  double chargePerUnit;

  if (unit_consumed_by_the_user <= 199) {
    chargePerUnit = 1.20;
  } else if (unit_consumed_by_the_user >= 200 &&
      unit_consumed_by_the_user < 400) {
    chargePerUnit = 1.50;
  } else if (unit_consumed_by_the_user >= 400 &&
      unit_consumed_by_the_user < 600) {
    chargePerUnit = 1.80;
  } else if (unit_consumed_by_the_user > 600) {
    chargePerUnit = 2.00;
  } else {
    chargePerUnit = 0.00;
  }

  double billAmount = unit_consumed_by_the_user * chargePerUnit;
  print('Customer IDNO: $customer_id');
  print('Customer Name: $customer_name');
  print('Unit Consumed: $unit_consumed_by_the_user');
  print('Amount Charges @Rs. $chargePerUnit per unit: $billAmount');
  print('Net Bill Amount: $billAmount');
}
