# P'log

What I'm trying to do here is set up a minimalistic blogging
platform, and learn a bit of practically-oriented Prolog in
the process. I'm leaning pretty heavily on 
[Annie Ogborn's tutorial](http://www.pathwayslms.com/swipltuts/html/index.html)
at this point. 

I really dislike doing any composition in the browser, and so
what I'm after here is just a system that will take a directory
of markdown files, and a table of contents file in a nice, simple
syntax of its own, and take care of beautifying and serving the
documents from there. Posting to the blog will just be done through
SSH. I don't see any need to complicate that any further. 

Maybe I'll figure out a neat way of integrating comments, etc., 
in the future. 

## Dependencies
[Raivo Laanemets' Markdown Pack, for SWI Prolog](http://packs.rlaanemets.com/markdown/markdown-0.0.2.tgz)

Install this with
```
:- pack_install('http://packs.rlaanemets.com/markdown/markdown-0.0.2.tgz').
```
from your `swipl` REPL.

## Getting Started

### Example Files

In order for anything to actually work, however, you need to first
provide the blog with some content. The fastest way to get started
on this is just to
```
cp -rv content.example/ content/
```
And then make whatever changes you see fit. 

### To Run

To serve on port 8000, run:

```
$ swipl plog.prolog

:- server(8000). 
```

## Structure 

Blog posts go in `content/posts`, and should be in [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) format. Information pages that aren't exactly *posts*, like the GPL  license document, or the "about this blog" page, go in `content/info`.  

Metadata for each post goes in a YAML header, like the following:

```
---
title: This Is the Title of the Post
author: Name of the Author
date: Post date (can be post-dated)
tags: [list, however, many, tags, you_like]
abstract: Summarize the post here. This information is used to generate the table of contents on the home page, and the RSS feed, accessible at /feed.
---
```

Tags are taken to form a [partially ordered](http://mathworld.wolfram.com/PartialOrder.html) set, whose `<` relation can be specified in the file `content/tag_order.prolog`, using the `super/2` predicate. `super(mammal, horse).`, for example, will tell P'log that entries on horses should _also_ be considered to be entries on mammals, so that a search for the tag `MAMMAL` will turn up entries tagged `HORSE` as well. (Note: tags are capitalized for display, for aesthetic reasons,
but internally, they are case sensitive Prolog atoms, and should generally be left in lowercase, or else surrounded in single quotes, as long as you're consistent.) 

The reflexive, transitive, and antisymmetric relation that defines the partially ordered tag set (i.e, the `<=`) will be derived from this relation, with the additional assumption that each tag is equal to itself, but not to any other tag. **DO NOT** allow there to be any cycles in the `super/2` relation. P'log isn't clever enough, or industrious enough, to  check for those for you, and will just spin out into an infinite loop as it tries to structure your tag hierarchy. Be kind to P'log, and avoid cycles.

In the future, I might introduce a way of searching for combinations of tags, using standard lattice operations, but I'll cross that bridge when I come to it. 

The CSS files should go in `content/css`. Use the examples given as a template, and work from there, until things look the way you'd like. 

The `favicon.ico` can be found in `content/img`, which is where any images linked to from your posts should also be stored. The links should be like so:

```
![look at this mindflayer](/content/img/mindflayer.gif)
```

Metadata for your blog should go in `content/about.prolog`. The syntax used there should be fairly self-explanatory. 

If you would like to proxy to the P'log server through Nginx, you can add the following lines to your website's entry in `/etc/nginx/sites-available`, making whatever adjustments you see fit:
```
    location / {
        try_files $uri @upstream;
    }

    # proxy through to the p'log server
    location @upstream {

        # Disables HEAD requests to the site.
        # SWI-Prolog currently does not support
        # head requests very well.

        if ($request_method = HEAD) {
            return 405;
        }
        
        proxy_pass http://127.0.0.1:8000;
        # or whatever port you're using
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $http_host;
        proxy_set_header X-Nginx-Proxy true;
        proxy_redirect off;
    }

```

## Git Layout

It's expected that you will be running P'log from the directory into which you have cloned its git repository, and that the data that makes up the meat of your blog will live in its own git repo, under `./content/`. This isn't strictly necessary, but it's a good way to go about doing things. 

