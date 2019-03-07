load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def maybe(repo_rule, name, **kwargs):
    """Defines a repository if it does not already exist.
    """
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def monopoly_rule_repositories():
    """Defines external repositories for monopoly bazel rules.
    These repositories must be loaded before calling external.bzl%monopoly_dependencies.
    """
    maybe(
        http_archive,
        name = "com_github_bazelbuild_buildtools",
        strip_prefix = "buildtools-4bcdbd1064fcc48180fa30400e39f7a940fdb8f9",
        sha256 = "e8792ae37bfa82eb4efa3e2d93a5b4dcc43d681d13f6d00f183d2ef34a4bc828",
        urls = ["https://github.com/bazelbuild/buildtools/archive/4bcdbd1064fcc48180fa30400e39f7a940fdb8f9.zip"],
    )

    maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "301c8b39b0808c49f98895faa6aa8c92cbd605ab5ad4b6a3a652da33a1a2ba2e",
        urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.18.0/rules_go-0.18.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "3c681998538231a2d24d0c07ed5a7658cb72bfb5fd4bf9911157c0e9ac6a2687",
        urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.17.0/bazel-gazelle-0.17.0.tar.gz"],
    )
