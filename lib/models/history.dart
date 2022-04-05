class Welcome {
  Welcome({
    required this.history,
  });

  final List<History> history;

  Welcome copyWith({
    List<History>? history,
  }) =>
      Welcome(
        history: history ?? this.history,
      );
}

class History {
  History({
    required this.id,
    required this.sendTo,
    required this.receivedFrom,
    required this.rewards,
  });

  final int id;
  final SendTo sendTo;
  final List<ReceivedFrom> receivedFrom;
  final List<Reward> rewards;

  History copyWith({
    int? id,
    SendTo? sendTo,
    List<ReceivedFrom>? receivedFrom,
    List<Reward>? rewards,
  }) =>
      History(
        id: id ?? this.id,
        sendTo: sendTo ?? this.sendTo,
        receivedFrom: receivedFrom ?? this.receivedFrom,
        rewards: rewards ?? this.rewards,
      );
}

class ReceivedFrom {
  ReceivedFrom({
    required this.receiverName,
    required this.amount,
  });

  final String receiverName;
  final int amount;

  ReceivedFrom copyWith({
    String? receiverName,
    int? amount,
  }) =>
      ReceivedFrom(
        receiverName: receiverName ?? this.receiverName,
        amount: amount ?? this.amount,
      );
}

class Reward {
  Reward({
    required this.rewarderName,
    required this.amount,
  });

  final String rewarderName;
  final int amount;

  Reward copyWith({
    String? rewarderName,
    int? amount,
  }) =>
      Reward(
        rewarderName: rewarderName ?? this.rewarderName,
        amount: amount ?? this.amount,
      );
}

class SendTo {
  SendTo({
    required this.senderName,
    required this.amount,
    required this.date,
  });

  final String senderName;
  final int amount;
  final DateTime date;

  SendTo copyWith({
    String? senderName,
    int? amount,
    DateTime? date,
  }) {
    return SendTo(
      senderName: senderName ?? this.senderName,
      amount: amount ?? this.amount,
      date: date ?? this.date,
    );
  }
}
