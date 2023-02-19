# require_relative 'quest_ng'
require 'telegram/bot'

token = '5801402177:AAGF587t7nv2rGnoiz9EvbEn_i7Z8wr2E9Y'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    if message 
      status = status_check

      bot.api.send_message(chat_id: message.chat.id, text: text_for_user(status) )
    
    end
  end
end