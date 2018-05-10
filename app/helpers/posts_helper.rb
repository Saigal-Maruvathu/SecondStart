module PostsHelper
    
    def center_array
        arr = []
        Center.all.each do |center|
           arr.push([ center.name, center.id ])
        end
        return arr
    end
end
