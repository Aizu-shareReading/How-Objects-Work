# アジャイル開発の台頭
## ウォータフォール型開発プロセス
- 全体の計画をあらかじめたてた上で、各作業を期限までに実施し、成果物をレビューして承認をする
- 以下のプロセスを1回ずつ行う 
1. 要件定義
2. 設計
3. プログラミング
4. テスト
- 前提：ソフトウェアを作るよりも文書を書く方がコストが低い
- 問題点
  1. 最初の段階で要求される機能を全て定義するのはほぼ不可能
  2. 技術は常に流動的で、開発してみないとわからない問題が浮き彫りになることがある

## 反復型開発プロセス
- イテレーション(要件定義→設計→プログラミング→テストまでの一連の作業)を複数回して、開発を進める
- ウォーターフォールの課題の解決
  1. 段階的にソフトウェアを作りながら、中間リリースを行い、その度にユーザーからフィードバックをもらうので、要求の変化を受け入れやすい
  2. プロジェクトの早い段階からアプリの一部を作って動かすので、技術自体のバグを踏んでも、早い段階で対処を講じれる
### XP(エクストリームプログラミング)
- 開発者の視点
- 基本理念(４つの価値)
  1. コミュニケーション
  2. フィードバック
  3. シンプルさ
  4. **勇気 
- 実践(12のプラクティス)
  1. 計画ゲーム
  2. メタファー
  3. テスティング
  4. ペアプログラミング
  5. 継続的インテグレーション
  6. オンライン顧客
  7. 小さなリリース
  8. シンプルデザイン
  9. リファクタリング
  10. 共同所有権
  11. 週40時間労働
  12. コーディング標準

### スクラム開発
- チーム視点 + マネジメント視点
- メンバーの役割、MTGとアジェンダ、作業の進捗状況の共有を把握するためのバックログの管理方法まで定める
- メンバーの役割
  - プロダクトオーナー
    - 作成するプロダクトの最終的な責任者
    - 顧客の立場でプロダクトのバックログの優先順位を決める権限を持つ
    - 開発チームの作業に干渉しない
  - 開発チーム
    - チームメンバーが機能横断的に作業を進めることを基本としているので、アーキテクト、プログラマといった特定の役割分担をしない
  - スクラムマスター
    - チームの作業が円滑に進むように支援するコーチ役

### アジャイル開発を支えるプラクティス
- テスト駆動開発（TDD）
- テストコードを先に書いてから本体コードを開発する
  - 2〜5のステップを短いサイクルで繰り返す
    1. 詳細設計
    2. テストコード
    3. コンパイルを通す
    4. テストを実行して、失敗することを確認する
    5. コードを記述して、テストを成功させる
    6. コードの重複を取り除く  
- リファクタリング
  - 一旦完成したプログラムの外部しようを変えず、内部構造を安全に改善すること
  - コードの外部しよが変わっていないことを保証するため、テストコードを用意して作業の前後で走らせる必要がある
  - 関数抽出の手順
    1. 適切な名前の新しい関数を作る
    2. 抽出したいロジックを新しい関数にコピー
    3. 抽出したロジックが使う変数を新しい関数に適合させるため、必要に応じて引数や戻り値に変更
    4. コンパイルする
    5. 元の関数を変更して、新しい関数を呼び出せるようにする
    6. コンパイルしてテストする 
- 継続的インテグレーション(CI)
  - コードを常に出荷できる状態に保ちながら品質を維持できる仕組み
  - CIサーバーと呼ばれる専用のマシン環境を用意し、コンパイル→ビルド→単体テストまでの一連の作業を自動実行する
