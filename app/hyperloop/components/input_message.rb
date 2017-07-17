class InputMessage < Hyperloop::Component

	state message_field: "Type your message here"

	def render

		DIV(class: 'formdiv') do
			DIV(class: 'input-datas') do

				HR {}

				INPUT(type: :text, value: state.message_field,  class: 'form-control')
				.on(:change) do |e|
			      mutate.message_field e.target.value
			    end
			    .on(:focus) do |e|
			      mutate.message_field " "
			    end
			    
			    
			    BUTTON(class: 'btn btn-warning') do
			      "Send"
			    end.on(:click) do |ev|
			      MessagesOperations::Send(message: state.message_field)
			    end

			    HR {}

			end
		end

	end

end