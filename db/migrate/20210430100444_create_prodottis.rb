class CreateProdottis < ActiveRecord::Migration[6.1]
  def change
    create_table :prodottis do |t|
      t.string :codice
      t.string :nome
      t.integer :numeropezzi
      t.text :ingredienti
      t.integer :prezzo

      t.timestamps
    end
  end
end
