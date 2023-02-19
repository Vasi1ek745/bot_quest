class UserMessage
	def initialize(questions,answers=[])
		@questions = questions
		@answers = answers
	end

	def check_user_message(user_message,status)
		user_message == @answers[status]
	end
	def message_for_user(status)
		@questions[status]
	end


end