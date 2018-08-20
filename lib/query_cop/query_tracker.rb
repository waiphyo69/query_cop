module QueryCop
  class QueryTracker
    class << self
      attr_accessor :queries, :enabled

      def reset
        self.queries = []
      end

      def enable
        self.enabled = true
      end

      def disable
        self.enabled = false
      end

      def track(log)
        queries.push(log) if query?(log) && enabled?
      end

      def query_count
        queries.size
      end

      def clean_wrap
        enable
        reset

        yield

        reset
        disable
      end

      private

      def query?(log)
        log =~ /^(select|create|update|delete|insert)\b/i
      end

      def enabled?
        enabled == true
      end
    end

    reset
    disable
  end
end
