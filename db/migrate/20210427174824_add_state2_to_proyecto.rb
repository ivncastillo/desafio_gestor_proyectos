class AddState2ToProyecto < ActiveRecord::Migration[6.1]
  def change
    add_column :proyectos, :state2, :string
  end
end
