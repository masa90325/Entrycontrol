# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

・Githubコマンド

$git clone    - リポジトリのコピー
$git init     - ディレクトリにリポジトリを作成
$git add      - ファイルやディレクトリをインデックスに登録
$git commit   - インデックスに追加されたファイルをコミットする
$git status   - ファイルの変更されたかを表示
$git log      - コミットログの確認
$git diff     - インデックスとワーキングツリーの差異を表示
$git checkout - コミットされた過去のファイルを復元
$git show     - 最新のコミット内容を表示
$git reset    - インデックスを現在のHEADの状態にする
$git rm       - ワークツリーとインデックスからファイルを削除
$git mv       - ファイル名を変更
$git revert   - コミットIDのコミットを取り消す
$git rebase   - コミットIDから古い順にコミットが表示
$git push     - リモートレポジトリに変更を書き込む
$git pull     - リモートレポジトリの変更を読み込む
$git remote   - リモートレポジトリの一覧表示
$git fetch    - リモートレポジトリの最新情報を追加
$git branch   - 現在のブランチの確認&新しいブランチを作成
$git merge    - 現在のブランチをほかのブランチとマージ
$git tag      - タグ一覧を表示
$git status   - 現在の状態を保存
$git reflog   - 過去にHEADが指していたコミット一覧を表示
$git cherry-pick - 別のブランチのコミットを現在のブランチにコピーする
$git config   - 使用されるリポジトリの設定を表示する

---------------------------------------------------------------------------------

$rails g scaffold user # コントローラ、ビュー等を作成
# generateコマンド参考URL[http://maeharin.hatenablog.com/entry/20130212/rails_generate]

rails g scaffold userでエラー発生
[ There was an error while trying to load the gem 'uglifier'.
Gem Load Error is: Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes. ]

対処
$yum install epel-release  # リポジトリ追加
$yum install nodej		   # yumでインストール

試しに起動.
$rails s          # localahost:3000起動

$rake db:create   # データベース作成  *デフォルトではSQLite 
データベースを指定したい場合
$rake db:create RRAILS_ENV = データベース名

$rake db:drop     # データベース削除

$rake db:migrate  # マイグレーションの実行
# Ruby on Railsではマイグレーションによってデータベース構造を管理しています。 コマンド実行でdb/migrateディレクトリに損じするすべてのマイグレーションを実行

$rake db:version   # マイグレーションのバージョンを知りたい  
$rake db:rollback  # マイグレーションのバージョンを下げたい































