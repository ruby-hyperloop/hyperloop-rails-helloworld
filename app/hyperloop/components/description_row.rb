class DescriptionRow < Hyperloop::Component
  
  param :descriptionparam

  def render
    TR(class: 'table-success') do
      TD(width: '50%') { params.descriptionparam }
    end
  end

end