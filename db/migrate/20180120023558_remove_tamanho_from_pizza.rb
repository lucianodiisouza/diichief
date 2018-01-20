class RemoveTamanhoFromPizza < ActiveRecord::Migration[5.1]
  def change
    remove_column :pizzas, :tamanho, :float
  end
end
