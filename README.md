# Soto Core

[<img src="http://img.shields.io/badge/swift-5.1-brightgreen.svg" alt="Swift 5.1" />](https://swift.org)
[<img src="https://github.com/swift-aws/soto-core/workflows/CI/badge.svg" />](https://github.com/swift-aws/soto-core/actions)
[<img src="https://codecov.io/gh/swift-aws/soto-core/branch/main/graph/badge.svg" alt="Codecov Result" />](https://codecov.io/gh/swift-aws/soto-core)

The core framework for [Soto](https://github.com/swift-aws/soto) the Swift SDK for AWS.

This is the underlying driver for executing requests to AWS, but you should likely use one of the libraries provided by the package above instead of this! Documentation can be found [here](https://swift-aws.github.io/soto-core).

## Swift NIO

This client utilizes [Swift NIO](https://github.com/apple/swift-nio#conceptual-overview) to power its interactions with AWS. It returns an [`EventLoopFuture`](https://apple.github.io/swift-nio/docs/current/NIO/Classes/EventLoopFuture.html) in order to allow non-blocking frameworks to use this code. Please see the [Swift NIO documentation](https://apple.github.io/swift-nio/) for more details, and please let us know via an Issue if you have questions!

## Compatibility

Versions 4.x of soto-core are dependent on swift-nio 2, this means certain libraries/frameworks that are dependent on an earlier version of swift-nio will not work with version 4 of soto-core. Version 3.x of soto-core can be used if you need to use an earlier version of swift-nio. For instance Vapor 3 uses swift-nio 1.13 so you can only use versions 3.x of soto-core with Vapor 3. Below is a compatibility table for versions 3 and 4 of soto-core.

| Version | Swift | MacOS | iOS    | Linux              | Vapor  |
|---------|-------|-------|--------|--------------------|--------|
| 3.x     | 4.2 - | ✓     |        | Ubuntu 14.04-18.04 | 3.0    |
| 4.x     | 5.0 - | ✓     | 12.0 - | Ubuntu 14.04-18.04 | 4.0    |

## Contributing

We welcome and encourage contributions from all developers. Please read [CONTRIBUTING.md](CONTRIBUTING.md) for our contributing guidelines.

## License

`soto-core` is released under the Apache 2.0 license. See [LICENSE](LICENSE) for details.
