class CreateMeupedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :meupedidos do |t|
      t.integer :user_id
      t.string :obs
      t.string :status
      t.integer :total
      t.string :descricao

      t.timestamps
    end
  end
end
