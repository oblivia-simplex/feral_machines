#! /usr/bin/env python3

import frontmatter
import sys
import os

def move(src, dst):
    os.system(f'git mv "{src}" "{dst}"')
    return

def rename_post(path):
    try:
        with open(path) as f:
            post = frontmatter.load(f)
        date = post['date'].strftime('%Y-%m-%d')
        base = os.path.basename(path)
        dir = os.path.dirname(path)
        src = path
        dst = f'{dir}/{date}--{base}'
        if base.startswith(date) or not src.endswith('.md'):
            return
        ans = input(f'{date}: {src} --> {dst} [y/n?]')
        if ans == 'y':
            move(src, dst)
            ...
        else:
            print('ok, not moving')

        


    except Exception as e:
        print(f'Error processing {path}: {e}')


def rename_all(dir):
    files = next(os.walk(dir))[2]
    for f in files:
        rename_post(f'{dir}/{f}')

