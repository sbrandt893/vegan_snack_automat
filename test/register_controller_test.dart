import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:snackautomat/controller/_register_controller.dart';

import 'test_basis.dart';

void main() {
  test('RC kann erstellt werden', () {
    final rc = IRegisterController();
    // ignore: unnecessary_null_comparison
    expect(rc == null, false);
  });

  test('RC hat Standardwerte nach Erstellung', () {
    final rc = IRegisterController();
    expect(rc.displayDebit, 0);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 0);
    expect(eq(rc.coins, []), true);
    expect(eq(rc.payout, []), true);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC schaltet adminMode per direkter Wahl und per Toggle', () {
    final rc = IRegisterController();
    rc.adminMode(true);
    expect(rc.isAdminMode, true);
    rc.adminMode(false);
    expect(rc.isAdminMode, false);
    rc.adminMode();
    expect(rc.isAdminMode, true);
    rc.adminMode();
    expect(rc.isAdminMode, false);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC nimm im Admin-Mode Münzen an und erreicht Zielzustand', () {
    final rc = IRegisterController();
    rc.adminMode();
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.adminMode();
    expect(rc.displayDebit, 0);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 0);
    expect(eq(rc.coins, [100, 100, 10, 10, 10, 5, 5, 5, 5]), true);
    expect(eq(rc.payout, []), true);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC nimm im Admin-Mode Münzen an, aber lässt keine Produktwahl zu', () {
    final rc = IRegisterController();
    rc.adminMode();
    rc.insertCoin(10);
    rc.selectProduct(1, 30);
    rc.adminMode();
    expect(rc.displayDebit, 0);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 0);
    expect(eq(rc.coins, [10]), true);
    expect(eq(rc.payout, []), true);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC (ohne Admin) nimmt Bezahlung an', () {
    final rc = IRegisterController();
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(100);
    rc.insertCoin(100);
    expect(rc.displayDebit, 250);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 0);
    expect(eq(rc.coins, [100, 100, 10, 10, 10, 5, 5, 5, 5]), true);
    expect(eq(rc.payout, []), true);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC mit nicht ausreichender Bezahlung löst nix aus', () {
    final rc = IRegisterController();
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.selectProduct(1, 300);
    expect(rc.displayDebit, 250);
    expect(rc.displayPrice, 300);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 1);
    expect(eq(rc.coins, [100, 100, 10, 10, 10, 5, 5, 5, 5]), true);
    expect(eq(rc.payout, []), true);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC, nicht ausreichende Bezahlung, Auszahlung', () {
    final rc = IRegisterController();
    rc.adminMode();
    rc.insertCoin(50);
    rc.insertCoin(20);
    rc.insertCoin(100);
    rc.adminMode();
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(10);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(5);
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.selectProduct(1, 300);
    rc.reset();
    expect(rc.displayDebit, 0);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 0);
    // Da wir nicht wissen, nach welcher Methode Münzen ausgeworfen werden,
    // vergleichen wir hier nur Summen
    //expect(eq(rc.coins, [100, 20, 10, 10, 10, 5, 5, 5, 5]), true);
    expect(rc.coinSum, 170);
    //expect(eq(rc.payout, [100, 100, 50]), true);
    expect(rc.payoutSum, 250);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC, ausreichende Bezahlung, nachherige Wahl', () {
    final rc = IRegisterController();
    rc.adminMode();
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.insertCoin(50);
    rc.insertCoin(50);
    rc.insertCoin(20);
    rc.insertCoin(20);
    rc.adminMode();
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.selectProduct(1, 150);
    expect(rc.displayDebit, 50);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 1);
    expect(rc.selectedSlot, 0);
    //expect(eq(rc.coins, [100, 100, 100, 100, 50, 20, 20]), true);
    expect(rc.coinSum, 540);
    expect(rc.payoutSum, 0);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC, ausreichende Bezahlung, vorherige Wahl', () {
    final rc = IRegisterController();
    rc.adminMode();
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.insertCoin(50);
    rc.insertCoin(20);
    rc.insertCoin(20);
    rc.insertCoin(20);
    rc.adminMode();
    rc.insertCoin(100);
    log('Vor Wahl selected ${rc.selectedSlot}');
    log('Vor Wahl produced ${rc.producedSlot}');
    rc.selectProduct(1, 150);
    log('Nach Wahl selected ${rc.selectedSlot}');
    log('Nach Wahl produced ${rc.producedSlot}');
    rc.insertCoin(100);

    ///rc.selectProduct(1, 150);
    log('Nach Bezahung selected ${rc.selectedSlot}');
    log('Nach Bezahung produced ${rc.producedSlot}');
    expect(rc.displayDebit, 50);
    expect(rc.displayPrice, 0);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 1);
    expect(rc.selectedSlot, 0);
    expect(rc.coinSum, 510);
    expect(rc.payoutSum, 0);
    expect(rc.message, 'Was darf es sein?');
  });

  test('RC, ausreichende Bezahlung, aber Wechselgeld nicht möglich', () {
    final rc = IRegisterController();
    rc.adminMode();
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.adminMode();
    rc.insertCoin(100);
    rc.insertCoin(100);
    rc.selectProduct(1, 150);
    expect(rc.displayDebit, 200);
    expect(rc.displayPrice, 150);
    expect(rc.isAdminMode, false);
    expect(rc.producedSlot, 0);
    expect(rc.selectedSlot, 1);
    expect(eq(rc.coins, [100, 100, 100, 100]), true);
    expect(eq(rc.payout, []), true);
    expect(rc.message, 'Kein Wechselgeld, \nbitte passender bezahlen');
  });
}
