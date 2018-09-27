class CreateAccountfinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :accountfinancials do |t|
      t.string :nome
      t.string :natureza
      t.text :historico
      t.string :codigo_contabil
      t.references :companyprovider, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
