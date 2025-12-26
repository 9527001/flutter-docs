# Android 架构设计

## 目录
1. [系统架构概述](#系统架构概述)
2. [Android 系统层次结构](#android-系统层次结构)
3. [应用架构模式](#应用架构模式)
4. [核心组件](#核心组件)
5. [现代架构指南](#现代架构指南)
6. [最佳实践](#最佳实践)

---

## 系统架构概述

Android 是一个基于 Linux 内核的开源移动操作系统，采用分层架构设计，从底层到上层分别为：

```
┌─────────────────────────────────────────┐
│      应用层 (Applications)               │
├─────────────────────────────────────────┤
│   应用框架层 (Application Framework)     │
├─────────────────────────────────────────┤
│      系统运行库 & Android Runtime        │
│    (Libraries & Android Runtime)        │
├─────────────────────────────────────────┤
│  硬件抽象层 (Hardware Abstraction Layer) │
├─────────────────────────────────────────┤
│      Linux 内核 (Linux Kernel)          │
└─────────────────────────────────────────┘
```

---

## Android 系统层次结构

### 1. Linux 内核层 (Linux Kernel)

**功能**：提供底层的系统服务和硬件驱动

**核心组件**：
- **进程管理**：负责进程的创建、调度和销毁
- **内存管理**：虚拟内存、内存分配、内存回收
- **文件系统**：支持 ext4、F2FS 等文件系统
- **驱动程序**：
  - Display Driver（显示驱动）
  - Camera Driver（相机驱动）
  - Bluetooth Driver（蓝牙驱动）
  - WiFi Driver（WiFi驱动）
  - Audio Driver（音频驱动）
  - Power Management（电源管理）
  - Binder IPC Driver（进程间通信驱动）

### 2. 硬件抽象层 (HAL - Hardware Abstraction Layer)

**作用**：将硬件功能抽象化，为上层提供统一接口

**特点**：
- 隔离硬件实现细节
- 支持厂商定制化
- 模块化设计

**主要 HAL 模块**：
- Camera HAL
- Audio HAL
- Sensors HAL
- Graphics HAL
- GPS HAL

### 3. 系统运行库层

#### 3.1 Native C/C++ 库

**核心库**：
- **libc (Bionic)**：Android 定制的 C 标准库
- **Surface Manager**：管理显示子系统
- **Media Framework**：多媒体编解码（基于 FFmpeg）
- **SQLite**：轻量级数据库
- **OpenGL ES**：3D 图形库
- **WebKit**：浏览器引擎
- **SSL**：安全套接字层

#### 3.2 Android Runtime (ART)

**演进历史**：
- Dalvik VM（Android 1.0 - 4.4）：JIT 编译
- ART（Android 5.0+）：AOT + JIT 混合编译

**ART 特性**：
- **AOT 编译**：应用安装时编译为机器码
- **改进的 GC**：并发、分代垃圾回收
- **优化的内存管理**：减少内存占用
- **更好的调试支持**：详细的异常堆栈

### 4. 应用框架层 (Application Framework)

**核心服务**：

#### 4.1 Activity Manager Service (AMS)
- 管理 Activity 生命周期
- 维护 Activity 栈
- 处理应用启动和切换

#### 4.2 Package Manager Service (PMS)
- 应用安装、卸载、更新
- 权限管理
- 组件信息查询

#### 4.3 Window Manager Service (WMS)
- 窗口管理和布局
- 事件分发
- 动画处理

#### 4.4 Content Providers
- 数据共享机制
- 跨进程数据访问

#### 4.5 View System
- UI 组件体系
- 事件处理
- 绘制系统

#### 4.6 Notification Manager
- 通知管理
- 状态栏控制

#### 4.7 Resource Manager
- 资源加载和管理
- 多语言、多分辨率支持

### 5. 应用层 (Applications)

系统应用和第三方应用，如：
- 拨号器
- 短信
- 浏览器
- 联系人
- 设置
- 第三方 App

---

## 应用架构模式

### 1. MVC (Model-View-Controller)

```
┌──────────┐      ┌──────────────┐      ┌───────┐
│  Model   │◄─────│  Controller  │─────►│ View  │
└──────────┘      └──────────────┘      └───────┘
                         │                   │
                         └───────────────────┘
```

**组成**：
- **Model**：数据和业务逻辑
- **View**：Activity/Fragment（UI 展示）
- **Controller**：Activity/Fragment（事件处理）

**缺点**：
- Activity/Fragment 职责过重
- 难以测试
- 耦合度高

### 2. MVP (Model-View-Presenter)

```
┌──────────┐      ┌───────────┐      ┌───────┐
│  Model   │◄─────│ Presenter │─────►│ View  │
└──────────┘      └───────────┘      └───────┘
                                         │
                                    (Activity/
                                     Fragment)
```

**优势**：
- 业务逻辑与 UI 分离
- 便于单元测试
- 降低耦合度

**实现**：
- **Model**：数据层（Repository、Database、Network）
- **View**：Activity/Fragment（实现 View 接口）
- **Presenter**：业务逻辑处理

### 3. MVVM (Model-View-ViewModel)

```
┌──────────┐      ┌──────────────┐      ┌───────┐
│  Model   │◄─────│  ViewModel   │◄────►│ View  │
└──────────┘      └──────────────┘      └───────┘
                         │                   │
                    (LiveData/           (Activity/
                     StateFlow)           Fragment)
                         │                   │
                         └──── 数据绑定 ──────┘
```

**核心组件**：
- **Model**：数据层
- **View**：Activity/Fragment + XML
- **ViewModel**：持有 UI 状态，处理业务逻辑
- **数据绑定**：LiveData、StateFlow、DataBinding

**优势**：
- 生命周期感知
- 配置变更时保持数据
- 响应式编程
- 更好的可测试性

### 4. MVI (Model-View-Intent)

```
┌─────────────────────────────────────────┐
│              Intent                     │
│                 ▼                       │
│  ┌──────────────────────────┐          │
│  │       Processor          │          │
│  └──────────────────────────┘          │
│                 ▼                       │
│  ┌──────────────────────────┐          │
│  │    State Reducer         │          │
│  └──────────────────────────┘          │
│                 ▼                       │
│  ┌──────────────────────────┐          │
│  │    Immutable State       │          │
│  └──────────────────────────┘          │
│                 ▼                       │
│              View                       │
└─────────────────────────────────────────┘
```

**特点**：
- 单向数据流
- 不可变状态
- 易于调试和测试
- 适合复杂 UI 状态管理

---

## 核心组件

### 1. Activity

**生命周期**：

```
onCreate() → onStart() → onResume() → [Running]
    ↑                                      ↓
    │                                  onPause()
    │                                      ↓
    │                                  onStop()
    │                                      ↓
    └─────────────────────────────── onDestroy()
```

**关键方法**：
- `onCreate()`：初始化
- `onStart()`：可见但不可交互
- `onResume()`：可见且可交互
- `onPause()`：部分可见
- `onStop()`：不可见
- `onDestroy()`：销毁

### 2. Fragment

**特点**：
- 模块化 UI 组件
- 可重用
- 拥有独立生命周期
- 依附于 Activity

**生命周期**：

```
onAttach() → onCreate() → onCreateView() → onViewCreated()
    → onActivityCreated() → onStart() → onResume()
    → [Running] → onPause() → onStop() → onDestroyView()
    → onDestroy() → onDetach()
```

### 3. Service

**类型**：
- **Started Service**：后台长期运行
- **Bound Service**：客户端-服务器接口
- **Foreground Service**：前台服务（显示通知）

**生命周期**：

```
Started Service:
onCreate() → onStartCommand() → [Running] → onDestroy()

Bound Service:
onCreate() → onBind() → [Running] → onUnbind() → onDestroy()
```

### 4. Broadcast Receiver

**用途**：
- 接收系统广播
- 接收应用广播
- 跨进程通信

**注册方式**：
- 静态注册（Manifest）
- 动态注册（代码中）

### 5. Content Provider

**功能**：
- 跨应用数据共享
- 统一数据访问接口
- 支持 CRUD 操作

**核心方法**：
- `query()`
- `insert()`
- `update()`
- `delete()`

---

## 现代架构指南

### Google 官方推荐架构

```
┌─────────────────────────────────────────────────┐
│                  UI Layer                       │
│  ┌──────────────┐        ┌──────────────┐      │
│  │   Activity   │◄───────│  ViewModel   │      │
│  │   Fragment   │        │              │      │
│  └──────────────┘        └──────────────┘      │
└─────────────────────────────┬───────────────────┘
                              │
┌─────────────────────────────▼───────────────────┐
│                Domain Layer                     │
│              ┌──────────────┐                   │
│              │  Use Cases   │                   │
│              │  (Optional)  │                   │
│              └──────────────┘                   │
└─────────────────────────────┬───────────────────┘
                              │
┌─────────────────────────────▼───────────────────┐
│                 Data Layer                      │
│  ┌──────────────┐        ┌──────────────┐      │
│  │ Repository   │───────►│ Data Source  │      │
│  │              │        │  (Remote/    │      │
│  │              │        │   Local)     │      │
│  └──────────────┘        └──────────────┘      │
└─────────────────────────────────────────────────┘
```

### 各层职责

#### 1. UI Layer (表现层)
- **职责**：展示数据、处理用户交互
- **组件**：Activity、Fragment、View、ViewModel
- **原则**：
  - UI 逻辑尽量简单
  - 不直接访问数据层
  - 观察 ViewModel 的状态

#### 2. Domain Layer (领域层/可选)
- **职责**：封装复杂业务逻辑
- **组件**：Use Cases（用例）、业务模型
- **优势**：
  - 代码复用
  - 易于测试
  - 关注点分离

#### 3. Data Layer (数据层)
- **职责**：数据访问和管理
- **组件**：
  - **Repository**：统一数据访问接口
  - **Data Source**：
    - Remote（网络）
    - Local（数据库、SharedPreferences）
- **原则**：
  - 单一数据源原则
  - 离线优先策略

### 核心库和工具

#### Jetpack 组件

**架构组件**：
- **ViewModel**：UI 数据持有者
- **LiveData**：可观察数据
- **Room**：SQLite ORM
- **Paging**：分页加载
- **Navigation**：导航组件
- **WorkManager**：后台任务
- **DataStore**：数据存储（替代 SharedPreferences）
- **Hilt**：依赖注入

**UI 组件**：
- **Compose**：声明式 UI
- **Material Design Components**

#### 依赖注入

**Hilt 示例**：

```kotlin
// Application
@HiltAndroidApp
class MyApplication : Application()

// Module
@Module
@InstallIn(SingletonComponent::class)
object AppModule {
    @Provides
    @Singleton
    fun provideRepository(): Repository {
        return RepositoryImpl()
    }
}

// ViewModel
@HiltViewModel
class MainViewModel @Inject constructor(
    private val repository: Repository
) : ViewModel()

// Activity
@AndroidEntryPoint
class MainActivity : AppCompatActivity()
```

#### 协程和 Flow

**协程优势**：
- 简化异步编程
- 结构化并发
- 取消支持

**Flow 使用**：

```kotlin
class UserRepository {
    fun getUsers(): Flow<List<User>> = flow {
        val users = api.fetchUsers()
        emit(users)
    }.flowOn(Dispatchers.IO)
}

class UserViewModel @Inject constructor(
    private val repository: UserRepository
) : ViewModel() {
    
    val users: StateFlow<UiState<List<User>>> = 
        repository.getUsers()
            .map { UiState.Success(it) }
            .catch { UiState.Error(it) }
            .stateIn(
                viewModelScope,
                SharingStarted.WhileSubscribed(5000),
                UiState.Loading
            )
}
```

---

## 最佳实践

### 1. 关注点分离
- UI 只负责展示
- ViewModel 处理 UI 逻辑
- Repository 管理数据
- Use Cases 封装业务逻辑

### 2. 单一数据源 (Single Source of Truth)
- Repository 作为唯一数据源
- 本地数据库作为缓存
- 避免数据不一致

### 3. 响应式编程
- 使用 LiveData/StateFlow
- 观察者模式
- 数据驱动 UI

### 4. 依赖注入
- 降低耦合
- 易于测试
- 便于替换实现

### 5. 生命周期感知
- 使用 Lifecycle-aware 组件
- 避免内存泄漏
- 自动管理订阅

### 6. 离线优先
- 本地缓存
- 网络异常处理
- 数据同步策略

### 7. 模块化
- 按功能模块划分
- 独立编译
- 代码复用

### 8. 测试策略

**单元测试**：
- ViewModel 测试
- Repository 测试
- Use Case 测试

**UI 测试**：
- Espresso
- Compose UI Testing

**集成测试**：
- Room Database 测试
- API 测试

### 9. 性能优化

**启动优化**：
- 延迟初始化
- 异步加载
- 减少主线程工作

**内存优化**：
- 避免内存泄漏
- 使用 Profiler
- 及时释放资源

**渲染优化**：
- 减少过度绘制
- 优化布局层级
- 使用 RecyclerView

### 10. 安全性

**数据安全**：
- 加密敏感数据
- 使用 EncryptedSharedPreferences
- HTTPS 通信

**代码安全**：
- ProGuard/R8 混淆
- 防止逆向工程
- 签名验证

---

## 架构演进趋势

### 1. Jetpack Compose
- 声明式 UI
- 简化 UI 开发
- 更好的性能

### 2. Kotlin Multiplatform
- 跨平台代码共享
- 共享业务逻辑
- 平台特定实现

### 3. 模块化和组件化
- 动态功能模块
- 按需加载
- 团队协作

### 4. 云原生架构
- Firebase
- 后端即服务 (BaaS)
- Serverless

---

## 总结

Android 架构设计经历了从简单到复杂、从混乱到清晰的演进过程：

1. **系统架构**：分层设计，职责明确
2. **应用架构**：从 MVC → MVP → MVVM → MVI
3. **现代实践**：Jetpack + MVVM + Clean Architecture
4. **核心原则**：关注点分离、单一数据源、响应式编程

良好的架构设计能够：
- ✅ 提高代码可维护性
- ✅ 便于团队协作
- ✅ 易于测试
- ✅ 支持快速迭代
- ✅ 提升应用质量

---

**参考资料**：
- [Android 开发者官方文档](https://developer.android.com/)
- [App Architecture Guide](https://developer.android.com/topic/architecture)
- [Android Jetpack](https://developer.android.com/jetpack)

