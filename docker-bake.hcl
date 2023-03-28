group "default" {
  targets = [
    "ci-buildx-checker-amd64",
    "ci-buildx-checker-arm64"
  ]
}

target "ci-buildx-checker-amd64" {
  dockerfile = "Dockerfile"
  args = {
    S6_ARCH = "amd64"
  }
  platforms = ["linux/amd64"]
  tags = ["ci-buildx-checker:amd64"]
}


target "ci-buildx-checker-arm64" {
  dockerfile = "Dockerfile"
  args = {
    S6_ARCH = "aarch64"
  }
  tags = ["ci-buildx-checker:arm64"]
  platforms = ["linux/arm64"]
}

