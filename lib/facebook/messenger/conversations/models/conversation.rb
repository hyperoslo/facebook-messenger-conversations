require 'sequel'
module Facebook
  module Messenger
    module Conversations
      class Conversation < Sequel::Model
        def self.find_or_create(id:)
          super(conversation_id: id)
        end
      end
    end
  end
end
