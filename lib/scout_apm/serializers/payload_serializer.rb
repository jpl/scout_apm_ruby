# Serialize & deserialize data from the instrumented app up to the APM server
module ScoutApm
  module Serializers
    class PayloadSerializer
      def self.serialize(metrics, slow_transactions)
        Marshal.dump(:metrics => metrics, :slow_transactions => slow_transactions)
      end

      def self.deserialize(data)
        Marshal.load(data)
      end
    end
  end
end