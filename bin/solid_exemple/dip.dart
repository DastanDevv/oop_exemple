// Dependency Inversion Principle (DIP) — Принцип инверсии зависимостей

// Модули высокого уровня не должны зависеть от модулей низкого уровня. Оба должны зависеть от абстракций.
// Абстракции не должны зависеть от деталей. Детали должны зависеть от абстракций.
// класс NotificationSender, который отправляет уведомления по электронной почте.

class EmailSender {
  void sendEmail(String to, String message) {
    // Логика отправки email
  }
}

class NotificationSender {
  final EmailSender emailSender = EmailSender();

  void sendNotification(String to, String message) {
    emailSender.sendEmail(to, message);
  }
}
// В этом примере NotificationSender напрямую зависит от EmailSender.
// Если вы захотите добавить другой способ отправки уведомлений
// (например, SMS), вам придется изменить NotificationSender.

// Хороший пример (с применением DIP):

abstract class MessageSender {
  void sendMessage(String to, String message);
}

class EmailSender implements MessageSender {
  @override
  void sendMessage(String to, String message) {
    // Логика отправки email
  }
}

class SMSSender implements MessageSender {
  @override
  void sendMessage(String to, String message) {
    // Логика отправки SMS
  }
}

class NotificationSender {
  final MessageSender messageSender;

  NotificationSender(this.messageSender);

  void sendNotification(String to, String message) {
    messageSender.sendMessage(to, message);
  }
}

final emailNotifier = NotificationSender(EmailSender());
final smsNotifier = NotificationSender(SMSSender());
