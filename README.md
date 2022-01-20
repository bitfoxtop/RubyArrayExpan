# RubyArrayExpan

Here I expand Ruby's Array members to support the smarter operations for map/reduce jobs.

The methods below are implemented, which are widely used in Apache Spark's RDD operations.

1. reduceByKey
2. mapValues
3. countByKey

Please see their API guide: 
https://spark.apache.org/docs/latest/rdd-programming-guide.html

Here is the ruby sample code:

    require './bitfox'

    li = [["a",1],["b",2],["a",3],["b",5],["a",4],["c",9],["a",11]]

    p li.mapValues {|s| s**2 }
    p li.reduceByKey {|x,y| x+y }
    p li.countByKey

Bitfox

