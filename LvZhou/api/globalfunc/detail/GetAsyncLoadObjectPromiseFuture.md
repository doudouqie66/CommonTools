---
title: GetAsyncLoadObjectPromiseFuture
---

# GetAsyncLoadObjectPromiseFuture

使用 PromiseFuture 异步加载资源并创建对象实例
用法：GetAsyncLoadObjectPromiseFuture(PlayerController, ObjectPath):Then(function (PromiseFuture) local Obj = PromiseFuture:Get() end):AutoResume()
生效范围：服务器&客户端