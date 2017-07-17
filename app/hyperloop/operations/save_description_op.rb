class SaveDescriptionOp < Hyperloop::Operation

  step do
  	
    Helloworldmodel.create(:description => MyStore.field_value) do |result|
      alert "unable to save" unless result == true
    end
    
  end

end