load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "downloaded-python",
    url = "https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz",
    strip_prefix = "Python-3.9.10",
    build_file = "//:BUILD.my_downloaded_python",
    integrity = "sha256-GqnAcC7bro9qLJX3CknahCCqp2t4idNBnBhr/IwOVx4="
)

http_archive(
    name = "rules_python",
    sha256 = "778aaeab3e6cfd56d681c89f5c10d7ad6bf8d2f1a72de9de55b23081b2d31618",
    strip_prefix = "rules_python-0.34.0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.34.0/rules_python-0.34.0.tar.gz",
)

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()
