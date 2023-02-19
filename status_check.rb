class StatusCheck
	def initialize(step_number = 0)
		@step_number = step_number

	end
	def next_step
		@step_number+=1
	end
	def step_number
		@step_number
	end
end