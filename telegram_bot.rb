# require_relative 'quest_ng'
require 'telegram/bot'
require_relative "status_check"
require_relative "user_message"

token = '5801402177:AAGF587t7nv2rGnoiz9EvbEn_i7Z8wr2E9Y'
questions = File.new("./data/questions.txt","r").readlines
answers = File.new("./data/answers.txt","r").readlines
right_answer = File.new("./data/right_answer.txt","r").readlines
wrong_answer = File.new("./data/wrong_answer.txt","r").readlines
hi_message = File.new("./data/hi_message.txt","r").readlines
reply_markup =      Telegram::Bot::Types::ReplyKeyboardMarkup.new(
          keyboard: [
            [{ text: 'Да' }, { text: 'Нет' }]],
          one_time_keyboard: true
        )
status = StatusCheck.new
user_message = UserMessage.new(questions,answers,right_answer, wrong_answer,hi_message)

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
      
      # if user_message.check_user_message(message.text, status.step_number)
      #     status.next_step
      #     bot.api.send_message(chat_id: message.chat.id, text: user_message.right_answer)
      # else
        
      #   bot.api.send_message(chat_id: message.chat.id, text: user_message.wrong_answer)
      # end
      
      bot.api.send_message(chat_id: message.chat.id, text: user_message.message_for_user(status.step_number), reply_markup: reply_markup  )

  end
end