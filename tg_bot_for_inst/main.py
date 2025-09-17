import telebot
# Создаем экземпляр бота
bot = telebot.TeleBot('8286348904:AAHDuTsnHtTn4sMWbjo-HXiYYzAS-2mxZYY')
# Функция, обрабатывающая команду /start
@bot.message_handler(commands=["start"])
def start(m, res=False):
    bot.send_message(m.chat.id, 'Этот бот подсчитает слова в вашем сообщении')
# Получение сообщений от юзера
@bot.message_handler(content_types=["text"])
def handle_text(message):
    bot.send_message(message.chat.id, "Количество слов в вашем сообщении: " + str(count_words(str(message.text))))

def count_words(text):
     text = text.split(" ")
     return len(text)
          
# Запускаем бота
bot.polling(none_stop=True, interval=0)

def message_handler(text):
      if text == 'Привет':
          start(text)