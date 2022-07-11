# Yale CS DSAC

DSAC is the Computer Science Departmental Student Advisory Committee. The committee's primary task is to represent Yale CS students to the faculty and administration, meeting with the Director of Undegraduate Studies and Department Chair several times a year.

This repository contains the jekyll source for the [DSAC Website](https://zoo.cs.yale.edu/dsac), including the `/Docs` knowledgebase.

## Deploy Steps

This assumes you are building on the Zoo. Ruby and gem are installed on the Zoo, version 3.1.2 at time of writing.

```bash
# install bundler
gem install bundler --user-install

# clone the project
git clone https://github.com/Redorhcs/cs-dsac-website.git
cd jekyll-doc-theme

# install dependencies
bundle config set --local path 'vendor/bundle'
bundle install

# update config file
sh ./scripts/fix_yale_file.sh

# run jekyll with dependencies
bundle exec jekyll serve

# copy files to dsac html directory

```

### Theme Assets

As of the move to support [Github Pages](https://pages.github.com/) alongside the Zoo, a number of files have been relocated to the `/asset` folder.
- css/
- fonts/
- img/
- js/
- 404.html
- allposts.html
- search.json


**Gemfile**
```
# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
gem "github-pages", group: :jekyll_plugins
```

### Theme Assets

Files from your project will override any theme file with the same name.  For example, the most comment use case for this, would be to modify your sites theme or colors.   To do this, the following steps should be taken:

1) Copy the contents of the `Redorhcs/cs-dsac-website/asset/css/main.scss` to your own project (maintaining folder structure)
2) Modify the variables you wish to use prior to the import statements, for example:

```
// Bootstrap variable overrides
$grid-gutter-width: 30px !default;
$container-desktop: (900px + $grid-gutter-width) !default;
$container-large-desktop: (900px + $grid-gutter-width) !default;

@import // Original import statement
  {% if site.bootwatch %}
    "bootswatch/{{site.bootwatch | downcase}}/variables",
  {% endif %}

  "bootstrap",

  {% if site.bootwatch %}
    "bootswatch/{{site.bootwatch | downcase}}/bootswatch",
  {% endif %}

  "syntax-highlighting",
  "typeahead",
  "jekyll-doc-theme"
;

// More custom overrides.
```

3) Import or override any other theme styles after the standard imports


## License

Released under [the MIT license](LICENSE).
