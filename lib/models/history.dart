class History {
  final int id;
  final List<SendTo> sendTo;
  final List<ReceiveFrom> receiveFrom;
  final List<Rewards> rewards;

  History(
      {required this.id,
      required this.sendTo,
      required this.receiveFrom,
      required this.rewards});

  factory History.fromJson(Map<String, dynamic> json) => History(
        id: json["id"],
        sendTo:
            List<SendTo>.from(json["send_to"].map((x) => SendTo.fromJson(x))),
        receiveFrom: List<ReceiveFrom>.from(
          json["received_from"].map(
            (x) => ReceiveFrom.fromJson(x),
          ),
        ),
        rewards: List<Rewards>.from(
          json["rewards"].map(
            (x) => Rewards.fromJson(x),
          ),
        ),
      );
}

class SendTo {
  final String senderName;
  final int amount;
  final String date;

  SendTo({
    required this.senderName,
    required this.amount,
    required this.date,
  });

  factory SendTo.fromJson(Map<String, dynamic> json) => SendTo(
        senderName: json["sender_name"],
        amount: json["amount"],
        date: json["date"],
      );
}

class ReceiveFrom {
  final String receiverName;
  final int amount;

  ReceiveFrom({
    required this.receiverName,
    required this.amount,
  });

  factory ReceiveFrom.fromJson(Map<String, dynamic> json) => ReceiveFrom(
        receiverName: json["receiver_name"],
        amount: json["amount"],
      );
}

class Rewards {
  final String rewarderName;
  final int amount;

  Rewards({
    required this.rewarderName,
    required this.amount,
  });

  factory Rewards.fromJson(Map<String, dynamic> json) => Rewards(
        rewarderName: json["rewarder_name"],
        amount: json["amount"],
      );
}
