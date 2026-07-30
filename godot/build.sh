docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t marijnkoesen/godot-dotnet:4.5.1 \
  -t marijnkoesen/godot-dotnet:latest \
  -f Dockerfile \
  --push .
