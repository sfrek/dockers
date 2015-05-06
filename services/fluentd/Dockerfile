FROM ruby

RUN \
  gem install fluentd --no-ri --no-rdoc && \
  fluentd --setup && \
  echo '@include /fluent.d/*.conf' > /etc/fluent/fluent.conf && \
  fluent-gem install \
    fluent-plugin-record-modifier \
    fluent-plugin-record-reformer \
    fluent-plugin-rewrite-tag-filter \
    fluent-plugin-elasticsearch --no-ri --no-rdoc

VOLUME ["/fluent.d"]

EXPOSE 24224

CMD ["fluentd", "-c", "/etc/fluent/fluent.conf"]
