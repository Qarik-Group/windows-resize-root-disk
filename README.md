# windows-resize-root-disk

Simple script that resizes the root disk upon installation to the maximum supported size.


## Usage
### Job

```
instance_groups:
...
- name: windows2019-cell
  jobs:
    ...
    - name: resize_root_disk
      release: windows-resize-root-disk
      properties: {}
    ...
```
### Releases
```
releases:
- name: windows-resize-root-disk
  version: latest
```

## Notes

That's it. That's the boshrelease.