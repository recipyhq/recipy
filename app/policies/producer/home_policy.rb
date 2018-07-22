module Producer
  class HomePolicy
    attr_reader :producer, :record

    def initialize(producer, record)
      @producer = producer
      @record = record
    end

    def index
      true
    end
  end
end
