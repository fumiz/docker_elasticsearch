FROM elasticsearch:1.5.2

# 日本語全文検索用のkuromoji
RUN /usr/share/elasticsearch/bin/plugin --install elasticsearch/elasticsearch-analysis-kuromoji/2.5.0

# クラスタ管理 head
# http://mobz.github.io/elasticsearch-head/
RUN /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head

# クラスタ管理 HQ
RUN /usr/share/elasticsearch/bin/plugin --install royrusso/elasticsearch-HQ

# クエリデバッグ inquisitor
# http://blog.johtani.info/blog/2013/09/23/intro-elasticsearch-inquisitor/
RUN /usr/share/elasticsearch/bin/plugin --install polyfractal/elasticsearch-inquisitor

