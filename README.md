# jekyll-get-data-json

> 💎 Import remote JSON data into the data for a Jekyll site

> This version uses the `_data` folder so that you can more freely manage without having to restart jekyll
## Installation

1. Use `bundle add jekyll-get-data-json` to add this to your site's Gemfile.
2. Add this plugin to the `plugins` listed in your `_config.yml` file. For example:
    ```
    plugins:
      - jekyll-get-data-json
    ```
Or you can download the [converter.rb](https://raw.githubusercontent.com/maling-it/jekyll-get-data-json/master/lib/jekyll-get-json/converter.rb) file and put it in the _plugins . folder
## Usage

Create a `getjson.yml` file inside your `_data` folder. This section should be an object array containing the `data` and `json` properties:
* The `data` property specifies where in the `site.data` you would like to put this data.
* The `json` property is the remote URL of the JSON file.

To illustrate an example, assuming that you have a remote JSON file at `https://example.com/data.json` containing this:
```
{
  "bar": "Success!"
}
```
And you put the following into your `getjson.yml` file:
```
  - data: foo
    json: 'https://example.com/data.json'
```
Then in your Jekyll site you will be able to use:
```
{{ site.data.foo.bar }}
```
And you will see:
```
Success!
```

## Credit

This plugin is basically a more limited version of [jekyll-get](https://github.com/18F/jekyll-get), duplicated here purely for the purposes of making it a Ruby gem.

This plugin is basically another version of [jekyll-get-json](https://github.com/brockfanning/jekyll-get-json), duplicated here purely for better usage purposes.
