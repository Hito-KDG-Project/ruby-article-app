Article.destroy_all

Article.create!(
  [
    {
      title: "はじめての投稿",
      body: "これは最初のサンプル記事です。",
      summary: "記念すべき最初の記事です。"
    },
    {
      title: "Rails入門",
      body: "scaffoldを使ってCRUDを作成しました。",
      summary: "CRUD操作をscaffoldで楽々実装！"
    },
    {
      title: "Bootstrap導入済み",
      body: "見た目がきれいになりました。",
      summary: "CSSフレームワークでデザインを一新。"
    }
  ]
)
puts "記事を #{Article.count} 件作成しました"
