class DropAdminstrators < ActiveRecord::Migration[6.1]
  def change
   drop_table:Adminstrators
  end
end
