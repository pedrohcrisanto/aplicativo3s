class CreateAccountbanks < ActiveRecord::Migration[5.2]
  def change
    create_table :accountbanks do |t|
      t.string :nome
      t.string :banco
      t.string :agencia
      t.string :conta_corrente
      t.string :codigo_contabil
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
