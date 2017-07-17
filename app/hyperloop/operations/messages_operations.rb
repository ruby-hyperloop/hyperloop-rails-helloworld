module MessagesOperations

  class MessagesBase < Hyperloop::ServerOp
    param :acting_user, nils: true
    dispatch_to { Hyperloop::Application }

    def cachedmessages
      Rails.cache.fetch('messages') { [] }
    end

  end
  

  class GetMessages < MessagesBase
    outbound :messages

    step { params.messages = cachedmessages }
  end

  class Send < MessagesBase
    param :message

    step do
      params.message = {
        message: params.message
      }
      newcachedmessages = cachedmessages << params.message
      Rails.cache.write('messages', newcachedmessages)
    end
  end


end
