# Imagine website

## Instalation:

```
gem install jekyll bundler
pip install bibble
```

On mac you might need to update ruby first
```
brew install ruby
```

## To start the site:
```
make
make serve
```
You can use this to test that everyting is working properly on your local machine (visit http://localhost:5000), then you can use the next step to deploy to the server

## To deploy the site:

```
make deploy
```
Deployment uses the [Makefile](https://github.com/john-guerra/imagine/blob/53d43440b61b780dce3a7bbc5a982b60866295d0/Makefile#L32) configuration, which you might need to change to your username


## Usage

* To add/modify people change the [people.yml](_data/people.yml) file
* To add/modify projects, create/change the files on [\_projects](_projects/)
* To add/modify news, create/change the files on [\_posts](_posts/)

See below for examples

# Projects examples

### Big Project

```
---
title: Big Project

description: |
  This project has a lot of people working on it!!
  It also has some `Mark` _down_

research_area: Image Processing

people:
  - storm
  - profx
  - grad-a
  - grad-b
  - grad-c
  - grad-d
  - scott
  - wolverine
  - ugrad-a
  - ugrad-b
  - ugrad-c
  - ugrad-d

layout: project
---

## A Header

Proin massa augue, eleifend non ultricies eget, feugiat ut nisl. Fusce at
aliquet justo, id elementum lacus. Praesent eleifend tempus molestie. Nunc
vulputate sed tortor a ultrices. Nullam blandit hendrerit nisi, at suscipit
augue ultricies quis. Nulla tincidunt rhoncus nisl sed consectetur. Phasellus
dapibus, `leo` in varius tempus, nibh velit tincidunt lacus, ut porta eros ex et
eros. Ut diam purus, sagittis vitae cursus eu, molestie eget turpis. Sed
consectetur magna in posuere faucibus. Morbi nibh eros, blandit ut vehicula ac,
pellentesque ut urna.
```

### Logo project
```---
title: Logo Project

notitle: true

description: |
  This project has a sweet logo!

research_area: Image Processing

people:
  - storm
  - grad-b
  - ugrad-c

layout: project
image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Xmencomic-logo.svg/2000px-Xmencomic-logo.svg.png"
last-updated: 2017-04-11
---

Some preliminary text.

## header

Maecenas _scelerisque ut enim non convallis_. Mauris ut nisl vitae mi dictum
mollis. Pellentesque iaculis lacinia nisl viverra laoreet. Integer ac lacus quis
elit varius mollis et ultrices tortor. Aliquam id dolor cursus, sagittis arcu
tincidunt, scelerisque nisi. Morbi scelerisque feugiat mi in faucibus. Maecenas
suscipit aliquet est et efficitur. Nullam sed purus nec nulla placerat ultrices
ac at ipsum. Mauris a imperdiet eros.
```

### Longer Project
```
---
title: Project with a Longer Title
subtitle: And a subtitle

description: |
  This project has a long title, but no other content.
  Setting the `no-link` property means that there's no link.

people:
  - storm
  - profx
  - grad-b
  - scott
  - wolverine

research_area: Image Processing

layout: project
no-link: true
last-updated: 2016-11-11
---
```

### Inactive project
```
---
title: Short Inactive Project
status: inactive

description: |
  This project is quite brief: it only has a description and an external link.
  It's inactive so it should only appear on the "Research" page.

people:
  - storm
  - grad-e
  - collab-a

research_area: Image Processing

layout: project
link: "https://en.wikipedia.org/wiki/X-Men"
---

```

# Posts

For creating new posts for the news section write a new file on the [_posts] folder, for the file name using Year-Month-Day-title.md

Examples:

### A Full Blog Post
```
---
layout: post
title: "A Full Blog Post"
icon: star-o
---

Unlike a short news post, a blog post has its own page and lots of text. Text text text.

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
```

### Short notice
```
---
layout: post
shortnews: true
icon: newspaper-o
---

This is a short notice of something that happened recently. Just a news update blurb in no great detail.
```



Research Group Web Site Template
================================

This is a [Jekyll][]-based Web site intended for research groups. Your group should be able to get up and running with minimal fuss.

<p align="center">
<img src="screenshot.png" width="387" height="225" alt="screenshot of the template">
</p>

This project originated at the University of Washington.  You can see the machinery working live at [our site][sampa].

This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License][license].

[sampa]: http://sampa.cs.washington.edu/
[license]: https://creativecommons.org/licenses/by-nc/4.0/


Features
--------

* Thanks to [Jekyll][], content is just text files. So even faculty should be able to figure it out.
* Publications list generated from BibTeX.
* Personnel list. Organize your professors, students, staff, and alumni.
* Combined news stream and blog posts.
* Easily extensible navigation bar.
* Responsive (mobile-ready) design based on [Bootstrap][].

[Bootstrap]: http://getbootstrap.com/


Setup
-----

1. Install the dependencies. You will need [Python][], [bibble][] (`pip install bibble`), and [Jekyll][] (`gem install jekyll`).
2. [Fork][] this repository on GitHub.
3. Clone the fork to your own machine: `git clone git@github.com:yourgroup/research-group-web.git`.
4. Add an "upstream" remote for the original repository so you can stay abreast of bugfixes: `git remote add upstream git://github.com/uwsampa/research-group-web.git`.
5. Customize. Start with the `_config.yml` file, where you enter the name of the site and its URL.
6. Type `make` to build the site and then run `make serve` to view your site.
7. Keep adding content. See below for instructions for each of the various sections.
8. Periodically pull from the upstream repository: `git pull upstream master`.

[Python]: https://www.python.org/
[Fork]: https://github.com/uwsampa/research-group-web/fork


Publication List
----------------

The list of publications is in `bib/pubs.bib`. Typing `make` will generate `pubs.html`, which contains a pretty, sorted HTML-formatted list of papers. The public page, `publications.html`, also has a link to download the original BibTeX.


News Items and Blog Posts
-------------------------

For both long-form blog posts and short news updates, we use Jekyll's blogging system. To post a new item of either type, you create a file in the `_posts` directory using the naming convention `YYYY-MM-DD-title-for-url.md`. The date part of the filename always matters; the title part is currently only used for full blog posts (but is still required for news updates).

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

You can also customize the icon that is displayed on the news feed. By default it's `newspaper-o`. We use icons from the [FontAwesome][fa] icon set.

[yfm]: http://jekyllrb.com/docs/frontmatter/
[fa]: http://fontawesome.io/icons/

Projects
--------

To create a project, just create a markdown file in the `_projects` folder. Here are the things you can put in the YAML frontmatter:

- `title:` The project title.
- `notitle:` Set this to `true` if you don't want a title displayed on the project card. Optional.
- `description:` The text shown in the project card. It supports markdown.
- `people:` The people working on the project. This is a list of keys from the `_data/people.yml` file.
- `layout: project` This sets the layout of the actual project page. It should be set to `project`.
- `image:` The URL of an image for the project. This is shown on both the project page and the project card. Optional.
- `last-updated:` Date in the format of `YYYY-MM-DD`. The project cards are sorted by this, most recent first.
- `status: inactive` Set this to `inactive` if don't want the project to appear on the front page. Just ignore it otherwise.
- `link:` Set this to an external URL if this project has a page somewhere else on the web. If you don't have a `link:`, then the content of this markdown file (below the YAML frontmatter) will be this project's page.
- `no-link: true` Set this if you just don't want a project page for your project.

Personnel
---------

People are listed in a [YAML][] file in `_data/people.yml`. You can list the name, link, bio, and role of each person. Roles (e.g., "Faculty", "Staff", and "Students") are defined in `_config.yml`.

[YAML]: https://en.wikipedia.org/wiki/YAML


Building
--------

The requirements for building the site are:

* [Jekyll][]: run `gem install jekyll`
* [bibble][]: available on `pip`
* ssh and rsync, only if you want to deploy directly.

`make` compiles the bibliography and the website content to the `_site`
directory. To preview the site, run `jekyll serve`` and head to
http://0.0.0.0:5000.


Deploying to Your Sever
-----------------------

To set up deployments, edit the Makefile and look for the lines where `HOST` and `DIR` are defined. Change these to the host where your HTML files should be copied to.

To upload a new version of the site via rsync over ssh, type `make deploy`. A web hook does this automatically when you push to GitHub. Be aware that the Makefile is configured to have rsync delete stray files from the destination directory.

[Jekyll]: http://jekyllrb.com/
[bibble]: https://github.com/sampsyo/bibble/
