class CreateDoctypes < ActiveRecord::Migration[5.2]
  def change
    create_table :doctypes do |t|
      t.string :nome
      t.text :descricao
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
