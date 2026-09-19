#!/usr/bin/env python

"""Simple Spark example.

Run with:
    uv run python run_spark.py
"""

from pyspark.sql import SparkSession

def main() -> None:
    spark = SparkSession.builder \
        .appName("SimpleExample") \
        .getOrCreate()

    # Create a DataFrame with sample data
    data = [(1, "Alice"), (2, "Bob"), (3, "Charlie")]
    df = spark.createDataFrame(data, ["id", "name"]) 
    df.show()

    spark.stop()

if __name__ == "__main__":
    main()
