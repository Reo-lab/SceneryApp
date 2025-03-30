FROM ruby:3.3.0

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y nodejs npm mariadb-client

RUN apt-get update && apt-get install -y libvips
# 作業ディレクトリを指定
WORKDIR /app

# Bundlerを最新化
RUN gem install bundler

# プロジェクトのソースコードをコピー
COPY . /app

# Gemfileの依存関係をインストール
RUN bundle install

# ポートを開放
EXPOSE 3000

# サーバー起動
CMD ["rails", "server", "-b", "0.0.0.0"]
