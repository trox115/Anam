class CreateInscricaos < ActiveRecord::Migration[6.0]
  def change
    create_table :inscricaos do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :tipo
      t.string :categoria
      t.string :municipio

      t.timestamps
    end
  end
end
