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
    add_reference :products, :user, foreign_key: true

    add_column :products, :price, :decimal, precision: 5, scale: 2
    add_reference :products, :supplier, polymorphic: true

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
    remove_foreign_key :accounts, :branches
    remove_foreign_key :accounts, column: :owner_id
    remove_foreign_key :accounts, name: :special_fk_name

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
