import java.util.HashMap

val pathCounts = new HashMap[int,HashMap[int,Long]]

def pathCount(max: Int):Long = {
  val maxIndex:Int = max
  for (i <- 1 to maxIndex) {
    for (j <- 1 to maxIndex) {
      if(!pathCounts.containsKey(i)) pathCounts.put(i,new HashMap[int,Long])
      val x = pathCount(i,j)
      pathCounts.get(i).put(j,x)
    }
  }
  pathCounts.get(maxIndex).get(maxIndex)
}

def pathCount(x:Int, y:Int):Long = {
   if(y== 0 && x== 0) return 0
   if(y+x == 1) return 1
   if(pathCounts.containsKey(x) && pathCounts.get(x).containsKey(y)) return pathCounts.get(x).get(y)
   if(y==0) return pathCount(x-1, y)
   else if(x==0) return pathCount(x, y-1)
   else return pathCount(x-1, y) + pathCount(x, y-1)
}

println(pathCount(20))
