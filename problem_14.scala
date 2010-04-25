def pathLength(num: Long, count: Int):Int = {
  if (num == 1) return count
  else if (num%2 == 0) pathLength(num/2, count + 1)
  else  pathLength(num*3 + 1, count + 1)
}

var maxPathLength: Long = 0
var maxPathStart: Long = 1

for (i:Int <- 1 to 1000000) {
   val length:Long = pathLength(i, 1)
   if(length > maxPathLength) {
     maxPathLength = length
     maxPathStart = i
   }
}

println(maxPathStart)

