class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :nome
      t.string :cnpj
      t.string :codigo_contabil
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
