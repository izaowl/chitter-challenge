require 'message'
require 'database_helpers.rb'

describe Message do
  # describe '.all' do
  #   it 'returns all messages' do
  #     messages = Message.all
      
  #     expect(messages).to include('Hello Chitters')
  #   end
  # end

  
  describe '.create' do
    it 'create new message' do
      message = Message.create(message: 'Hello Chitters!', ch_user: 'Hello Chitt!')
      persisted_data = persisted_data(id: message.id)

      expect(message).to be_a Message
      expect(message.id).to eq persisted_data['id']
      expect(message.message).to eq 'Hello Chitters!'
      expect(message.ch_user) == 'Hello Chitt!'
    end

  end

  describe '.all' do
    it 'returns a list of messages' do
      connection = PG.connect(dbname: 'message_test')
   
      # Add the test data
      Message.create(message: 'Hello Chitters First!', ch_user: 'Hello Chitt First!')
      Message.create(message: 'Hello Chitters Second!', ch_user: 'Hello Chitt Second!')
      message_last = Message.create(message: 'Hello Chitters Last!', ch_user: 'Hello Chitt Last!')
   
      messages = Message.all
   
      expect(messages.length).to eq 3
      expect(messages.first).to be_a Message
      expect(messages.first.id) == message_last.id
      expect(messages.first.message) =='Hello Chitters Last!'
      expect(messages.first.ch_user) == 'Hello Chitt Last!'

    end

  end
end
