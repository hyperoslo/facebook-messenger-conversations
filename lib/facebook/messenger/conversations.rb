require 'sequel'
DB = Sequel.sqlite

DB.create_table(:conversations) do
  primary_key :id
  Integer :conversation_id
  TrueClass :old, default: false
  DateTime :created_at
  DateTime :updated_at
end

Sequel::Model.plugin :timestamps
require 'facebook/messenger/conversations/version'
require 'facebook/messenger/conversations/models/conversation'

module Facebook
  module Messenger
    module Conversations
      module_function

      def get(id)
        Conversation.find_or_create(id: id)
      end
    end
  end
end
