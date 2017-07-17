class Messages < Hyperloop::Component
  
  def render

  	  DIV do
	    BR
	    TABLE(class: 'table table-hover table-condensed') do

	      THEAD do
	        TR(class: 'table-danger') do
	          TD(width: '33%') { "SENT MESSAGES" }
	        end
	      end

	      TBODY do
	        MessageStore.all.each do |message|
		        Message message: message
		    end
	      end

	    end
	  end

  end

end