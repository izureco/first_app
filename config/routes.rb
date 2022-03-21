Rails.application.routes.draw do
  # やること：トップページを表示させる
  # 書き方：HTTPメソッド 'URIパターン(URLのようなリクエストのパス)', to:'コントローラー名 # アクション名'
  get 'posts', to: 'posts#index'
  # ▲「一覧を表示」させたいので、HTTPメソッドはget, アクションはindex.  URLは"localhost:3000/posts"
  # ▲ postsコントローラーという名前のコントローラー, indexアクションという名前のアクション
  
  # やること：新規投稿フォームを表示させる
  get 'posts/new', to: 'posts#new'
  # ▲「新規ページを表示」させたいので、HTTPメソッドはget, アクションはnew. URLは"localhost:3000/posts/new"
  # ▲ postsコントローラーという名前のコントローラー, newアクションという名前のアクション
  # ただしくルーティングできたかを、rails routesでチェックする。

  # やること：データを投稿する
  post 'posts', to: 'posts#create'
  # ▲「データを投稿(送信)」させたいので、HTTPメソッドはPOST, アクションはcreate. URLは"localhost:3000/posts"
  # ▲ postsコントローラーという名前のコントローラー, newアクションという名前のアクション
  # new.html.erbの'新規投稿フォーム'の中で、フォーム送信先を'/posts'とした。
  # つまり、'新規投稿'ボタンが押されると、このルーティングが選択されるようになった。

end
