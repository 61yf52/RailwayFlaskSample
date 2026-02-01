# Python 3.11の公式イメージを使用
FROM python:3.11.11-slim

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピー
COPY requirements.txt .

# 依存関係をインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションファイルをコピー
COPY . .

# ポートを公開（Railwayが動的に設定）
EXPOSE 8080

# Gunicornでアプリケーションを起動
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--workers", "4", "app:app"]
