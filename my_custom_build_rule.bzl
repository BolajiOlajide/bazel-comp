def _build_with_my_custom_rule(ctx):
    print("Our custom rule rocks!")
    print(ctx.attr.my_custom_string)
    output_file = ctx.actions.declare_file("my_output.txt")
    ctx.actions.run(
        outputs = [output_file],
        executable = ctx.executable.my_external_compiler,
        arguments = ["--version"]
    )
    return DefaultInfo(
        files = depset([output_file])
    )

build_with_my_custom_rule = rule(
    implementation = _build_with_my_custom_rule,
    attrs = {
        "my_custom_string": attr.string(),
        "my_external_compiler": attr.label(
            executable = True,
            cfg = "exec",
            allow_files = True
        )
    }
)