# Custom CI image for the Godot / C# Game component.
#
# Ships the .NET SDK plus the Godot 4.5.1 mono editor binary so the GdUnit4
# test adapter can run the suite headlessly. Same precedent as the custom
# platformio image used by the benchtest job; publish it to the same registry
# and reference it from `.gitlab-ci.yml` (image: marijnkoesen/godot-dotnet:4.5.1).
#
# Build & push (from the repo root):
#   docker build -t marijnkoesen/godot-dotnet:4.5.1 -f .docker/game-ci/Dockerfile .
#   docker push marijnkoesen/godot-dotnet:4.5.1
FROM mcr.microsoft.com/dotnet/sdk:8.0

ARG GODOT_VERSION=4.5.1

# Godot needs these shared libraries even when running headless.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl ca-certificates unzip \
        libx11-6 libxcursor1 libxinerama1 libxrandr2 libxi6 libgl1 libfontconfig1 \
    && rm -rf /var/lib/apt/lists/*

# Install the Godot mono editor binary and its bundled .NET GodotSharp assemblies.
RUN set -eux; \
    base="https://github.com/godotengine/godot/releases/download/${GODOT_VERSION}-stable"; \
    zip="Godot_v${GODOT_VERSION}-stable_mono_linux_x86_64.zip"; \
    curl -fsSL "${base}/${zip}" -o /tmp/godot.zip; \
    unzip -q /tmp/godot.zip -d /opt; \
    rm /tmp/godot.zip; \
    dir="/opt/Godot_v${GODOT_VERSION}-stable_mono_linux_x86_64"; \
    ln -s "${dir}/Godot_v${GODOT_VERSION}-stable_mono_linux.x86_64" /usr/local/bin/godot

# The GdUnit4 test adapter reads the Godot binary path from GODOT_BIN.
ENV GODOT_BIN=/usr/local/bin/godot

ENTRYPOINT []
