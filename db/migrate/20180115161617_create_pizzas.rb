class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :nome
      t.string :ingredientes
      t.string :tamanho
      t.decimal :preco

      t.timestamps
    end
  end
end
