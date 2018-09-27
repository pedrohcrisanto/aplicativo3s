class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :typepayment, foreign_key: true
      t.references :company, foreign_key: true
      t.references :companyprovider, foreign_key: true
      t.references :accountfinancial, foreign_key: true
      t.references :accountbank, foreign_key: true
      t.references :doctype, foreign_key: true
      t.references :category, foreign_key: true
      t.date :data_vencimento
      t.date :data_baixa
      t.text :historico
      t.decimal :valor_operacao
      t.decimal :valor_acrescimo
      t.decimal :valor_desconto
      t.decimal :valor_liquido
      t.references :user, foreign_key: true
      t.json :documents

      t.timestamps
    end
  end
end
