FROM debian:bookworm-slim

WORKDIR /app
COPY juku /app/juku
RUN chmod +x /app/juku

# Render 会通过环境变量 PORT 告诉你该监听哪个端口
ENV PORT=8999
EXPOSE 8999

CMD ["/app/juku"]
