class UserMessage
	def initialize(questions,answers=[],right_answer=[], wrong_answer=[])
		@questions = questions
		@answers = answers
		@right_answer = right_answer
		@wrong_answer = wrong_answer
	end

	def check_user_message(user_message,status)
		user_message == @answers[status]
	end
	def right_answer
		@right_answer.sample		
	end
	def wrong_answer
		@wrong_answer.sample
	end
	def message_for_user(status)
		@questions[status]
	end


end