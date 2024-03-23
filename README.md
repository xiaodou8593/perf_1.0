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

也可以

```
data modify storage perf:io afk set value ["benchmark"]
```

等待运行结果，误差在可接受范围内即可

**由于未知bug, worldborder有时候测时间是0，min的值变为0，这种情况需要重测**

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

## 输出结果解读

cnt是测试样本数，也就是运行了多少个tick

n是递归次数，也就是单个tick运行多少次测试命令

min, max, avg分别是单个样本运行时间的最小值，最大值，平均值，单位是ms

**由于未知bug, worldborder有时候测时间是0，min的值变为0，这种情况需要重测**

err是最大误差，它的算法是：err = 取最大值{(max-avg)/avg, (avg-min)/avg}

作者一般要求err在10%以内属于可接受，不过严谨的阈值还可以讨论

scb_add表示测试命令约合多少条记分板加法命令(也就是benchmark)，它自动计算了n的影响

## 挂机运行

如果测试时间过长，您想挂机自动完成多个项目的测试，可以使用perf:io afk

例如_benchmark的实现是

```
#perf:_benchmark
# 生成测试基准
data modify storage perf:io afk set value ["base","scb_add"]
```

## 特殊项目

特殊项目，提供可复用的特定功能，为后续测试铺垫环境

在后续项目之前先进行基准测试

```
data modify storage perf:io afk set value ["benchmark", ......]
```

在后续项目之前先稳定电脑功耗

```
data modify storage perf:io afk set value ["powerload", ......]
```

## 特殊标签

指定测试项目的执行者实体(全局唯一)：

```
tag @e remove test_as_entity
tag @p add test_as_entity
```