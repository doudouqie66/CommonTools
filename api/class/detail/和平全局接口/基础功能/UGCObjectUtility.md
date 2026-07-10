---
title: UGCObjectUtility
language: lua
---

# UGCObjectUtility

UObject基础接口库

## Functions

### FindClass

通过类名(短路径)寻找类
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InClassName | string | 类名 |

**Return:** UClass 检索到的类

### LoadClass

通过完整路径加载类，具体路径可以点击 "右键" - "copy reference" 得到路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InClassPath | string | 类的路径 |

**Return:** UClass 加载完成的类

### AsyncLoadClass

通过完整路径异步加载蓝图 Class，路径规则与 LoadClass 相同
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InClassPath | string | 类的路径 |
| Callback | function | lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) |
| Callback_self | UObject | 这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil |

**Return:** boolean 加载是否成功

### FindObject

通过对象名寻找对象，会遍历所有包进行寻找，性能较差，且如果出现冲突，会有警告且返回其中一个
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObjectName | string | 对象名 |

**Return:** UObject 检索到的对象

### LoadObject

通过完整路径加载对象，性能较好
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObjectPath | string | 对象的路径 |

**Return:** UObject 加载的对象

### AsyncLoadObject

通过完整路径异步加载Object
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObjectPath | string | 对象的路径 |
| Callback | function | lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) |
| Callback_self | UObject | 这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil |

**Return:** boolean 加载是否成功

### NewObject

通过包名，类名和对象名创建对象
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Outer | UObject | Outer 对象 |
| InClass | UClass | 类 |
| InObjectName | string | 对象名 |

**Return:** UObject 创建的对象

### NewStruct

创建新结构体对象，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，仅已导出结构体支持构造时赋值，传递非法参数时不保证结果正常。

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStructName | string | 不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"） |
| ... | any | 结构体的构造参数 |

**Return:** userdata 新创建的结构体

### NewStructAsTable

以 lua table 形式创建新结构体，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，传递非法参数时不保证结果正常。

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStructName | string | 不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"） |
| ... | any | 结构体的构造参数 |

**Return:** table 新创建的结构体 table

### GetObjectClass

通过一个对象获取对应的类
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

**Return:** UClass 对应的类

### GetObjectOuter

通过一个对象获取对应的包
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

**Return:** UObject 传入对象的 Outer 对象

### GetObjectName

获取对象的名字
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

**Return:** string 对象的名字

### GetObjectFullName

获取对象的类名以及完整路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

**Return:** string 对象的类以及完整路径

### GetObjectPathName

获取对象的完整路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

**Return:** string 对象的完整路径

### IsObjectValid

判断对象是否有效
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

**Return:** boolean 对象是否有效的判断结果

### IsA

判断一个对象是否是特定类的实例
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |
| InClass | UClass | 类 |

**Return:** boolean 对象是否是特定类的实例的判断结果

### MarkAsGarbage

删除对象，将对象标记为带回收的垃圾
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象实例 |

### MakeSoftObjectPath

通过完整对象路径创建软路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObjectPath | string | 对象的路径 |

**Return:** FSoftObjectPath 创建的软路径

### GetPathBySoftObjectPath

获取软路径获取对象完整路径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSoftObjectPath | FSoftObjectPath | 对象的软路径 |

**Return:** string 对象的完整路径

### LoadObjectBySoftPath

通过软路径加载对象
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSoftObjectPath | FSoftObjectPath | 对象的软路径 |

**Return:** boolean 加载是否成功

### AsyncLoadObjectBySoftPath

通过软路径异步加载对象
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSoftObjectPath | FSoftObjectPath | 对象的软路径 |
| Callback | function | lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) |
| Callback_Self | UObject | 这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil |

**Return:** boolean 加载是否成功

### GetAllActorsOfClass

【废弃】请使用UGCActorComponentUtility.GetAllActorsOfClass
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界中任意对象 |
| ActorClass | UClass | 要找的Actor对应的类。必须指定，否则结果数组将为空 |

**Return:** AActor[] 找到的Actor数组

### RemoveReferencedObject

移除引用关联（如果有UObject泄露等问题，可用此函数手动释放Lua侧对UObject的引用）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject | 需要释放引用的 UObject |

### GetObjectsOfClass

以 lua table 形式获取某个类的所有对象列表

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Class | UClass | 要找的 UObject 对应的类 |
| bIncludeDerivedClasses | boolean | 是否包括派生类 |

**Return:** UObject[] 找到的 UObject 数组

### GetObjectsWithOuter

以 lua table 形式获取以目标对象为 Outer 的所有 UObject 列表

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Outer | UObject | Outer 对象 |
| bIncludeNestedObjects | boolean | 是否包括嵌套对象 |

**Return:** UObject[] 找到的 UObject 数组

### ClassIsChildOf

判断一个类是否是另一个类的子类

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TestClass | UClass | 子类 |
| ParentClass | UClass | 父类 |

**Return:** boolean 如果TestClass等于ParentClass，或者TestClass是ParentClass的子类则返回true；否则返回false。如果任一参数为'None'也返回false

### GetDisplayName

获取对象的显示名称
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject | 对象实例 |

**Return:** string 对象的显示名称

### GetClassDefaultObject

获取类默认对象
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Class | UClass | 类 |

**Return:** UObject 类默认对象

### MakeWeakObjectPtr

创建弱对象指针
生效范围：服务器 & 客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject | 对象 |

**Return:** WeakObjectPtr 弱对象指针

### GetObjectFromWeakObjectPtr

从弱对象指针获取对象
生效范围：服务器 & 客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWeakObjectPtr | WeakObjectPtr | 弱对象指针 |

**Return:** UObject 对象

### IsWeakObjectPtrValid

判断弱对象指针是否有效
生效范围：服务器 & 客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWeakObjectPtr | WeakObjectPtr | 弱对象指针 |

**Return:** boolean 是否有效