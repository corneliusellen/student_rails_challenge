class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.text :name
    end
  end
end
