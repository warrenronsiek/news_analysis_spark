name := "scala_news"

version := "1.0"

scalaVersion := "2.10.6"

libraryDependencies ++= Seq(
  "org.apache.spark" % "spark-core_2.10" % "2.1.0",
  "org.apache.spark" % "spark-sql_2.10" % "2.1.0",
  "com.databricks" % "spark-csv_2.10" % "1.5.0",
  "org.apache.spark" % "spark-mllib_2.10" % "2.1.0"
)

libraryDependencies += "edu.stanford.nlp" % "stanford-corenlp" % "3.7.0" withSources() withJavadoc()
libraryDependencies += "edu.stanford.nlp" % "stanford-corenlp" % "3.7.0" classifier "models"