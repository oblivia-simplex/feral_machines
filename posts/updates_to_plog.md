---
title: "Major Updates to the P'log Platform"
author: Lucca Fraser
date: 2021-08-10
tags: [plog, blogging, obsidian]
abstract: Out with the toc.data file, in with YAML metadata headers!
---

For a long time now, one of the minor but persistent pain points in using P'log as a blogging platform is that the whole "the poster only needs to write markdown" abstraction layer breaks down when it comes to actually listing the post in the table of contents, making it available to the RSS feed, generating header information, etc. For all of that, I had to add an entry to a simple Prolog file called toc.data, which contains a list of structured terms, providing the post's author, title, abstract, date, and so on. 

[But no more](https://github.com/oblivia-simplex/plog/commit/9c71b71ea3ddf67646cd551f16079e77ca47c3f8). I've finally gotten around to something I've been putting off for years: you can now (and must now) provide that metadata in a YAML header block, in pretty much the same way you would for any of the popular Markdown-based static site generators, like Hugo, or Jekyll, or whatever. 

More importantly, at least for my own workflow, this is the same way you provide metadata for a note in [Obsidian](https://obsidian.md). I don't think I've enjoyed learning the ropes for a system this much since I first picked up Emacs. Maybe I'll say more about it at some point.

The main thing for me is that, among other things, putting together a post for this blog just became simpler. A tiny bit of grit was removed from the process. It's really just a matter of writing a note in my editor, now, and a cron-scheduled git job does the rest.

