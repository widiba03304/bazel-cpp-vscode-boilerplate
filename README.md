# Bazel C++ VSCode Boilerplate
This repo contains useful configurations when you write a C++ code in vscode with bazel.

## VSCode Extensions
This recommends to install following extensions, which are also listed in `.vscode/extensions.json`:
- Remote Container
- Bazel
- C++ Extension Pack
- Clang-format
- Docker

## Requirements
1. Specify the name of the project.
  - `name` field in `.devcontainer/.devcontainer.json`
  - `name` in `WORKSPACE`

2. Choose the C++ standard version.
  - `-std=` in `.bazelrc`

3. Choose the format style.
  - `BasedOnStyle` field in `.clang-format`

4. (optional) Disable `--gpus` if the project does not require CUDA support.
  - Remove `runArgs: ...` in `.devcontainer/.devcontainer.json`

5. Revise `Dockerfile` with respect to your project.

# Usage
- Run `Dev Containers: Reopen in Container` in VSCode.
- `.vscode/tasks.json` and `.vscode/launch.json` specifies the bazel build pipelines 