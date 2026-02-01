# RailwayFlaskSample

FlaskアプリケーションのRailwayデプロイサンプル（Docker版）

## 概要

シンプルなFlaskアプリケーションで、「Hello World, Flask Application!!」を表示します。
Dockerを使用してコンテナ化されています。

## ローカルでの実行

### 方法1: Dockerを使用

```bash
# Dockerイメージをビルド
docker build -t railway-flask-sample .

# コンテナを起動
docker run -p 8080:8080 railway-flask-sample
```

### 方法2: 直接実行

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
4. Dockerfileが自動検出され、コンテナイメージがビルドされます
5. 自動的にデプロイされます

Railwayは`Dockerfile`を検出すると、自動的にDockerビルドを使用します。

## ファイル構成

- `app.py` - メインのFlaskアプリケーション
- `requirements.txt` - Python依存関係
- `Dockerfile` - Dockerイメージビルド設定
- `.dockerignore` - Dockerビルドから除外するファイル

## Docker設定の詳細

- ベースイメージ: `python:3.11.11-slim`
- Webサーバー: Gunicorn（4ワーカー）
- ポート: 8080（Railwayが動的に設定）
