module Refinerycms
  module PageSeeder

    class Seeder

      # Create a page if it does not already exist
      def self.create_page(name, options=nil)
        unless ::Refinery::Page.find_by_title(name)
          options ||= {}
          options.merge!(:title => name)
          page = ::Refinery::Page.create(options)

          ::Refinery::Pages.config.default_parts.each do |default_page_part|
            page.parts.create(:title => default_page_part, :body => nil)
          end

          page
        end
      end

      # Create a parent page with an array of children (optional)
      def self.create_parent_and_children(parent_name, children_names=nil)
        unless ::Refinery::Page.find_by_title(parent_name)
          parent_page = ::Refinery::Page.create(:title => parent_name)

          ::Refinery::Pages.config.default_parts.each do |default_page_part|
            parent_page.parts.create(:title => default_page_part, :body => nil)
          end

          if children_names.present?
            children_names.each do |child|
              unless ::Refinery::Page.find_by_title(child)
                child_page = parent_page.children.create(:title => child)

                ::Refinery::Pages.config.default_parts.each do |default_page_part|
                  child_page.parts.create(:title => default_page_part, :body => nil)
                end
              end
            end
          end
        end
      end
    end
  end
end