load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

def _rule_dependencies():
    go_rules_dependencies()
    go_register_toolchains()

def monopoly_dependencies():
    _rule_dependencies()
