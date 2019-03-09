load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

def _rule_dependencies():
    go_rules_dependencies()
    go_register_toolchains(nogo = "@//:nogo")

def monopoly_dependencies():
    """Defines dependencies for monopoly.
    """
    _rule_dependencies()
