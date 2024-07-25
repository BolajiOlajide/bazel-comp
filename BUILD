load("//:my_custom_build_rule.bzl", "build_with_my_custom_rule")
load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library", "go_test")

# custom rule
build_with_my_custom_rule(
    name="build_me",
    my_custom_string = "This is my custom string",
)

go_binary(
    name = "hello",
    srcs = ["main.go"],
    deps = [":greeter"],
)

go_library(
    name = "greeter",
    importpath = "github.com/BolajiOlajide/bazel-comp/greeter",
    srcs = ["greeter/greeter.go"],
)

go_test(
    name = "greeter_test",
    srcs = [ "greeter/greeter_test.go" ],
    embed = [ ":greeter" ]
)