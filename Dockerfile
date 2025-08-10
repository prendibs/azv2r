FROM alpine:latest

# Install dependencies
RUN apk add --no-cache nginx unzip curl

# Install V2Ray
RUN curl -L -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
    && unzip v2ray.zip -d /usr/local/bin/ \
    && rm v2ray.zip

# Copy configs
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json /etc/v2ray/config.json

# Expose port (Azure maps 443 → 8080 automatically)
EXPOSE 8080

# Start Nginx + V2Ray
CMD nginx && v2ray -config /etc/v2ray/config.json
