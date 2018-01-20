class RemovePrecoFromPizza < ActiveRecord::Migration[5.1]
  def change
    remove_column :pizzas, :preco, :decimal
  end
end
