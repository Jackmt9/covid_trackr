class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code
      t.float :latitude
      t.float :longitude

    end
  end
end
