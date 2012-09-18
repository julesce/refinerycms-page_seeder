# Refinery CMS Page Seeder

Simple helper class to make life a bit easier when seeding RefineryCMS pages. Depends on the RefineryCMS Pages engine:

+ Pages - https://github.com/resolve/refinerycms-pages

This version of `refinerycms-page_seeder` supports Rails 3.0.x. and upwards.

## Requirements

Refinery CMS version 2.0.x.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-page_seeder', '~> 0.0.1'

Now, run:

    bundle install

## Note

The generated pages are blank, based on the default page parts as specified by Refinery. The seeder will not overwrite existing pages (matched by page title).

## Usage

Create a page:

    Refinerycms::PageSeeder::Seeder.create_page('Home', :deletable => false, :link_url => "/")

You can create a parent page, along with children pages. Pass the child page names through as an array of strings.

    Refinerycms::PageSeeder::Seeder.create_parent_and_children('About Us', ['History', 'Vision'])

