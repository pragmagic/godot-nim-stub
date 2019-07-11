Stub project to demonstrate usage of the [godot-nim](https://github.com/pragmagic/godot-nim) library.

Prerequisites:

1. Install [nake](https://github.com/fowlmouth/nake): `nimble install nake -n`.
2. Ensure `~/.nimble/bin` is in your PATH (On Windows: `C:\Users\<your_username>\.nimble\bin`).
3. Set `GODOT_BIN` environment varible to point to Godot executable (requires Godot 3.0 changeset [b759d14](https://github.com/godotengine/godot/commit/b759d1416f574e5b642413edd623b04f2a1d20ad) or newer).
4. Install godot-nim: `nimble install godot`

Run `nake build` in any directory within the project to compile for the current platform.

If you encounter any errors, try removing the .nimcache folder, the _godotapi folder and the nakefile executable and run `nake build` again.

```sh
rm -rf .nimcache\
rm -rf _godotapi\
rm -f nakefile nakefile.{exe,ilk,pdb}
```