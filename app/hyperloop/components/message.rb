class Message < Hyperloop::Component
  param :message

  def render
     TR(class: 'table-success') do
         TD(width: '50%') { params.message[:message] }
      end
   end

end