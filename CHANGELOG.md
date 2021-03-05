# [3.0.0-nullsafety.0](https://github.com/worldturtlemedia/weather_icons/compare/v2.0.2...v3.0.0-nullsafety.0) (2021-03-05)

### Features

* **null-safety:** migrate library to dart null-safety ([#16](https://github.com/worldturtlemedia/weather_icons/issues/16)) ([4cbdd2a](https://github.com/worldturtlemedia/weather_icons/commit/4cbdd2a))
* **null-safety:** update readme to reflect null-safety ([7903c48](https://github.com/worldturtlemedia/weather_icons/commit/7903c48))


### BREAKING CHANGES

* **null-safety:** library have been migrated to dart null-safety

## [2.0.2](https://github.com/worldturtlemedia/weather_icons/compare/v2.0.1...v2.0.2) (2020-10-17)


### Bug Fixes

* **codegen:** fixed code generation to combat tree shaking error ([#12](https://github.com/worldturtlemedia/weather_icons/issues/12)) ([54fa8a2](https://github.com/worldturtlemedia/weather_icons/commit/54fa8a2))


## [2.0.1](https://github.com/worldturtlemedia/weather_icons/compare/v2.0.0...v2.0.1) (2020-02-17)


### Bug Fixes

* **rotate:** switch degree from `double` to `num` ([2d6413a](https://github.com/worldturtlemedia/weather_icons/commit/2d6413a))
* **wind_icon:** Accept any numeric value (double and int) ([#7](https://github.com/worldturtlemedia/weather_icons/issues/7)) ([3c8a350](https://github.com/worldturtlemedia/weather_icons/commit/3c8a350))



# [2.0.0](https://github.com/worldturtlemedia/weather_icons/compare/v1.0.1...v2.0.0) (2019-07-20)


### Bug Fixes

* **timeicon:** remove `iconFromHour` and `iconFromDate` ([c19f4cb](https://github.com/worldturtlemedia/weather_icons/commit/c19f4cb))
* **windicon:** fix the rotation of the wind icons ([3acacee](https://github.com/worldturtlemedia/weather_icons/commit/3acacee))


### Features

* **boxedicon:** add a widget for boxing the font icon ([abb773d](https://github.com/worldturtlemedia/weather_icons/commit/abb773d))
* **icons:** add hidden directional icons ([2766775](https://github.com/worldturtlemedia/weather_icons/commit/2766775))


### BREAKING CHANGES

* **timeicon:** Remove two Time icon helper functions.  In favour of creating a class instead of a
function, so you can properly customize the icons.
