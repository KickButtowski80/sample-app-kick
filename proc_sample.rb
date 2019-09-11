class Array
    def eachEven(&wasABlock_nowAProc)
        isEven = true
        count = 0
        puts wasABlock_nowAProc.to_proc
        self.each do |object|
            count += 1
            puts "#{count}"
            if isEven 
                wasABlock_nowAProc.call object
            end
            isEven = (not isEven)
        end 
        puts "I am done with each loop"       
    end
end

['apple', 'bad apple', 'cherry', 'durain'].eachEven do |fruit|
    puts "Yum! I just love #{fruit} pies, don't you?"
end

def hour_to_pm
    current_hour = Time.now.hour
    if current_hour >= 13 
        current_hour -= 12
    end
    current_hour
end

p hour_to_pm