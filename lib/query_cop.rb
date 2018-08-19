require_relative "query_cop/query_tracker"
require "query_cop/active_record_adapter"
require "query_cop/rspec_helper"

ActiveRecord::ConnectionAdapters::AbstractAdapter.send(:prepend, QueryCop::ActiveRecordAdapter) if Rails.env.test?

RSpec.configure do |config|
  config.include(QueryCop::RspecHelper)
end
