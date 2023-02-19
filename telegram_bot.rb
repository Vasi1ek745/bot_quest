# require_relative 'quest_ng'
require 'telegram/bot'
require_relative "status_check"
require_relative "user_message"

token = '5801402177:AAGF587t7nv2rGnoiz9EvbEn_i7Z8wr2E9Y'
questions = File.new("./data/questions.txt","r").readlines
answers = File.new("./data/answers.txt","r").readlines

status = StatusCheck.new
user_message = UserMessage.new(questions,answers)

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
      if message
      status.next_step if user_message.check_user_message(message.text, status.step_number)
      
      bot.api.send_message(chat_id: message.chat.id, text: user_message.message_for_user(status.step_number) )
    
    end
  end
end