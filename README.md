# 本项目forks自 [Ascotbe/Medusa](https://github.com/Ascotbe/Medusa)
- 其最近一次 commit [9e89804ecb74487f07f2ab6e8eef4633dae31b87](https://github.com/Ascotbe/Medusa/commit/9e89804ecb74487f07f2ab6e8eef4633dae31b87)
- 如果需要了解原项目，请查看 [https://github.com/Ascotbe/Medusa](https://github.com/Ascotbe/Medusa)

## 基于[Ascotbe/Medusa](https://github.com/Ascotbe/Medusa)进行二次开发和编辑
- 1. 修改部分web的编写逻辑、增加一些可控的成熟的管理控件
- 2. commit 部分漏洞poc/exp脚本;提供部分支持, 例如加入`pocsuit3`,`鲲鹏`、`巡风`、[TideSec/Mars](https://github.com/TideSec/Mars)等。
- 3. 融合其他的自动化渗透工具, 例如mars

## Upgrade 
- 2020-8-11: 增加docker部署的支持。
```bash
docker run --rm -it \
    -v $(pwd)/Log:/usr/src/app/Log \
    -v $(pwd)/Temp:/usr/src/app/Temp \
    registry.cn-beijing.aliyuncs.com/rapid7/medusa \
    python3 MedusaScan.py -u http://172.21.7.225:80 -t 3
```
- 发现并不成熟好吧，所以放弃使用。

## GiveUpUsing 
- v0.87版本并不好用。等待web和其他功能成熟。