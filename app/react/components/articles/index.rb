require 'reactive-router'

module Components
  module Articles
    class Index < React::Component::Base
      
      #include React::Router
            
      def render
        div.container do
          
          @articles = Article.all
          
          h1 { "Articles (#{@articles.count})" }
          
          a(href: '/articles/new', class: 'btn btn-primary') do
            'New Article'
          end
          
          br
          
          table.table do
            tr do
              'Title'.th
              'Short Title'.th
              'Synopsis'.th
              th {}
            end
            
            @articles.each do |a|
              tr do
                a.title.td
                a.title_short.td
                a.synopsis.td
                td do
                  a(href: "/articles/#{a.id}/edit", class: '') do
                    'Edit'
                  end
                end                
              end
            end
            
          end
          
        end
      end
      
    end
  end
end
