Article.destroy_all

Article.create!(
  [
    { title: "はじめての投稿", body: "これは最初のサンプル記事です。" },
    { title: "Rails入門", body: "scaffoldを使ってCRUDを作成しました。" },
    { title: "Bootstrap導入済み", body: "見た目がきれいになりました。" }
  ]
)
puts "記事を #{Article.count} 件作成しました"
