# Stack Cheat Sheet

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
stack --work-dir .stack-work-profile  build --profile
```

```
stack --work-dir .stack-work-profile exec --profile  -- hello +RTS -p
```
