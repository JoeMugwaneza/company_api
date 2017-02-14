class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :profession
      t.string :logo

      t.timestamps
    end
  end
end
