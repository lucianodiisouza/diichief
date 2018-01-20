class AddTamanhoToPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :tamanho, :string
  end
end
