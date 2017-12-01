require 'activerecord-import'
require 'kudzu'

module Kudzu
  module Adapter
    module ActiveRecord
    end
  end
end

Kudzu.adapter = Kudzu::Adapter::ActiveRecord

if defined? Railtie
  ActiveSupport.on_load :active_record do
    require_relative 'active_record/all'
  end
else
  require_relative 'active_record/all'
end
