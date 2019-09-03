# typed: true

## This code is all taken from the ActiveRecord Migrations guide.
# https://guides.rubyonrails.org/active_record_migrations.html
# This tests as many valid migrations methods as it can.
class ActiveRecordMigrationsTest < ActiveRecord::Migration::Current
  def change
    create_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :products, if_not_exists: true do |t|
      t.string :name
    end

    add_column :products, :part_number, :string
    rename_column :users, :email, :email_address
    remove_column :products, :part_number, :string

    add_index :products, :part_number
    add_index :accounts, [:branch_id, :party_id], unique: true
    add_index :accounts, [:branch_id, :party_id], unique: true, name: 'by_branch_party'
    add_index :accounts, :name, name: 'by_name', length: 10
    add_index :accounts, [:name, :surname], name: 'by_name_surname', length: { name: 10, surname: 15 }
    add_index :accounts, [:branch_id, :party_id, :surname], order: { branch_id: :desc, party_id: :asc }

    remove_index :accounts, :branch_id
    remove_index :accounts, [:branch_id, :party_id]
    remove_index :accounts, :branch_id, name: :by_branch_party

    rename_index :people, 'index_people_on_last_name', 'index_users_on_last_name'
    rename_index :people, :index_people_on_last_name, :index_users_on_last_name

    add_reference :products, :user, foreign_key: true
    add_reference :products, :supplier, polymorphic: true
    add_reference :products, :user, type: :string
    add_reference :products, :supplier, polymorphic: true, index: true
    add_reference :products, :supplier, index: { unique: true }
    add_reference :products, :supplier, index: { name: "my_supplier_index" }
    add_reference :products, :supplier, foreign_key: true
    add_reference :products, :supplier, foreign_key: { to_table: :firms }

    remove_reference :products, :user, index: true
    remove_reference :products, :supplier, polymorphic: true
    remove_reference :products, :user, index: true, foreign_key: true

    add_column :products, :price, :decimal, precision: 5, scale: 2
    add_column :articles, :status, :string, limit: 20, default: 'draft', null: false
    add_column :answers, :bill_gates_money, :decimal, precision: 15, scale: 2
    add_column :measurements, :sensor_reading, :decimal, precision: 30, scale: 20
    add_column :measurements, :huge_integer, :decimal, precision: 30
    add_column :shapes, :triangle, 'polygon'

    create_join_table :products, :categories, column_options: { null: true }
    create_join_table :products, :categories, table_name: :categorization

    create_join_table :products, :categories do |t|
      t.index :product_id
      t.index :category_id
    end

    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
      t.rename :upccode, :upc_code
    end

    change_column :products, :part_number, :text

    change_column_null :products, :name, false
    change_column_default :products, :approved, from: true, to: false

    add_foreign_key :articles, :authors
    add_foreign_key :articles, :users, column: :author_id, primary_key: "lng_id"
    add_foreign_key :articles, :authors, on_delete: :cascade
    remove_foreign_key :accounts, :branches
    remove_foreign_key :accounts, column: :owner_id
    remove_foreign_key :accounts, :branches, name: :special_fk_name
    foreign_key_exists?(:accounts, :branches)
    foreign_key_exists?(:accounts, column: :owner_id)
    foreign_key_exists?(:accounts, name: "special_fk_name")

    execute <<-SQL
      ALTER TABLE distributors
        DROP CONSTRAINT zipchk
    SQL

    drop_table :distributors

    suppress_messages do
      create_table :products do |t|
        t.string :name
        t.text :description
        t.timestamps
      end
    end

    say "Created a table"

    suppress_messages { add_index :products, :name }
    say "and an index!", true

    say_with_time 'Waiting for a while' do
      250
    end
  end
end

# Test that the old definition for 5.2 migrations still works.
# create_table was the only method that changed between the two.
class ActiveRecordOldMigrationsTest < ActiveRecord::Migration::Compatibility::V5_2
  def change
    create_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
