class StatusCheck
	def initialize(step_number = -1)
		@step_number = step_number

	end
	def next_step
		@step_number+=1
	end
	def step_number
		@step_number
	end
	def check(user_text)
	    case user_text
	    when "/start"
	    	@step_number
	    end
	end
end