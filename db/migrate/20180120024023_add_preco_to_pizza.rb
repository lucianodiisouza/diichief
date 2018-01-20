class AddPrecoToPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :preco, :float
  end
end
