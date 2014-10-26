# Discover Meteor Static

This is a [Middleman](http://middlemanapp.com) static site generator wrapper for the [Discover Meteor](https://www.discovermeteor.com) book's Markdown sources. 

It takes the Markdown sources in any language and generates a static HTML site from them.

### Instructions

Clone this repo:

`git clone git@github.com:DiscoverMeteor/DiscoverMeteorStatic.git`

Then install Middleman and the other required gems:

`bundle install`

Initialize Git submodules:

`git submodule init`

Update them:

`git submodule foreach git pull origin master`

Then run with:

`middleman`

### Managing Languages

This repo uses one [git submodule](http://git-scm.com/book/en/Git-Tools-Submodules) per language. Please take care not to commit any translations sources as part of this repo itself.

### Switching Language

Middleman can only generate files for a single language at a time. It will look for a `LANG` environment variable, but if it can't find it it will fall back to a default language, as specificed in line 6 of `config.rb`:

`LANG = ENV['LANG'] || 'fr'`

We recommend using that environment variable if you can. Otherwise, the easiest way to change your local language is simply to change this hardcoded string, and then restart Middleman. 

### Troubleshooting

In some cases, the `README.md` file included with each language's repo can trigger a Middleman error, because it lacks the proper formatting. Simply delete it to get rid of the error (but don't commit the deletion!).

### Deploying

Pushing a commit to this repo will automatically redeploy all translation instances ([see full list](https://www.discovermeteor.com/translations)).

Here's the full process, step by step:

1. Update a language's translation. 
2. Commit your changes and push them to the GitHub repo (for example, [DiscoverMeteor_Es](https://github.com/DiscoverMeteor/DiscoverMeteor_Es)).
3. Go to your local copy of the `DiscoverMeteorStatic` repo.
4. Update all submodules (including your language's translation) with `git submodule foreach git pull origin master`.
5. Commit your changes to the submodules (with `git add -A` and `git commit -m 'updated languages'` as usual).
6. Push your changes to the `DiscoverMeteorStatic` repo.
