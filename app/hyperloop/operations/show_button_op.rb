class ShowButtonOp < Hyperloop::Operation

	param :ev

	step { MyStore.toggle_field }
	step { Helloworld.toggle_logo(params.ev) }

end