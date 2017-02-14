class RenamedAttrToCompany < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :company_name, :name
  end
end
