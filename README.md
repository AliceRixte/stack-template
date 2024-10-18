# A ready to use Stack template for Haskell

You can either use stack commands directly (see the [Stack Cheat Sheet](#stack-cheat-sheet) in this README) or you can use the shorter versions proposed in the `Makefile`.

## TODO list for creating new package

1. Edit `package.yaml` with your package info
1. Edit `CHANGELOG.md`
1. Edit the stack resolver to the latest LTS in `stack.yaml`

## Stack Cheat Sheet

### Build :

```
stack build
```

### Run :
```
stack exec hello
```

### Build and run :
```
stack build --exec hello
```

### Test :
```
stack test
```

### Specific targets :

Find out about all the targets :
```
stack ide targets
```

### GHCi on a specific target :

```
stack ghci stack-template:test:stack-template-test
```

### GHCID :

```
ghcid --command "stack ghci stack-template:test:stack-template-test"
```

Use specific target to use `ghcid` on tests or benchmark.



### Benchmark :
```
stack bench --ba "--output bench.html"
```

On Windows, `criterion` uses  unicode characters that causes a problem (see [stackoverflow](https://stackoverflow.com/questions/57924638/stack-run-with-profiling-in-haskell)).

Workaround :
```
chcp 65001
```

### Profiling :

```
stack --work-dir .stack-work-prof  build --profile
```

```
stack --work-dir .stack-work-prof exec --profile  -- hello +RTS -p
```
