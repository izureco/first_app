# migrationファイルは、テーブルの仕様を決定するもの
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    # postsという名前のテーブルを生成する
    create_table :posts do |t|
      # tが"カラム(テーブルの列)"を意味し、.以降がカラムの名前を表す
      t.text :content
      t.timestamps
    end
  end
end
