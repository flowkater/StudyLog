import org.scalacheck.Properties
import org.scalacheck.Prop.{forAll, BooleanOperators}
import main.scala.p36

object StringSpecification extends Properties("String") {
  property("Problem 36 test") = forAll ((n: Int) => (872187.0 == p36.p(1000000)))  
}