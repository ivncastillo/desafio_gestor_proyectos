class CreateProyectos < ActiveRecord::Migration[6.1]
  def change
    create_table :proyectos do |t|
      t.string :name
      t.string :descripcion
      t.date :start_date
      t.date :end_date
      t.date :state

      t.timestamps
    end
  end
end
