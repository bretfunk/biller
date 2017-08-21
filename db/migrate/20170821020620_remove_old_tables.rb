class RemoveOldTables < ActiveRecord::Migration[5.1]
  def up
    Customer.all.each do |c|
      Account.create(name: c.name, about: c.about)
    end

    Employee.all.each do |e|
      Account.create(name: e.email, email: e.email)
    end

    drop_table :customers
    drop_table :employees
  end
end
