# demo_flutter_performance_test

A new Flutter project.

## If you want to test performance on real mobile device or emulator run this below command line 

```shell
fvm flutter drive \
--driver=test_driver/perf_driver.dart \
--target=integration_test/scrolling_test.dart \
--profile --no-dds
```