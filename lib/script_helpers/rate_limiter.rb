module RateLimiter
  def self.included(klass)
    Array.include(RateLimiter::CoreExtensions)
  end

  module CoreExtensions
    def each_with_rate_limit(limit: 100, period: 1.hour)
      sleep_duration = period.to_f/limit

      self.each do |x|
        yield x
        sleep sleep_duration
      end
    end
  end
end

