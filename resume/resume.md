# Resume

LaTeX resume with per-role content files. See `resume/` for source.

## Structure

```
resume/
├── main.tex              # Formatting, commands, header
├── Makefile              # Build commands
└── content/
    ├── content-sde.tex        # Full-Stack SDE
    └── content-ml.tex         # ML Engineer
```

## Build

Run from `resume/` directory:

```bash
make sde           # Full-Stack SDE
make ml            # ML Engineer
make all           # Build both
make list          # List available roles
make new ROLE=<name>  # Scaffold new role from SDE template
make clean         # Remove build artifacts
```

Output: `pdfs/resume-<role>.pdf`

## Adding a New Role

1. `make new ROLE=<name>` — creates `content/content-<name>.tex` from SDE template
2. Edit with role-specific content
3. `make build ROLE=<name>` — compiles PDF
