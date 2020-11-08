# libdebug

Exposes a single `void breakpoint()` function that triggers an `int 3` and `SIGTRAP` on linux.

Useful for debugging scripting languages that can call a library, eg vimscript:

```vim
echom getpid()
call getchar() " Allows vim/neovim to wait while you `attach pid` gdb here.

echom "Before breakpoint"
call libcall('...path/to/libdebug.so', 'breakpoint', [])
echom "After breakpoint"
```
