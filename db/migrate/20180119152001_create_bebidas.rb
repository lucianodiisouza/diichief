class CreateBebidas < ActiveRecord::Migration[5.1]
  def change
    create_table :bebidas do |t|
      t.string :nome
      t.string :tamanho
      t.decimal :preco

      t.timestamps
    end
  end
end
