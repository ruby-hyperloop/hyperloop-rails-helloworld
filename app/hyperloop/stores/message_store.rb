class MessageStore < Hyperloop::Store
  state :messages, scope: :class, reader: :all
  #state :user_name, scope: :class, reader: true

  def self.messages?
    state.messages
  end

  receives MessagesOperations::GetMessages do |params|
    puts "receiving Operations::GetMessages(#{params})"
    mutate.messages params.messages
  end

  receives MessagesOperations::Send do |params|
    puts "receiving Operations::Send(#{params})"
    mutate.messages << params.message
  end
end