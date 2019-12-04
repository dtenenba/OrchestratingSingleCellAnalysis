#!/bin/bash

set -e
set -x

docker run --rm -v $(pwd):/work -w /work bioconductor/osca make knit build push log


