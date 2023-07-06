# pre-commit for pyright
Wrapper to enable pre-commit hook usage for pyright

## Usage
In your `.pre-commit-config.yaml` include the following block.

```
- repo: https://github.com/SteelSeries/pre-commit-pyright
  rev: '1.1.316'
  hooks:
    - id: pyright
```

If you have a `pyrightconfiguration.json` defined, this hook will honor it.

## Updating
If you need to update to new version of pyright, run `./update.sh <version>`.
