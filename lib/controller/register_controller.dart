import 'package:snackautomat/controller/_register_controller.dart';

import '../models/_register.dart';

/// Controller between GUI and Register
class RegisterController implements IRegisterController {
  IRegister _register;

  @override
  int get displayDebit => _register.debit;
  @override
  int get displayPrice => _register.price;
  @override
  bool get isAdminMode => _register.adminMode;
  @override
  String get message => _register.message;
  @override
  int get producedSlot => _register.producedSlot;
  @override
  int get selectedSlot => _register.selectedSlot;
  @override
  List<int> get coins => _register.coins;
  @override
  List<int> get payout => _register.payout;
  @override
  int get coinSum => _sum(_register.coins);
  @override
  int get payoutSum => _sum(_register.payout);

  /// Constructor
  RegisterController() : _register = IRegister();

  int _sum(List<int> list) {
    var sum = 0;
    for (var i = 0; i < list.length; i++) {
      sum += list[i];
    }
    return sum;
  }

  @override
  void selectProduct(int slot, int price) {
    if (isAdminMode == true) {
      return;
    }

    _register = _register.copyWith(price: price, selectedSlot: slot);
    purchaseSnack();
  }

  @override
  void insertCoin(int nom) {
    final newCoins = [...coins, nom];
    final newDebit = displayDebit + nom;
    newCoins.sort((a, b) => b.compareTo(a));
    if (isAdminMode == true) {
      _register = _register.copyWith(coins: newCoins);
      return;
    }

    _register = _register.copyWith(
        coins: newCoins, debit: newDebit, message: 'Was darf es sein?');
    purchaseSnack();
  }

  @override
  void takeCoin(int nom) {
    if (isAdminMode == true) {
      _register = _register.copyWith(payout: [..._register.payout, nom]);
    }
  }

  @override
  void reset() {
    var userPayout = displayDebit;
    print(displayDebit);
    for (var i = 0; userPayout > 0 && i < coins.length;) {
      if (userPayout >= coins[i]) {
        payout.add(coins[i]);
        userPayout -= coins[i];
        print(userPayout);
        coins.removeAt(i);
      } else {
        i++;
      }
    }
    print(userPayout);
    _register = _register.copyWith(
        debit: userPayout,
        price: 0,
        producedSlot: 0,
        selectedSlot: 0,
        coins: coins,
        payout: payout);
  }

  @override
  void adminMode([bool? isAdminMode]) {
    _register =
        _register.copyWith(adminMode: isAdminMode ?? !_register.adminMode);
    _register = _register.copyWith(message: getMessage());
  }

  /// purchase Snack if  possible
  void purchaseSnack() {
    if (isPurchasePossible()) {
      _register = _register.copyWith(
          debit: displayDebit - displayPrice,
          producedSlot: selectedSlot,
          selectedSlot: 0,
          price: 0);
    }
  }

  /// check if purchase is possible
  bool isPurchasePossible() {
    var userPayout = displayDebit - displayPrice;
    if (displayDebit < displayPrice) return false;

    if (selectedSlot == 0) return false;
    for (var i = 0; userPayout > 0 && i < coins.length; i++) {
      if (userPayout >= coins[i]) {
        userPayout -= coins[i];
      }
    }
    if (userPayout != 0) {
      _register = _register.copyWith(
          message: 'Kein Wechselgeld, \nbitte passender bezahlen');
    }
    return userPayout == 0;
  }

  /// all possible messages
  String getMessage() {
    if (isAdminMode == true) return 'Admin Mode';
    if (displayDebit < displayPrice) {
      return 'Bitte weiter zahlen';
    } else {
      return 'Was darf es sein?';
    }
  }
}
