# Html5shivRails

Html5hivRails simply provides the [html5him.js and html5shim-printshim.js](https://github.com/aFarkas/html5shiv) libraries in a rails engine form.  

## Rails 3.1 and up

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use.  You have the option of `html5shiv.js` and `html5shiv-printshiv.js`, depending on if you need to support printing.


### Installation

Just add this to your Gemfile:

    gem 'html5shiv'

and run

    bundle install

### Usage

Since you probably only want to include this when serving IE, place it in a conditional comment in the `<head>` section in your layout:

    <!--[if lt IE 9]>
      <%= javascript_include_tag 'html5shiv-printshiv' %>
    <![endif]-->
