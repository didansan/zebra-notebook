# frozen_string_literal: true

class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions, id: :uuid, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci" do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :user_agent
      t.string :ip_address

      t.timestamps
    end
  end
end
