class CreateSuperHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :super_heros do |t|
      t.string :name
      t.string :description
      t.string :universe
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
