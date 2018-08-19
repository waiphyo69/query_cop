module QueryCop
  class QueryTracker
    class << self
      attr_accessor :queries

      def reset
        self.queries = []
      end

      def track(log)
        queries.push(log) if query?(log)
      end

      def query_count
        queries.size
      end

      private

      def query?(log)
        log =~ /^(select|create|update|delete|insert)\b/i
      end
    end

    reset
  end
end
