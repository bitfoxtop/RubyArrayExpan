class Array
    def reduceByKey
        if block_given?
            group_by {|x| x[0]}.map {|x,y| y.reduce {|x,y| [ x[0], yield(x[1],y[1]) ]}}
        else
            raise "no block given"
        end
    end

    def mapValues
        if block_given?
            map {|x| [ x[0], yield(x[1]) ]}
        else
            raise "no block given"
        end
    end

    def countByKey
        group_by {|x| x[0]}.map {|x,y| [x,y.size]}
    end

    def groupByKey
        group_by {|x| x[0]}
    end

    def sortByKey(ascending=true)
        if ascending == false
            sort {|x,y| y[0] <=> x[0]}
        else
            sort {|x,y| x[0] <=> y[0]}
        end
    end

    def fold(a)
        if block_given?
            dup.unshift(a).reduce {|x,y| yield(x,y)}
        else
            raise "no block given"
        end
    end
end
