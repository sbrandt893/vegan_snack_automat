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
    if (displayDebit < price) {
      _register = _register.copyWith(
          debit: displayDebit, price: price, selectedSlot: slot);
    }

    if (displayDebit >= price) {
      final newDebit = displayDebit - price;

      ///var selectToProduce = slot;
      _register = _register.copyWith(
          debit: newDebit, selectedSlot: 0, producedSlot: slot, price: 0);
    }
  }

  @override
  void insertCoin(int nom) {
    var newCoins = [...coins, nom];
    var newDebit = displayDebit + nom;
    newCoins.sort((a, b) => b.compareTo(a));
    if (isAdminMode == true) {
      _register = _register.copyWith(coins: newCoins);
      return;
    }
    //if (selectedSlot >= 1 && newDebit >= displayPrice)  {
    //  newDebit - displayPrice
    //}
    _register = _register.copyWith(
        coins: newCoins, debit: newDebit, message: 'Was darf es sein?');
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
  }
}
