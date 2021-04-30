import 'dart:convert';

class BankCard {
  String? cardNumber;
  String? cardNumberM;
  String? cardBrand;
  BankCard({
    this.cardNumber,
    this.cardNumberM,
    this.cardBrand,
  });

  BankCard copyWith({
    String? cardNumber,
    String? cardNumberM,
    String? cardBrand,
  }) {
    return BankCard(
      cardNumber: cardNumber ?? this.cardNumber,
      cardNumberM: cardNumberM ?? this.cardNumberM,
      cardBrand: cardBrand ?? this.cardBrand,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cardNumber': cardNumber,
      'cardNumberM': cardNumberM,
      'cardBrand': cardBrand,
    };
  }

  factory BankCard.fromMap(Map<String, dynamic> map) {
    return BankCard(
      cardNumber: map['cardNumber'],
      cardNumberM: map['cardNumberM'],
      cardBrand: map['cardBrand'],
    );
  }

  String toJson() => json.encode(toMap());

  BankCard.fromJson(Map<String, dynamic> json) {
    cardNumber = json['cardNumber'];
    cardNumberM = json['cardNumberM'];
    cardBrand = json['cardBrand'];
  }

  @override
  String toString() =>
      'BankCard(cardNumber: $cardNumber, cardNumberM: $cardNumberM, cardBrand: $cardBrand)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BankCard &&
        other.cardNumber == cardNumber &&
        other.cardNumberM == cardNumberM &&
        other.cardBrand == cardBrand;
  }

  @override
  int get hashCode =>
      cardNumber.hashCode ^ cardNumberM.hashCode ^ cardBrand.hashCode;
}
