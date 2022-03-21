# コントローラー名controllerというクラス(コントローラーの総称)を定義
# ここではPostsという名前のコントローラーを定義する
# Viewsディレクトリの「Postsディレクトリ」のビューファイル「indexメソッド」が呼び出される
class PostsController < ApplicationController

  # index(トップページを表示するリクエストに対応して動くアクション)のインスタンスメソッド@postを定義する
  # ▼これを定義することで、ルーティングに対応するアクションが用意できた。
  # indexの動作：トップページを表示する
  def index
    # モデルで作成したDBから、データを取得
    # findメソッドの使い方：モデル名.find(レコードのid)
    # @post = Post.find(1)  # レコードの1行目を@postに代入
    @posts = Post.all        # 全てのレコードを@postsに代入し、ビューに渡す
  end

  # newの動作：新規投稿ページを表示する
  # データのやりとりが無い(表示するだけ)ので、定義するだけ
  def new
  end

  # createアクションの動作：コメントを投稿する。
  def create
    Post.create(content: params[:content])
  end

  # というのも、ルーティングを実装するときに、、、
  # get 'posts', to: 'posts#index'
  ## ▲ postsコントローラーという名前のコントローラー, indexアクションという名前のアクション
  ## つまり、「postsというパスに、getメソッドでリクエストが送られてきたら、postsコントローラーのindex(トップページ)を呼び出す」という設定 
  ## PostsController(クラス)とindexというアクション(インスタンスメソッド)が用意できた

end
