class UserMessage
	def initialize(questions,answers=[],right_answer=[], wrong_answer=[], hi_message = [], reply_markup = "" )
		@questions = questions
		@answers = answers
		@right_answer = right_answer
		@wrong_answer = wrong_answer
		@hi_message = hi_message
		@reply_markup = reply_markup
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
	def message(status)
		case status
		when -1 
		  @hi_message[0] 
		else
		 "no start"
		end

	end


end