# XMediatorLevelPlayBidMachineAdapterCompatibility

Swift Package Manager package, published by X3M, that lets XMediator
integrations use the LevelPlay `BidMachineAdapter` adapter together with
the Google Mobile Ads mediation adapter for the same network.

## Why this package exists

The official LevelPlay adapter package (<https://github.com/ironsource-mobile/LevelPlay-BidMachine-Adapter-Swift-Package.git>) and the Google
mediation adapter package both declare a target named `BidMachineAdapter`,
so SwiftPM cannot build a project that includes both. This package depends on
the official LevelPlay package and exposes it under a different product name,
`LevelPlayBidMachineAdapter`, renaming the conflicting module so both adapters can
coexist.

## Usage

Add this repository as a package dependency and select the
`LevelPlayBidMachineAdapter` product instead of LevelPlay's `BidMachineAdapter`.
Versions match the LevelPlay adapter versions one-to-one: version
`5.8.0` of this package uses LevelPlay adapter `5.8.0`.

## License

Apache License 2.0 (see `LICENSE`).
