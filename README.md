# Dzhuneyt's Homebrew Tap

A Homebrew tap containing custom formulas for various tools and utilities.

## Available Formulas

### cf-purge
Purge CloudFormation stacks that match a glob pattern.

- **Description**: Efficiently delete multiple CloudFormation stacks using glob patterns
- **Homepage**: https://github.com/dzhuneyt/cf-purge
- **License**: MIT

## Installation

First, add this tap to your Homebrew:

```bash
brew tap dzhuneyt/tap
```

Then install any formula:

```bash
brew install cf-purge
```

Or install directly:

```bash
brew install dzhuneyt/tap/cf-purge
```

## Usage

### cf-purge
```bash
cf-purge --help
```

## Development

This tap includes automated workflows that:

- **Update formulas**: Automatically updates formulas when new releases are published
- **Smoke testing**: Validates that formulas install correctly using the real end-user flow

### Workflow Details

- Runs daily at 6am UTC to check for new releases
- Can be manually triggered via GitHub Actions
- Tests the complete installation process: `brew tap` → `brew install` → verification
- Uses manual Homebrew installation to emulate true end-user experience

## Contributing

Issues and pull requests are welcome at the individual project repositories linked above.
