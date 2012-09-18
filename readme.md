# Refinery CMS Page Seeder

Simple helper class to make our lives a bit easier when we want to seed pages. The generated pages are blank, based on the default parts as specified by RefineryCMS. Depends on the RefineryCMS pages engine:

+ Pages - https://github.com/resolve/refinerycms-pages

This version of `refinerycms-page_seeder` supports Rails 3.0.x. and upwards.

## Requirements

Refinery CMS version 2.0.x.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-page_seeder', '~> 0.0.1'

Now, run:

    bundle install

## Usage

Create a page:

    Refinerycms::PageSeeder::Seeder.create_page('Home', :deletable => false, :link_url => "/")

If you would like to specify content for the page, you can do like so:

    Refinerycms::PageSeeder::Seeder.create_page('Hello World', :parts => [Refinery::PagePart.new({:title => "Body", :body => "<p>Hello world!</p>"})])

You can create a parent page, along with children pages. Pass the child page names through as an array of strings.

    Refinerycms::PageSeeder::Seeder.create_parent_and_children('About Us', ['History', 'Vision'])

