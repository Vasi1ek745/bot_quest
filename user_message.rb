class UserMessage
	def initialize(questions,answers=[])
		@questions = questions
		@answers = answers
	end
	def message_for_user(status, user_text)
		if user_text.downcase == "привет"
			"Привет"
		else
			"Пошел нах быдло"
		end
	end


end