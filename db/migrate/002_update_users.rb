class UpdateUsers < ActiveRecord::Migration
    def self.up
        change_table :users do |t|
            t.column :app_notification, :boolean, :default => 0
        end
    end

    def self.down
        change_table :users do |t|
            t.remove :app_notification
        end
    end
end