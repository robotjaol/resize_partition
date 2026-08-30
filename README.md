# Windows Partition Resize Experiment

An archival Windows batch-script experiment that invokes DiskPart to shrink a fixed volume by a fixed amount. The repository also contains a packaged application archive.

> **Project status:** unsafe prototype; script.bat is not suitable for general use and must not be run without manual review and backups.

## What this repository contains

- script.bat generates a temporary DiskPart command file.
- The script targets volume 2 and requests a 1,000 MB shrink.
- App_resize.zip is an opaque packaged artifact whose source and provenance are not documented.

## Quick start

1. Do not run script.bat on a real machine.
2. Inspect disk layout using Windows Disk Management and identify the intended volume by stable evidence, not an assumed number.
3. Back up all important data and verify recovery media.
4. Use the supported graphical tool or a reviewed, parameterised procedure.

## Engineering notes

- DiskPart volume numbering can differ between systems and boot contexts.
- The script does not validate free space, filesystem state, BitLocker, recovery partitions, or the selected volume.
- A success message is printed even if the preceding operation fails.

## Repository map

| Path | Purpose |
| --- | --- |
| script.bat | Hard-coded, destructive DiskPart prototype. |
| App_resize.zip | Unverified packaged artifact. |

## Safety and limitations

Partition changes can make data or an operating system unrecoverable. Keep this repository as a code-review example only; do not execute the batch file on a machine containing valuable data.

## Contributing

Open an issue before a large change. Keep changes focused, document assumptions, and include a reproducible verification step.

## License

No repository-wide licence has been declared. The packaged ZIP may have separate ownership and redistribution constraints.
