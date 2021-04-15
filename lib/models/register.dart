import 'package:snackautomat/models/_register.dart';

class Register implements IRegister {
  final List<int> _payout;
  final List<int> _coins;
  final bool _adminMode;
  final int _debit;
  final String _message;
  final int _price;
  final int _producedSlot;
  final int _selectedSlot;

  @override
  List<int> get payout => _payout;
  @override
  List<int> get coins => _coins;
  @override
  bool get adminMode => _adminMode;
  @override
  int get debit => _debit;
  @override
  String get message => _message;
  @override
  int get price => _price;
  @override
  int get producedSlot => _producedSlot;
  @override
  int get selectedSlot => _selectedSlot;

  Register(
      {List<int>? payout,
      List<int>? coins,
      bool? adminMode,
      int? debit,
      String? message,
      int? price,
      int? producedSlot,
      int? selectedSlot})
      : _payout = payout ?? [],
        _coins = coins ?? [],
        _adminMode = adminMode ?? false,
        _debit = debit ?? 0,
        _message = message ?? 'Was darf es sein?',
        _price = price ?? 0,
        _producedSlot = producedSlot ?? 0,
        _selectedSlot = selectedSlot ?? 0;

  @override
  Register copyWith({
    List<int>? coins,
    List<int>? payout,
    bool? adminMode,
    int? debit,
    String? message,
    int? price,
    int? producedSlot,
    int? selectedSlot,
  }) =>
      Register(
          coins: coins ?? _coins,
          payout: payout ?? _payout,
          adminMode: adminMode ?? _adminMode,
          debit: debit ?? _debit,
          message: message ?? _message,
          price: price ?? _price,
          producedSlot: producedSlot ?? _producedSlot,
          selectedSlot: selectedSlot ?? _selectedSlot);
}
