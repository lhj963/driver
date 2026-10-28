# BYSD 驱动固件（GD32F305VC）

本仓库是 MCU 驱动固件。上层应用通过 `Source/apps/export_api/` 中的 `export_api` 使用外设、通信、存储与升级等能力。

- 量产芯片：GD32F305VC（Cortex-M3，SRAM 96KB，Flash 512KB）
- Keil 工程：[`KeilMDK/st_driver.uvproj`](KeilMDK/st_driver.uvproj)（目标名 `st_driver`）
- 版本变更记录：[Source/readme.txt](Source/readme.txt)

`KeilMDK/lst/`、`KeilMDK/output/` 为编译列表与固件产物，`SI/` 为 Source Insight 索引，均不入库。

## 关于 STM32F10x 命名

下列文件沿用 STM32F10x 标准外设库的文件名与接口，是兼容桩/兼容库，**不是**量产料号：

- `Source/drivers/stm32lib/`
- `Source/drivers/stm32_rtc/`
- `Source/drivers/Stm32Flash/`
- `Source/device/stm32f10x.h`
- `Source/device/startup_stm32f10x_*.s`

量产 MCU 为 GD32F305VC。请按兼容库使用这些源文件，不要据此改名或删除。
