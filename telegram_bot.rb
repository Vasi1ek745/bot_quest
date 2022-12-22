require 'telegram/bot'

token = '5801402177:AAGF587t7nv2rGnoiz9EvbEn_i7Z8wr2E9Y'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Добрый день! Это праздничная игра. Цель получить подарок на новый год вы готовы??")
    
    end
  end
end