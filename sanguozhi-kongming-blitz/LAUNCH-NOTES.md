# 孔明一局定三国 Launch Notes

## 目标

这个版本用来验证四件事：

1. 用户是否更愿意玩一个 2 分钟内结束的三国互动游戏。
2. 即时数值反馈是否能降低“文字太多”的疲劳感。
3. 不同选择是否能产生可感知的结局差异。
4. “打赏解锁隐藏军报”是否能产生真实付费意愿。

## 推荐发布文案

别读长文，直接救蜀。

我做了一个 2 分钟《孔明一局定三国》：六次选择，看你能不能把蜀汉救回来。

打完会给军师评级和结局战报，欢迎把你的结局发我。

https://kunlundesign.github.io/sanguozhi-kongming-blitz/

## GA 事件

- `kongming_blitz_start`: 点击开始游戏
- `kongming_blitz_choice`: 每一次选择
- `kongming_blitz_finish`: 到达结局
- `kongming_blitz_share_copy`: 复制战报
- `kongming_blitz_pay_open`: 打开打赏弹窗
- `kongming_blitz_pay_confirm`: 点击“我已支持，解锁隐藏军报”

## 最小判断标准

- 如果 `start / visitor` 超过 35%，首屏有效。
- 如果 `finish / start` 超过 55%，节奏有效。
- 如果 `share_copy / finish` 超过 8%，传播钩子有效。
- 如果 `pay_open / finish` 超过 5%，付费动机值得继续测。
- 如果 `pay_confirm / pay_open` 超过 10%，可以继续做真实付费闭环。

## 下一轮可测版本

- 版本 B：开局直接给“你是孔明还是司马懿？”人格测评，增强分享欲。
- 版本 C：把隐藏军报做成 9.9 元完整 DLC，但静态站只先测按钮点击。
- 版本 D：用同一套机制换成“关羽败走麦城 90 秒挑战”，验证题材横向复用。
