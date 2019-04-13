
# GEM

* Each gem has a name, version and platform
* Gems contain the following:
        1. Code (Including tests and supporting code utilities)
        2. Documentation
        3. gemspec (specification file)
* Each gem follows the same standard structure of code organisation as given below: (This is for the gem Freewill.)

```
% tree freewill
freewill/
├── bin/
│   └── freewill
├── lib/
│   └── freewill.rb
├── test/
│   └── test_freewill.rb
├── README
├── Rakefile
└── freewill.gemspec

```

* The lib directory contains the code for the gem
* The test or spec directory contains tests, depending on which test framework the developer uses
* A gem usually has a Rakefile, which the rake program uses to automate tests, generate code, and perform other tasks.
* This gem also includes an executable file in the bin directory, which will be loaded into the user’s PATH when the gem is installed.
* Documentation is usually included in the README and inline with the code. When you install a gem, documentation is generated automatically for you. Most gems include RDoc documentation, but some use YARD docs instead.
* The final piece is the gemspec.

## GEMSPEC

 * contains information about the gem such as its name, version, description, authors and homepage.
 * The gem’s files, test information, platform, version number and more are all laid out here along with the author’s email and name.

## Additional information

 * [More information on gemspec](https://guides.rubygems.org/specification-reference/)

 * [Making your own gem](https://guides.rubygems.org/make-your-own-gem/)
