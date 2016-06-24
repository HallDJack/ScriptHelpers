module ScriptEta
  def initialize_eta(start_time: Time.now.utc, total: nil)
    raise "Total is required for ETA calculation to work." unless total

    @processed_counter = 0
    @start_time = start_time
    @total = total
  end

  def calculate_eta
    duration = Time.now.utc - @start_time
    duration_per_record = duration/@processed_counter
    duration_estimate = duration_per_record * (@total - @processed_counter)

    Time.at(duration_estimate).utc.strftime("%H:%M:%S")
  end

  def increment_counter(increment=1)
    @processed_counter += increment
  end

  def print_eta(frequency: 1000)
    if @processed_counter % frequency == 0
      puts "ETA: #{calculate_eta}"
      puts "#{@processed_counter} of #{@total} processed"
    end
  end

  def print_duration
    duration = Time.now.utc - @start_time
    puts "Duration: #{Time.at(duration).utc.strftime("%H:%M:%S")}"
  end

  def processed_counter
    @processed_counter
  end
end
