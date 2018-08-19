require_relative "active_record_adapter.rb"

module QueryCop
  module RspecHelper
    def with_allowed_max_query_count(max_count)
      QueryCop::QueryTracker.reset

      yield

      failure_message = <<-EOS
      Allowed maximum query count: #{max_count}
      Actual generated query count: #{QueryCop::QueryTracker.query_count}
      Here is the list of generated queries:
      #{QueryCop::QueryTracker.queries.join("\n")}
      EOS

      expect(QueryCop::QueryTracker.query_count).to be < max_count, failure_message
    end
  end
end
