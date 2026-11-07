# Homebrew tap for CatSync

CatSync is a command-line tool that moves large file trees (or a single file)
between your machine and a remote host over SSH, in either direction. It plans
the transfer file by file, runs small files in parallel batches and large files
over several SFTP streams, never overwrites an existing destination file, and
resumes interrupted transfers from where they stopped.

- Project: <https://github.com/dotfrankruan/CatSync>
- Documentation: <https://github.com/dotfrankruan/CatSync/blob/main/docs/usage.md>
- License: AGPL-3.0-only

## Install

```sh
brew install dotfrankruan/catsync/catsync
```

Or tap first, then install:

```sh
brew tap dotfrankruan/catsync
brew install catsync
```

Recent Homebrew versions ask you to trust third-party taps before loading a
formula from one. If you see `Refusing to load formula ... from untrusted tap`,
approve it once:

```sh
brew trust dotfrankruan/catsync
```

## Upgrade

```sh
brew upgrade catsync
```

## What the formula installs

The prebuilt archive published for the current CatSync release: the same binary
the project's release workflow builds for `linux/amd64`, `linux/arm64`,
`darwin/amd64`, and `darwin/arm64`, with the release's `SHA-256` pinned in the
formula.

## Requirements

At runtime CatSync drives the system `ssh` and `rsync` from your `PATH`; both
are ordinary Homebrew/macOS tools. `catsync doctor` reports what it finds.

## Notes

The formula installs the prebuilt archive published for each CatSync release and
verifies its SHA-256. The archives are built by the project's release workflow
for linux/amd64, linux/arm64, darwin/amd64, and darwin/arm64.
