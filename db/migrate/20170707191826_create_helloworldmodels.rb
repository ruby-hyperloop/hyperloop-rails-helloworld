class CreateHelloworldmodels < ActiveRecord::Migration[5.1]
  def change
    create_table :helloworldmodels do |t|
      t.string :description

      t.timestamps
    end
  end
end
