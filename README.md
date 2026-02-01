# RailwayFlaskSample

FlaskアプリケーションのRailwayデプロイサンプル

## 概要

シンプルなFlaskアプリケーションで、「Hello World, Flask Application!!」を表示します。

## ローカルでの実行

```bash
# 依存関係のインストール
pip install -r requirements.txt

# アプリケーションの起動
python app.py
```

ブラウザで `http://localhost:8080` にアクセスしてください。

## Railwayへのデプロイ

1. GitHubリポジトリにプッシュ
2. Railwayで新しいプロジェクトを作成
3. GitHubリポジトリを接続
4. 自動的にデプロイされます

## ファイル構成

- `app.py` - メインのFlaskアプリケーション
- `requirements.txt` - Python依存関係
- `Procfile` - Railwayデプロイ設定
- `runtime.txt` - Pythonバージョン指定
