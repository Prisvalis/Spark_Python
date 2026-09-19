## Spark Python Template

This repository provides a minimal **Python** project template for running **Apache Spark** jobs.

## Prerequisites

* **Python 3.9+**
* **uv** – a fast Python package manager and virtual‑environment tool.
  Install it following the instructions at https://github.com/astral-sh/uv.

## Project layout

```
pyproject.toml   # uv project definition, declares pyspark dependency
setup.sh         # helper script that runs `uv sync` to create the env
run_spark.py     # a tiny Spark example that prints a DataFrame
```

## Getting started

1. **Install uv** (if you haven't already):

	```bash
	# macOS / Linux – use the installer script
	curl -LsSf https://astral.sh/uv/install.sh | sh
	```

	On Windows you can download the binary from the GitHub releases page.

2. **Create the virtual environment and install dependencies**:

	```bash
	./setup.sh
	```

	The script runs `uv sync`, which reads `pyproject.toml` and installs **pyspark** into a `.venv` directory.

3. **Run the example Spark job**:

	```bash
	uv run python run_spark.py
	```

	You should see a Spark session start and a small table printed.

## Customising the template

Add your own Spark jobs by creating additional `.py` files and importing `pyspark`. The `pyproject.toml` can be extended with more dependencies as needed.

---

Happy coding!