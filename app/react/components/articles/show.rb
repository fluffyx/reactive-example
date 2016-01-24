module Components
  module Articles
    class Show
      
      # Commented out because I haven't got routing set up right
      
      #include React::Router
      #
      #routes(path: '/') do
      #  route(path: "index", name: "Index", handler: Components::Articles::Index)
      #  route(path: "new", name: "New", handler: Components::Articles::New)
      #end
      
      def show
        div do
          #link(to: "Index", class: "btn btn-default") { "Index" }
          #link(to: "New", class: "btn btn-default") { "New" }
          #
          #route_handler
        end
      end
      
    end
  end
end
