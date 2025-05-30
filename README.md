# A ready to use Stack template for Haskell

You can either use stack commands directly (see the [Stack Cheat Sheet](#stack-cheat-sheet) in this README) or you can use the shorter versions proposed in the `Makefile`.

The `Makefile` makes life easier for profiling and uses workarounds for various `stack` bugs. It can be used with several executables, benchmarks or tests.

## TODO list for creating new package

1. Change the LICENSE
1. Edit `package.yaml` with your package info
1. Find and replace `stack-template` with `my-package`
1. Rename the folder `app/stack-template-exe` to `my-package-exe` (this will be the default executable used for `make run`)
1. Edit `CHANGELOG.md`
1. Edit the stack resolver to the latest LTS in `stack.yaml`

## Using Make

You can change the default for the variables `trg` (target), `tst` (test), `pkg`, `exe` (default executable) and `bch` (bench) in the Makefile.

### Building and running
```
make build
make build pkg=stack-template trg=lib
```

In general, you can always set the `pkg` variable.

```
make run
make run exe=world
```

Use the `exe` variable to specify which executable you want.

To find out about all the targets :

```
make targets
```

### Clean

```
make clean
make clean-hard
```

Clean hard will entirely swipe `.stack-work`, `.stack-work-prof` and `.make-work`.

### Testing

```
make test
make test tst=stack-template-test
```

Use the `tst` variable to specify which test you want.

### Benchmarking

```
make bench
make bench bch=stack-template-bench
```

Use the `bsh` variable to specify which test you want. The benchmark output will be in `.make-work`.

### Profiling

```
make prof
make prof exe=world

make prof-test
make prof-test tst=stack-template-test

make prof-bench
make prof-bench bch=stack-template-bench
```

The profiling's outputs will be in `.make-work`.

### GHCi

```
make ghci
make ghci exe=world

make ghci-test
make ghci-test tst=stack-template-test

make ghci-bench
make ghci-bench bch=stack-template-bench
```

### GHCid

```
make ide


make ide-exe
make ide-exe exe=world

make ide-test
make ide-test tst=stack-template-test

make ide-bench
make ide-bench bch=stack-template-bench
```

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

With coverage :

```
stack test --coverage
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

On Windows, `criterion` uses  unicode characters that causes a problem (see [stackoverflow](https://stackoverflow.com/questions/78173087/stack-error-when-running-benchmarks-tasty-bench)).



Workaround :
```
chcp 65001
```

Another work around, which has some caveats is given in [stackoverflow](https://stackoverflow.com/questions/57131654/using-utf-8-encoding-chcp-65001-in-command-prompt-windows-powershell-window)

### Profiling :

```
stack --work-dir .stack-work-prof  build --profile
```

```
stack --work-dir .stack-work-prof exec --profile  -- hello +RTS -p
```
