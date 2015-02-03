class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
		time_string;
	end
	def padded(num)
		if num < 9
			num = "0" + num.to_s
		else 
			num = num.to_s
		end
		num
	end
	def time_string
		if @seconds < 10
		@time_string = "00:00:#{padded @seconds}";
		elsif @seconds < 3600
		@time_string = "00:#{padded (@seconds/60).round}:#{padded (@seconds % 60)}";
		else
		@time_string = "#{padded (@seconds/3600).round}:#{padded (@seconds % 3600)/60.round}:#{padded (@seconds % 3600)%60}";
		end
		@time_string
	end
end