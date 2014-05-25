Sampa group website
===================

This site uses [Jekyll][] and [bibble][] to generate a static Sampa website
complete with publications, personnel, and news.


Editing
-------

Most pages are just Markdown files that you can edit directly. People are
listed in `_data/people.yml` and the news is generated from `_data/news.yml`.

Try editing directly in GitHub! It's like magic.


News Items and Blog Posts
-------------------------

For both long-form blog posts and short news updates, we use Jekyll's blogging system. To post a new item of either type, you create a file in the [_posts directory][postsdir] using the naming convention `YYYY-MM-DD-title-for-url.md`. The date part of the filename always matters; the title part is currently only used for full blog posts (but is still required for news updates).

The file must begin with [YAML front matter][yfm]. For news updates, use this:

    ---
    layout: post
    shortnews: true
    ---

For full blog posts, use this format:

    ---
    layout: post
    title:  "Some Great Title Here"
    ---

And concoct a page title for your post. The body of the post goes after the `---` in either case.

[yfm]: http://jekyllrb.com/docs/frontmatter/
[postsdir]: https://github.com/uwsampa/sampa-www/tree/master/_posts


Building and Deploying
----------------------

The requirements for building the site are:

* [Jekyll][]: run `gem install jekyll`
* [Pybtex][]: run `pip install pybtex`
* [bibble][]: included as a submodule. Because git is cruel, you need to use
  `git clone --recursive URL` or issue the commands `git submodule init ; git
  submodule update` to check out the dependency.
* ssh and rsync, only if you want to deploy directly.

`make` compiles the bibliography and the website content to the `_site`
directory. To preview the site, run `jekyll serve`` and head to
http://0.0.0.0:4000.

To upload a new version of the site via rsync over ssh, type `make deploy`. A web hook does this automatically when you push to GitHub.

If you use an alternative Python when building the bibliography, use `make
PYTHON=/path/to/python`.

[Jekyll]: http://jekyllrb.com/
[bibble]: https://github.com/sampsyo/bibble/
[pybtex]: http://pybtex.sourceforge.net
