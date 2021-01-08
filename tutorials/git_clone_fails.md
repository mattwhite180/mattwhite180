# Git clone fails
```
fatal: pack has bad object at offset 336798: inflate returned -5
fatal: index-pack failed
```

### 1. Turn off Git compression.
`git config --global core.compression 0`

### 2. Partial clone repo
`git clone --depth 1 https://github.com/...`

### 3. Retrieve the rest of the repo
`git fetch --unshallow`

### 4. Do a regular pull
`git pull --all`
