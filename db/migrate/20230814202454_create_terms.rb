class CreateTerms < ActiveRecord::Migration[7.0]
  def change
    create_table :terms do |t|
      t.string :typeKey
      t.string :stateKey
      t.string :name
      t.jsonb :descr
      t.string :code
      t.date :startDate
      t.date :endDate
      t.jsonb :meta

      t.timestamps
    end
  end
end
