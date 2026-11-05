# RSMP Traffic Light SXL Agent Guide

This repository contains the official RSMP SXL for Traffic Light Controllers.

## Where Things Live

- `source/` contains the Sphinx specification source.
- `schema/` contains JSON/YAML schema and SXL message definitions.
- `test/schema/` contains schema validation tests.
- `build/` contains generated Sphinx output. Do not edit it directly.

## Commands

- `make html` builds the HTML documentation.
- `make singlehtml` builds the single-page HTML documentation.
- `make latexpdf` builds the PDF documentation.
- `rsmp schema generate --in schema/sxl.yaml --out schema` regenerates JSON Schema files from the SXL YAML when the `rsmp` CLI is available.
- `bundle exec sus test/schema` runs schema validation tests.
- `bundle exec rubocop` checks Ruby style.

If working from this workspace with the sibling `rsmp` repo instead of an installed `rsmp` CLI, run:

```sh
cd ../rsmp
bundle exec exe/rsmp schema generate --in ../rsmp_sxl_traffic_lights/schema/sxl.yaml --out ../rsmp_sxl_traffic_lights/schema
```

## Editing Guidance

- Keep prose in `source/` and machine-readable definitions in `schema/` consistent.
- When changing alarms, statuses, or commands, update `schema/sxl.yaml`, regenerate the JSON Schema files, and update related examples and tests.
- Treat generated `.png` files from message sequence charts and SVGs as build artifacts unless the task specifically requires them.
- Follow existing reStructuredText, JSON schema, and Ruby test patterns.
