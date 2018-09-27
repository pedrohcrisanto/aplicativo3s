class CreateCompanyproviders < ActiveRecord::Migration[5.2]
  def change
    create_table :companyproviders do |t|
      t.string :nome
      t.string :cnpj
      t.string :codigo_contabil_cliente
      t.string :codigo_contabil_fornecedor
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
