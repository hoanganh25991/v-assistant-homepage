#!/bin/bash

# Thư mục chứa video
VIDEO_DIR=${1:-"/path/to/your/videos"}
# Thư mục lưu thumbnail
THUMBNAIL_DIR=${2:-"/path/to/save/thumbnails"}

# Tạo thư mục lưu thumbnail nếu chưa tồn tại
mkdir -p "$THUMBNAIL_DIR"

# Lặp qua tất cả các file video trong thư mục
for video in "$VIDEO_DIR"/*.mp4; do
  # Lấy tên file mà không có phần mở rộng
  filename=$(basename -- "$video")
  filename="${filename%.*}"

  # Tạo thumbnail
  ffmpeg -i "$video" -ss 00:00:01.000 -vframes 1 -vf "scale=1080:-1" "$THUMBNAIL_DIR/${filename}.jpg"
done
