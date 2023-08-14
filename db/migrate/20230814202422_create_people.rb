class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :typeKey
      t.string :stateKey
      t.string :name
      t.jsonb :descr
      t.string :pictureDocumentId
      t.jsonb :meta

      t.timestamps
    end
  end
end
