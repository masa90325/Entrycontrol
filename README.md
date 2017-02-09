#入退室管理アプリ  
コワーキングスペースで入退室を管理するwebアプリをrailsで作成してください。  
  
・開発環境  
- ruby  
- Ruby on Rails  
  
・機能  
- ユーザー管理    
	1. 登録  
	1. 編集  
	1. 削除  
	1. 閲覧  
- 入退室管理  
	1. 入室、退室時間の登録  
	1. 現在の入室人数の表示など  
	1. ユーザー毎の利用頻度、回数など表示(時間があったら)  
- 簡単なメモを登録する機能  
	1. ユーザー毎に登録  
	1. ユーザーとは別テーブルで作成(できれば親子関係を持たせる)  
  
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
  
---------------------------------------------------------------------------------------  
  
$rails g scaffold user # コントローラ、ビュー等を作成  
*generateコマンド参考URL<http://maeharin.hatenablog.com/entry/20130212/rails_generate>  
  
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
*Ruby on Railsではマイグレーションによってデータベース構造を管理しています。 コマンド実行でdb/migrateディレクトリに損じするすべてのマイグレーションを実行  
  
$rake db:version   # マイグレーションのバージョンを知りたい  
$rake db:rollback  # マイグレーションのバージョンを下げたい  
































