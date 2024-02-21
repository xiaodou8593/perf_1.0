# perf

perf包专注于性能测试的标准化，让相同的性能实验可以在不同的电脑环境重复运行

## 手动执行初始化

```
function perf:_init
```

## 测benchmark数据(每个存档只需1次)

```
function perf:_benchmark
```

等待运行结果，误差在可接受范围内即可

## 新建性能测试项目

复制template文件夹，重新命名为测试项目名称

把所有template字符串替换为项目名称

在_start函数中设置测试环境

在loop函数中编写需要测试开销的命令

如果有需要，也可以覆写_print函数输出测试结果

## 运行性能测试项目并输出结果

```
# 以template项目为例
function perf:template/_start
```

## 挂机运行

如果测试时间过长，您想挂机自动完成多个项目的测试，可以使用perf:io afk

例如_benchmark的实现是

```
#perf:_benchmark
# 生成测试基准
data modify storage perf:io afk set value ["base","scb_add"]
```