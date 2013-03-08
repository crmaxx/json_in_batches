require 'yajl'
require 'active_support/concern'

module JsonInBatches
  extend ActiveSupport::Concern

  module InstanceMethods
    def to_json_in_batches
      find_each do |item|
        Yajl::Encoder.encode(item)
      end
    end
  end

  module ClassMethods
    def to_json_in_batches
      find_each do |item|
        Yajl::Encoder.encode(item)
      end
    end
  end
end

# include the extension 
ActiveRecord::Base.send(:include, JsonInBatches)