require_relative "query_cop/query_tracker"
require_relative "query_cop/active_record_adapter"
require_relative "query_cop/rspec_helper"

ActiveRecord::ConnectionAdapters::AbstractAdapter.send(:prepend, QueryCop::ActiveRecordAdapter) if Rails.env.test?

RSpec.configure do |config|
  config.include(QueryCop::RspecHelper)
end
