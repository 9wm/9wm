# 9wm

9wm is an X11 window manager. It's inspired by the Plan 9 window manager 8½, also known as [rio].

- Simple and clean user interface. It is click-to-type.
- It uses the X11 font system (which, unfortunately, means no Unicode support).
- No virtual desktops, customization, key bindings, EWMH support, or compositing.
- It does not allocate any colors (if you disable COLOR), which will be great news if you are stuck in 1993.

It is a great place to start if you are interested in writing a window manager from scratch: many folks have done exactly this.

`9wm` is distributed under [an MIT License](LICENSE.md).

# Install

The latest version of 9wm is held at: <https://github.com/9wm/9wm>

You'll need `make`, an ANSI c compiler, `mkdir`, `cp`, `libX11` and `libXext` to build and install `9wm`. 
In order to do so, run the following command:

```
root # make install
```
You can launch `9wm` through a display manager like [lightdm] or via `startx` directly.

To use `startx`, you'll need to include the following line at the end of your `.xinitrc`:

```sh
exec 9wm # ... options
```

# Usage

You can right-click anywhere other than the focused window — including in any non-focused window — to bring up a menu. 

All further actions are done with the right mouse button. The menu has options for:

- **_New_** launchs a new terminal (default xterm)
- **_Reshape_** resizes the focused window
- **_Move_** drags the focused window around
- **_Delete_** kills (close) the focused window
- **_Hide_** hides (iconify) the focused window
    - Beneath the first 5 items are a list of all hidden windows.

Left-click a non-focused window (white border) to focus it. If you didn't overwrite the -active option, the new focused window should have a black border.

Middle-click anywhere other than the focused window to run "9wm-mm". It's up to you to write an "9wm-mm" program and put it in your path somewhere, if you want to use this for something. I have mine run "google-chrome-stable --show-app-list".

# Help

`9wm` has an extensive man page you can consult for more information:

```
$ man 9wm
```

# Bugs

Find a bug? Please, submit it to [issues]. If you can fix it, submit the fix as a pull request.

### Known Problems/Bugs

9wm uses ideas from Plan 9's `rio`,
but is following a different path and is not exactly the same.

In an attempt to avoid ludicrously long window names in the menu,
9wm shortens names with colons and dashes in them.
The algorithm works well for most programs I've tried,
but is bound to fail with something or other,
rendering a near-useless icon name.

Windows that provide their own placement information aren't handled well right now.
I'm working on it.

9wm has no idea how many monitors you have,
nor what their dimensions are.
It also can't deal with desktop geometry changes,
like plugging in an external monitor.
I run "9wm restart" to make it quickly reset its internal state and notice any changes.

9wm doesn't have Unicode support.
In particular, if you have a browser page open with non-Latin characters in the name,
and you hide that window,
you will get a weird name for that window's entry in the list.
Doing Unicode in X11 is a horrible mess requiring,
among other things, a whole new library for rendering text.
I may get to this in the future, but for now,
I feel like learning about Wayland is a better use of my effort.

Lack of EWMH means some applications (especially games) will break when 
trying to go fullscreen.


# Authors

See the [CREDITS.md](CREDITS.md) for a full list of everybody who's helped.

* 9wm is maintained by Jacob Adams <tookmund@gmail.com>
* 9wm was maintained by Neale Pickett <neale@woozle.org>

9wm was originally written by David Hogan <dhog@cs.su.oz.au>, a postgraduate student at the [Basser Department of Computer Science, University of Sydney](http://unauthorised.org/dhog/index.html). He passed away in 2003.

[lightdm]: https://wiki.archlinux.org/title/LightDM
[rio]: https://en.wikipedia.org/wiki/Rio_(windowing_system)
[AUR]: https://aur.archlinux.org/packages/9wm
[make]: https://www.gnu.org/software/make
[issues]: https://github.com/9wm/9wm/issues
