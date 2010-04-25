import io.Source
import java.math.BigInteger

val source = Source.fromFile("problem_13.txt")
var list = source.getLines.map{s => new BigInt(new BigInteger(s.trim))}
println(list.reduceLeft(_ + _).toString.substring(0,10))
