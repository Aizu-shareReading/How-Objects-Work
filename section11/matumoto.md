# 第11章 オブジェクト指向から生まれたアジャイル開発

OOPなどのノウハウだけでチーム開発は成り立たなかった  
設計などとは別に開発プロセスについてまとめられた

## 開発プロセス

### ウォーターフォール型と反復型

従来はウォーターフォール型が実践されてきた

ウォーターフォール型は各作業を順に1回ずつ実施する  
例. 要件定義→設計→プログラミング→テスト
「ソフトウェアの変更には大きなコストがかかる」ことを前提としている

- メリット
  - 早い段階で要件を決め、仕様変更を最小限に抑えられる
- デメリット
  - 変更に弱すぎ
    - 例.
      - 要求見落とし
      - 新しいアイデア
      - 外部要因
  - 技術の進化スピードについていけない/後戻りできない
    - 例.
      - 新技術の確立
      - 技術の適切な利用方法

反復型は各作業をウォーターフォール型の作業をイテレーションという一つの塊にして、それを何回も繰り返す  
例. 要件定義→設計→プログラミング→テスト→要件定義→設計→プログラミング→テスト...

- メリット
  - 変更に強い
- デメリット
  - なんだろうねぇ

### XP

eXtremeProgrammingの略なんだけど、EPじゃないんかい

詳細は本を読むか調べるか他の人の記事を読むべし

- [Naoya](https://github.com/Aizu-shareReading/How-Objects-Work/blob/main/section11/Naoya.md)
- [donabe](https://github.com/Aizu-shareReading/How-Objects-Work/blob/main/section11/donabe.md)

***ここで重要なのは、XPはプログラマの視点を基本にしていると言えること***

### スクラム

ラグビーのスクラムのようにチームメンバーが力を合わせて仕事を進めることに由来

以下の3つの役職だけ定められており、より具体的なものは定められていない

- プロダクトオーナー
- 開発チーム
- スクラムマスター

詳細は本を読むか調べるか他の人の記事を読むべし

最新の詳細は [ここ](https://scrumguides.org/) にかかれている

***ここで重要なのは、スクラムはチームの視点を基本にしていると言えること***

### アジャイル宣言

XP、スクラムの他に様々な軽量反復型開発手法が考案された

それらをまとめて、**アジャイル開発手法**と名付ける動きが起こった

- アジャイル開発手法 ⊆ 反復型開発手法
- XP, スクラム, TDD, リファクタリング ∈ アジャイル開発手法

詳細は本を読むか調べるか他の人の記事を読むべし

#### TDD

なんかレッド、グリーン、リファクタリングという工程に分かれているっぽい

これ競プロでわかりやすかった

- [https://panda-program.com/posts/test-driven-development](https://panda-program.com/posts/test-driven-development)

#### リファクタリング

関数に抽出してそのまま動くようにする

#### 継続的インテグレーション

- CircleCI
- GitHubActions

CIは基本的に実行速度がそれなりに求められてる気がする

## アジャイルはオブジェクト指向から生まれた

- 反復型開発プロセスなどとオブジェクト指向の相性が良い
  - TDDやリファクタリングにOOPで出来ているツールを使うことが多い

- 反復型開発プロセスに関係の深い人はオブジェクト指向にも関係が深い
  - アジャイル開発手法の色々を推進してきた技術者はJavaとかの指導的なプログラマ
    - これはなんかこじつけでは？