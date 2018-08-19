require_relative "query_tracker.rb"
module QueryCop
  module ActiveRecordAdapter
    def log(query, *)
      QueryCop::QueryTracker.track(query)
      super
    end
  end
end
