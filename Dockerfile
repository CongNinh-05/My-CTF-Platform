# Sử dụng trực tiếp image đã được build sẵn của CTFd
FROM ctfd/ctfd:latest

USER root

# Đảm bảo các thư mục cần thiết có quyền ghi
RUN mkdir -p /opt/CTFd/CTFd/uploads /var/log/CTFd /var/uploads \
    && chown -R 1001:1001 /opt/CTFd /var/log/CTFd /var/uploads

USER 1001
EXPOSE 8000
ENTRYPOINT ["/opt/CTFd/docker-entrypoint.sh"]
