require 'spec_helper'

describe Facebook::Messenger::Conversations do
  describe '.get' do
    context 'with new conversation' do
      it 'creates a new conversation' do
        conversation = described_class.get(1)
        expect(conversation).to be_an(Facebook::Messenger::Conversations::Conversation)
      end
    end

    context 'with existing conversation' do
      it 'retrieves conversation' do
        same = described_class.get(1)
        conversation = described_class.get(1)
        expect(conversation.id).to eq(same.id)
      end
    end
  end
end
