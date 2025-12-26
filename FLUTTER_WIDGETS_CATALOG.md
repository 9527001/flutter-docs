# Flutter Widgets 完整目录

## 📋 目录

- [基础 Widget](#基础-widget)
- [Material Design Widget](#material-design-widget)
- [Cupertino (iOS 风格) Widget](#cupertino-ios-风格-widget)
- [布局 Widget](#布局-widget)
- [输入与表单 Widget](#输入与表单-widget)
- [文本 Widget](#文本-widget)
- [图片与图标 Widget](#图片与图标-widget)
- [动画 Widget](#动画-widget)
- [交互 Widget](#交互-widget)
- [滚动 Widget](#滚动-widget)
- [导航与路由 Widget](#导航与路由-widget)
- [装饰与视觉效果 Widget](#装饰与视觉效果-widget)
- [异步 Widget](#异步-widget)
- [可访问性 Widget](#可访问性-widget)
- [平台特定 Widget](#平台特定-widget)

---

## 基础 Widget

### 核心基础类

| Widget | 说明 | 类型 |
|--------|------|------|
| `Widget` | 所有 Widget 的抽象基类 | 抽象类 |
| `StatelessWidget` | 无状态 Widget 基类 | 抽象类 |
| `StatefulWidget` | 有状态 Widget 基类 | 抽象类 |
| `InheritedWidget` | 数据向下传递的 Widget | 抽象类 |
| `RenderObjectWidget` | 创建 RenderObject 的 Widget | 抽象类 |

### 基本容器

| Widget | 说明 | 常用场景 |
|--------|------|----------|
| `Container` | 最常用的容器 Widget | 布局、装饰、变换 |
| `SizedBox` | 固定大小的盒子 | 设置固定尺寸、间距 |
| `ConstrainedBox` | 约束子 Widget 尺寸 | 设置最小/最大尺寸 |
| `UnconstrainedBox` | 取消约束 | 允许子 Widget 超出父约束 |
| `LimitedBox` | 限制无界约束 | 在无界环境中设置最大尺寸 |
| `OverflowBox` | 允许子 Widget 超出边界 | 超出父容器显示内容 |
| `FittedBox` | 缩放子 Widget 以适应 | 图片、文字自适应 |
| `FractionallySizedBox` | 按比例设置子 Widget 尺寸 | 响应式布局 |
| `AspectRatio` | 保持子 Widget 宽高比 | 视频播放器、图片 |
| `IntrinsicHeight` | 使子 Widget 获得固有高度 | 多个子 Widget 同高 |
| `IntrinsicWidth` | 使子 Widget 获得固有宽度 | 多个子 Widget 同宽 |
| `Baseline` | 按基线对齐子 Widget | 文本对齐 |

---

## Material Design Widget

### 应用结构

| Widget | 说明 | 用途 |
|--------|------|------|
| `MaterialApp` | Material Design 应用根 Widget | 应用入口 |
| `Scaffold` | Material Design 页面框架 | 页面基本结构 |
| `AppBar` | 顶部导航栏 | 标题、操作按钮 |
| `BottomAppBar` | 底部应用栏 | 底部导航 |
| `BottomNavigationBar` | 底部导航栏 | 标签式导航 |
| `TabBar` | 标签栏 | 标签页切换 |
| `TabBarView` | 标签页内容视图 | 配合 TabBar 使用 |
| `Drawer` | 侧边抽屉 | 侧边菜单 |
| `EndDrawer` | 右侧抽屉 | 右侧菜单 |
| `FloatingActionButton` | 浮动操作按钮 | 主要操作 |
| `SnackBar` | 底部消息提示 | 临时消息 |

### 按钮

| Widget | 说明 | 样式 |
|--------|------|------|
| `ElevatedButton` | 凸起按钮（主要按钮） | 有阴影 |
| `TextButton` | 文本按钮（次要按钮） | 扁平 |
| `OutlinedButton` | 轮廓按钮 | 带边框 |
| `IconButton` | 图标按钮 | 仅图标 |
| `FloatingActionButton` | 浮动操作按钮 | 圆形，浮动 |
| `PopupMenuButton` | 弹出菜单按钮 | 下拉菜单 |
| `DropdownButton` | 下拉选择按钮 | 选择列表 |
| `ButtonBar` | 按钮栏 | 多个按钮水平排列 |
| `SegmentedButton` | 分段按钮 | 单选/多选 |

### 输入与选择

| Widget | 说明 | 用途 |
|--------|------|------|
| `TextField` | 文本输入框 | 单行/多行输入 |
| `TextFormField` | 表单文本输入框 | 带验证的输入 |
| `Checkbox` | 复选框 | 多选 |
| `Radio` | 单选框 | 单选 |
| `Switch` | 开关 | 二选一 |
| `Slider` | 滑块 | 数值选择 |
| `RangeSlider` | 范围滑块 | 范围选择 |
| `DatePicker` | 日期选择器 | 选择日期 |
| `TimePicker` | 时间选择器 | 选择时间 |
| `Autocomplete` | 自动完成输入 | 搜索建议 |
| `DropdownMenu` | 下拉菜单 | 选择列表 |
| `Chip` | 标签 | 可选择的标签 |
| `InputChip` | 输入标签 | 输入标签 |
| `FilterChip` | 过滤标签 | 筛选条件 |
| `ChoiceChip` | 选择标签 | 单选标签 |
| `ActionChip` | 操作标签 | 触发操作 |

### 对话框与弹窗

| Widget | 说明 | 场景 |
|--------|------|------|
| `AlertDialog` | 警告对话框 | 确认操作 |
| `SimpleDialog` | 简单对话框 | 选择项 |
| `Dialog` | 自定义对话框 | 自定义内容 |
| `showDialog` | 显示对话框（函数） | 弹出对话框 |
| `showModalBottomSheet` | 底部模态面板 | 底部弹出 |
| `BottomSheet` | 底部面板 | 持久化底部面板 |
| `ExpansionPanel` | 可展开面板 | 折叠列表 |
| `ExpansionTile` | 可展开列表项 | 树形结构 |
| `Tooltip` | 工具提示 | 长按显示提示 |
| `PopupMenuButton` | 弹出菜单 | 更多选项 |

### 信息展示

| Widget | 说明 | 用途 |
|--------|------|------|
| `Card` | 卡片 | 内容分组 |
| `ListTile` | 列表项 | 列表行 |
| `Divider` | 水平分割线 | 分隔内容 |
| `VerticalDivider` | 垂直分割线 | 垂直分隔 |
| `Chip` | 标签 | 标记信息 |
| `Badge` | 徽章 | 数量提示 |
| `Banner` | 横幅 | 重要消息 |
| `DataTable` | 数据表格 | 表格展示 |
| `PaginatedDataTable` | 分页数据表格 | 大量数据 |
| `Stepper` | 步骤器 | 流程引导 |
| `ProgressIndicator` | 进度指示器 | 加载状态 |
| `CircularProgressIndicator` | 圆形进度指示器 | 加载中 |
| `LinearProgressIndicator` | 线性进度指示器 | 进度条 |
| `RefreshIndicator` | 下拉刷新指示器 | 刷新列表 |

### 其他 Material Widget

| Widget | 说明 |
|--------|------|
| `Material` | Material 设计视觉效果 |
| `Ink` | Material 墨水效果 |
| `InkWell` | 墨水波纹点击效果 |
| `InkResponse` | 可自定义的墨水响应 |
| `Theme` | 主题 Widget |
| `ThemeData` | 主题数据 |
| `IconTheme` | 图标主题 |
| `ButtonTheme` | 按钮主题 |
| `TextTheme` | 文本主题 |

---

## Cupertino (iOS 风格) Widget

### 应用结构

| Widget | 说明 |
|--------|------|
| `CupertinoApp` | iOS 风格应用根 Widget |
| `CupertinoPageScaffold` | iOS 风格页面框架 |
| `CupertinoNavigationBar` | iOS 风格导航栏 |
| `CupertinoTabScaffold` | iOS 风格标签页框架 |
| `CupertinoTabBar` | iOS 风格标签栏 |
| `CupertinoTabView` | iOS 风格标签页内容 |
| `CupertinoSliverNavigationBar` | iOS 风格可滚动导航栏 |

### 按钮

| Widget | 说明 |
|--------|------|
| `CupertinoButton` | iOS 风格按钮 |
| `CupertinoFilledButton` | iOS 风格填充按钮 |
| `CupertinoContextMenu` | iOS 风格上下文菜单 |

### 输入

| Widget | 说明 |
|--------|------|
| `CupertinoTextField` | iOS 风格文本输入框 |
| `CupertinoSearchTextField` | iOS 风格搜索框 |
| `CupertinoSwitch` | iOS 风格开关 |
| `CupertinoSlider` | iOS 风格滑块 |
| `CupertinoPicker` | iOS 风格选择器 |
| `CupertinoDatePicker` | iOS 风格日期选择器 |
| `CupertinoTimerPicker` | iOS 风格时间选择器 |
| `CupertinoSegmentedControl` | iOS 风格分段控件 |

### 对话框

| Widget | 说明 |
|--------|------|
| `CupertinoAlertDialog` | iOS 风格警告对话框 |
| `CupertinoActionSheet` | iOS 风格操作表 |
| `CupertinoDialogAction` | iOS 风格对话框操作 |
| `showCupertinoDialog` | 显示 iOS 风格对话框 |
| `showCupertinoModalPopup` | 显示 iOS 风格模态弹窗 |

### 其他

| Widget | 说明 |
|--------|------|
| `CupertinoActivityIndicator` | iOS 风格活动指示器 |
| `CupertinoNavigationBarBackButton` | iOS 风格返回按钮 |
| `CupertinoScrollbar` | iOS 风格滚动条 |
| `CupertinoPopupSurface` | iOS 风格弹出表面 |
| `CupertinoListTile` | iOS 风格列表项 |
| `CupertinoListSection` | iOS 风格列表分组 |

---

## 布局 Widget

### 单子布局

| Widget | 说明 | 特点 |
|--------|------|------|
| `Container` | 通用容器 | 最常用 |
| `Padding` | 内边距 | 添加填充 |
| `Center` | 居中 | 子 Widget 居中 |
| `Align` | 对齐 | 指定对齐方式 |
| `SizedBox` | 固定尺寸盒子 | 固定宽高 |
| `ConstrainedBox` | 约束盒子 | 限制尺寸 |
| `FittedBox` | 适配盒子 | 缩放子 Widget |
| `AspectRatio` | 宽高比 | 保持比例 |
| `Transform` | 变换 | 旋转、缩放、平移 |
| `RotatedBox` | 旋转盒子 | 90度旋转 |
| `DecoratedBox` | 装饰盒子 | 背景、边框 |
| `Offstage` | 隐藏 | 不显示但保留空间 |
| `Visibility` | 可见性 | 控制显示/隐藏 |
| `Opacity` | 透明度 | 设置透明度 |
| `ColoredBox` | 颜色盒子 | 纯色背景 |

### 多子布局

| Widget | 说明 | 排列方式 |
|--------|------|----------|
| `Row` | 水平布局 | 水平排列 |
| `Column` | 垂直布局 | 垂直排列 |
| `Stack` | 堆叠布局 | 重叠排列 |
| `Flex` | 弹性布局 | Row/Column 基类 |
| `Wrap` | 流式布局 | 自动换行 |
| `Flow` | 流式布局（自定义） | 自定义流式 |
| `Table` | 表格布局 | 表格 |
| `IndexedStack` | 索引堆叠 | 只显示一个子 Widget |
| `CustomMultiChildLayout` | 自定义多子布局 | 自定义布局逻辑 |

### 灵活布局

| Widget | 说明 | 用途 |
|--------|------|------|
| `Flexible` | 弹性空间 | 在 Row/Column 中弹性分配 |
| `Expanded` | 扩展空间 | 占据剩余空间 |
| `Spacer` | 间隔 | 创建空白空间 |

### 定位布局

| Widget | 说明 | 场景 |
|--------|------|------|
| `Positioned` | 绝对定位 | 在 Stack 中使用 |
| `PositionedDirectional` | 方向感知定位 | 支持 RTL |

---

## 输入与表单 Widget

### 文本输入

| Widget | 说明 | 特性 |
|--------|------|------|
| `TextField` | 文本输入框 | Material 风格 |
| `TextFormField` | 表单文本框 | 带验证 |
| `CupertinoTextField` | iOS 风格输入框 | iOS 风格 |
| `EditableText` | 可编辑文本基类 | 底层实现 |

### 表单

| Widget | 说明 | 功能 |
|--------|------|------|
| `Form` | 表单容器 | 表单管理 |
| `FormField` | 表单字段 | 表单项基类 |
| `TextFormField` | 文本表单字段 | 文本输入 |
| `DropdownButtonFormField` | 下拉表单字段 | 下拉选择 |
| `CheckboxListTile` | 复选框列表项 | 复选框 + 标题 |
| `RadioListTile` | 单选框列表项 | 单选框 + 标题 |
| `SwitchListTile` | 开关列表项 | 开关 + 标题 |

### 选择器

| Widget | 说明 |
|--------|------|
| `Checkbox` | 复选框 |
| `CheckboxListTile` | 复选框列表项 |
| `Radio` | 单选框 |
| `RadioListTile` | 单选框列表项 |
| `Switch` | 开关 |
| `SwitchListTile` | 开关列表项 |
| `Slider` | 滑块 |
| `RangeSlider` | 范围滑块 |
| `DropdownButton` | 下拉按钮 |
| `DropdownMenu` | 下拉菜单 |

---

## 文本 Widget

| Widget | 说明 | 用途 |
|--------|------|------|
| `Text` | 文本显示 | 最基本的文本 |
| `RichText` | 富文本 | 多样式文本 |
| `Text.rich` | 富文本构造器 | 便捷的富文本 |
| `SelectableText` | 可选择文本 | 可复制文本 |
| `DefaultTextStyle` | 默认文本样式 | 设置子树默认样式 |
| `TextSpan` | 文本片段 | 富文本片段 |
| `WidgetSpan` | Widget 片段 | 在文本中嵌入 Widget |

### 文本样式

| 类 | 说明 |
|----|------|
| `TextStyle` | 文本样式 |
| `TextTheme` | 文本主题 |
| `FontWeight` | 字重 |
| `FontStyle` | 字体样式 |
| `TextDecoration` | 文本装饰 |
| `TextAlign` | 文本对齐 |
| `TextOverflow` | 文本溢出处理 |

---

## 图片与图标 Widget

### 图片

| Widget | 说明 | 来源 |
|--------|------|------|
| `Image` | 图片显示 | 通用 |
| `Image.asset` | 资源图片 | 本地资源 |
| `Image.network` | 网络图片 | 网络 URL |
| `Image.file` | 文件图片 | 文件系统 |
| `Image.memory` | 内存图片 | 字节数据 |
| `RawImage` | 原始图片 | 底层实现 |
| `FadeInImage` | 渐显图片 | 加载时渐显 |
| `CircleAvatar` | 圆形头像 | 用户头像 |
| `ImageIcon` | 图片图标 | 图片作为图标 |

### 图标

| Widget | 说明 |
|--------|------|
| `Icon` | 图标 |
| `IconButton` | 图标按钮 |
| `ImageIcon` | 图片图标 |
| `Icons` | Material 图标库 |
| `CupertinoIcons` | iOS 图标库 |

---

## 动画 Widget

### 隐式动画

| Widget | 说明 | 动画属性 |
|--------|------|----------|
| `AnimatedContainer` | 动画容器 | 尺寸、颜色、装饰等 |
| `AnimatedOpacity` | 动画透明度 | 透明度 |
| `AnimatedPadding` | 动画内边距 | 内边距 |
| `AnimatedAlign` | 动画对齐 | 对齐方式 |
| `AnimatedPositioned` | 动画定位 | 位置 |
| `AnimatedPositionedDirectional` | 动画方向定位 | 方向位置 |
| `AnimatedDefaultTextStyle` | 动画文本样式 | 文本样式 |
| `AnimatedPhysicalModel` | 动画物理模型 | 阴影、形状 |
| `AnimatedSize` | 动画尺寸 | 尺寸 |
| `AnimatedRotation` | 动画旋转 | 旋转角度 |
| `AnimatedScale` | 动画缩放 | 缩放比例 |
| `AnimatedSlide` | 动画滑动 | 滑动偏移 |
| `AnimatedSwitcher` | 动画切换器 | 子 Widget 切换 |
| `AnimatedCrossFade` | 动画交叉淡入淡出 | 两个子 Widget |

### 显式动画

| Widget | 说明 | 用途 |
|--------|------|------|
| `AnimatedBuilder` | 动画构建器 | 自定义动画 |
| `AnimatedWidget` | 动画 Widget 基类 | 动画 Widget |
| `FadeTransition` | 淡入淡出转换 | 透明度动画 |
| `ScaleTransition` | 缩放转换 | 缩放动画 |
| `RotationTransition` | 旋转转换 | 旋转动画 |
| `SlideTransition` | 滑动转换 | 滑动动画 |
| `PositionedTransition` | 定位转换 | 位置动画 |
| `SizeTransition` | 尺寸转换 | 尺寸动画 |
| `AlignTransition` | 对齐转换 | 对齐动画 |
| `DecoratedBoxTransition` | 装饰盒转换 | 装饰动画 |
| `DefaultTextStyleTransition` | 文本样式转换 | 文本样式动画 |

### 动画控制

| 类 | 说明 |
|----|------|
| `AnimationController` | 动画控制器 |
| `Animation` | 动画对象 |
| `Tween` | 补间动画 |
| `Curve` | 动画曲线 |
| `CurvedAnimation` | 曲线动画 |

### Hero 动画

| Widget | 说明 |
|--------|------|
| `Hero` | 共享元素动画 |

---

## 交互 Widget

### 手势检测

| Widget | 说明 | 支持手势 |
|--------|------|----------|
| `GestureDetector` | 手势检测器 | 点击、长按、拖动等 |
| `InkWell` | 墨水波纹（可点击） | 点击、长按 |
| `InkResponse` | 墨水响应 | 自定义响应 |
| `RawGestureDetector` | 原始手势检测器 | 自定义手势 |
| `MouseRegion` | 鼠标区域 | 鼠标悬停、进入、离开 |
| `Listener` | 指针监听器 | 底层指针事件 |
| `AbsorbPointer` | 吸收指针 | 阻止交互 |
| `IgnorePointer` | 忽略指针 | 忽略交互 |

### 可拖动

| Widget | 说明 | 用途 |
|--------|------|------|
| `Draggable` | 可拖动 Widget | 拖放操作 |
| `LongPressDraggable` | 长按可拖动 | 长按后拖动 |
| `DragTarget` | 拖动目标 | 接收拖动 |
| `DraggableScrollableSheet` | 可拖动滚动面板 | 底部面板 |

### 可驳回

| Widget | 说明 |
|--------|------|
| `Dismissible` | 可滑动删除 |

---

## 滚动 Widget

### 滚动容器

| Widget | 说明 | 特点 |
|--------|------|------|
| `SingleChildScrollView` | 单子滚动视图 | 适合小量内容 |
| `ListView` | 列表视图 | 线性列表 |
| `ListView.builder` | 列表构建器 | 按需构建 |
| `ListView.separated` | 分隔列表 | 带分隔符 |
| `ListView.custom` | 自定义列表 | 自定义 |
| `GridView` | 网格视图 | 网格布局 |
| `GridView.builder` | 网格构建器 | 按需构建 |
| `GridView.count` | 固定列数网格 | 指定列数 |
| `GridView.extent` | 固定宽度网格 | 指定子项宽度 |
| `CustomScrollView` | 自定义滚动视图 | 组合多种滚动效果 |
| `NestedScrollView` | 嵌套滚动视图 | 头部和body联动 |
| `PageView` | 页面视图 | 翻页效果 |
| `PageView.builder` | 页面构建器 | 按需构建页面 |
| `TabBarView` | 标签页视图 | 配合 TabBar |

### Sliver Widget

| Widget | 说明 | 用途 |
|--------|------|------|
| `SliverList` | Sliver 列表 | CustomScrollView 中 |
| `SliverGrid` | Sliver 网格 | CustomScrollView 中 |
| `SliverAppBar` | Sliver 应用栏 | 可折叠导航栏 |
| `SliverToBoxAdapter` | Sliver 盒子适配器 | 将普通 Widget 转为 Sliver |
| `SliverFillRemaining` | Sliver 填充剩余空间 | 填充剩余空间 |
| `SliverFillViewport` | Sliver 填充视口 | 每个子项占满视口 |
| `SliverPadding` | Sliver 内边距 | 添加内边距 |
| `SliverOpacity` | Sliver 透明度 | 设置透明度 |
| `SliverIgnorePointer` | Sliver 忽略指针 | 禁用交互 |
| `SliverPrototypeExtentList` | Sliver 原型范围列表 | 固定高度列表 |
| `SliverFixedExtentList` | Sliver 固定范围列表 | 固定高度列表 |
| `SliverPersistentHeader` | Sliver 持久化头部 | 固定头部 |
| `SliverAnimatedList` | Sliver 动画列表 | 带动画的列表 |
| `SliverAnimatedOpacity` | Sliver 动画透明度 | 透明度动画 |
| `SliverLayoutBuilder` | Sliver 布局构建器 | 根据约束构建 |
| `SliverOverlapAbsorber` | Sliver 重叠吸收器 | 处理重叠 |
| `SliverOverlapInjector` | Sliver 重叠注入器 | 注入重叠 |

### 滚动控制

| Widget/类 | 说明 |
|-----------|------|
| `ScrollController` | 滚动控制器 |
| `Scrollbar` | 滚动条 |
| `CupertinoScrollbar` | iOS 风格滚动条 |
| `RawScrollbar` | 原始滚动条 |
| `ScrollConfiguration` | 滚动配置 |
| `ScrollPhysics` | 滚动物理效果 |
| `ScrollNotification` | 滚动通知 |
| `NotificationListener` | 通知监听器 |
| `ScrollMetrics` | 滚动度量 |

---

## 导航与路由 Widget

### 导航

| Widget | 说明 | 用途 |
|--------|------|------|
| `Navigator` | 导航器 | 路由管理 |
| `MaterialPageRoute` | Material 页面路由 | Material 风格页面 |
| `CupertinoPageRoute` | iOS 页面路由 | iOS 风格页面 |
| `PageRoute` | 页面路由基类 | 自定义路由 |
| `PageRouteBuilder` | 页面路由构建器 | 自定义转场动画 |
| `ModalRoute` | 模态路由 | 模态页面 |
| `PopupRoute` | 弹出路由 | 弹出页面 |

### 导航组件

| Widget | 说明 |
|--------|------|
| `AppBar` | 应用栏（带返回按钮） |
| `BackButton` | 返回按钮 |
| `CloseButton` | 关闭按钮 |
| `DrawerButton` | 抽屉按钮 |
| `EndDrawerButton` | 右侧抽屉按钮 |

### 路由过渡

| Widget | 说明 |
|--------|------|
| `Hero` | 共享元素转场 |
| `PageTransitionSwitcher` | 页面转场切换器 |

---

## 装饰与视觉效果 Widget

### 装饰

| Widget | 说明 | 效果 |
|--------|------|------|
| `DecoratedBox` | 装饰盒子 | 背景、边框 |
| `ColoredBox` | 颜色盒子 | 纯色背景 |
| `Container` | 容器（包含装饰） | 多种装饰 |
| `Material` | Material 设计表面 | 阴影、圆角 |
| `Card` | 卡片 | 阴影卡片 |
| `PhysicalModel` | 物理模型 | 3D 阴影 |
| `PhysicalShape` | 物理形状 | 自定义形状阴影 |

### 视觉效果

| Widget | 说明 | 效果 |
|--------|------|------|
| `Opacity` | 透明度 | 设置透明度 |
| `BackdropFilter` | 背景滤镜 | 毛玻璃效果 |
| `ClipRect` | 矩形裁剪 | 矩形裁剪 |
| `ClipRRect` | 圆角矩形裁剪 | 圆角裁剪 |
| `ClipOval` | 椭圆裁剪 | 圆形/椭圆裁剪 |
| `ClipPath` | 路径裁剪 | 自定义路径裁剪 |
| `CustomPaint` | 自定义绘制 | Canvas 绘制 |
| `ShaderMask` | 着色器遮罩 | 渐变遮罩 |
| `ColorFiltered` | 颜色滤镜 | 颜色变换 |
| `ImageFiltered` | 图像滤镜 | 图像效果 |

### 阴影与高度

| Widget | 说明 |
|--------|------|
| `Material` | Material 阴影 |
| `PhysicalModel` | 物理阴影 |
| `Elevation` | 高度（通过 Material） |

---

## 异步 Widget

| Widget | 说明 | 用途 |
|--------|------|------|
| `FutureBuilder` | Future 构建器 | 基于 Future 构建 UI |
| `StreamBuilder` | Stream 构建器 | 基于 Stream 构建 UI |
| `ValueListenableBuilder` | 值监听构建器 | 监听值变化 |
| `AnimatedBuilder` | 动画构建器 | 监听动画 |

---

## 可访问性 Widget

| Widget | 说明 | 功能 |
|--------|------|------|
| `Semantics` | 语义 Widget | 辅助功能 |
| `MergeSemantics` | 合并语义 | 合并语义信息 |
| `ExcludeSemantics` | 排除语义 | 排除语义树 |
| `BlockSemantics` | 阻止语义 | 阻止语义信息传递 |

---

## 平台特定 Widget

### Android

| Widget | 说明 |
|--------|------|
| `AndroidView` | 嵌入 Android 原生视图 |

### iOS

| Widget | 说明 |
|--------|------|
| `UiKitView` | 嵌入 iOS 原生视图 |

### Web

| Widget | 说明 |
|--------|------|
| `HtmlElementView` | 嵌入 HTML 元素 |

---

## 其他实用 Widget

### 键盘与焦点

| Widget | 说明 |
|--------|------|
| `Focus` | 焦点管理 |
| `FocusScope` | 焦点作用域 |
| `AutofillGroup` | 自动填充组 |

### 安全区域

| Widget | 说明 |
|--------|------|
| `SafeArea` | 安全区域 |
| `SliverSafeArea` | Sliver 安全区域 |
| `MediaQuery` | 媒体查询 |

### 主题与国际化

| Widget | 说明 |
|--------|------|
| `Theme` | 主题 |
| `ThemeData` | 主题数据 |
| `Localizations` | 本地化 |
| `MediaQuery` | 媒体查询 |
| `Directionality` | 文本方向 |

### 性能优化

| Widget | 说明 | 用途 |
|--------|------|------|
| `RepaintBoundary` | 重绘边界 | 隔离重绘区域 |
| `KeepAlive` | 保持存活 | 防止子树被销毁 |
| `AutomaticKeepAlive` | 自动保持存活 | 自动保持状态 |
| `KeepAliveNotification` | 保持存活通知 | 通知父组件保持 |

### 布局辅助

| Widget | 说明 |
|--------|------|
| `LayoutBuilder` | 布局构建器 |
| `Builder` | 构建器 |
| `StatefulBuilder` | 有状态构建器 |
| `OrientationBuilder` | 方向构建器 |

### 平台检测

| Widget | 说明 |
|--------|------|
| `Platform` | 平台检测（dart:io） |
| `Theme.of(context).platform` | 主题平台 |

### 其他

| Widget | 说明 |
|--------|------|
| `WillPopScope` | 返回拦截 |
| `Placeholder` | 占位符 |
| `SizedOverflowBox` | 尺寸溢出盒子 |
| `LimitedBox` | 限制盒子 |
| `MediaQuery` | 媒体查询 |
| `Directionality` | 文本方向 |
| `Title` | 页面标题 |
| `AnnotatedRegion` | 注释区域 |
| `SystemChrome` | 系统样式 |

---

## 按使用频率分类

### 🔥 最常用 (Top 20)

1. `Container`
2. `Text`
3. `Row`
4. `Column`
5. `Stack`
6. `Padding`
7. `Center`
8. `SizedBox`
9. `Scaffold`
10. `AppBar`
11. `ListView`
12. `Image`
13. `Icon`
14. `ElevatedButton`
15. `TextField`
16. `GestureDetector`
17. `InkWell`
18. `Card`
19. `CircularProgressIndicator`
20. `FutureBuilder`

### ⭐ 常用 (Top 50)

21. `MaterialApp`
22. `SingleChildScrollView`
23. `GridView`
24. `Expanded`
25. `Flexible`
26. `Align`
27. `ConstrainedBox`
28. `AspectRatio`
29. `Opacity`
30. `Navigator`
31. `Theme`
32. `IconButton`
33. `FloatingActionButton`
34. `BottomNavigationBar`
35. `Drawer`
36. `ListTile`
37. `Divider`
38. `Checkbox`
39. `Radio`
40. `Switch`
41. `Slider`
42. `DropdownButton`
43. `TextFormField`
44. `Form`
45. `StreamBuilder`
46. `AnimatedContainer`
47. `Hero`
48. `PageView`
49. `TabBar`
50. `TabBarView`

---

## 📊 统计数据

### Widget 总数

| 类别 | 数量（约） |
|------|----------|
| 基础 Widget | 30+ |
| Material Widget | 80+ |
| Cupertino Widget | 30+ |
| 布局 Widget | 40+ |
| 输入表单 Widget | 20+ |
| 文本 Widget | 10+ |
| 图片图标 Widget | 10+ |
| 动画 Widget | 40+ |
| 交互 Widget | 15+ |
| 滚动 Widget | 40+ |
| 导航 Widget | 15+ |
| 装饰 Widget | 20+ |
| 异步 Widget | 5+ |
| 其他 Widget | 30+ |
| **总计** | **380+** |

### 使用建议

**初学者应该掌握的 Widget (30个):**

```dart
// 1. 基础容器 (5个)
Container, SizedBox, Padding, Center, Align

// 2. 布局 (5个)
Row, Column, Stack, Expanded, Flexible

// 3. 文本和图片 (4个)
Text, RichText, Image, Icon

// 4. Material 结构 (4个)
MaterialApp, Scaffold, AppBar, BottomNavigationBar

// 5. 按钮 (3个)
ElevatedButton, TextButton, IconButton

// 6. 输入 (2个)
TextField, Checkbox

// 7. 列表 (2个)
ListView, GridView

// 8. 交互 (2个)
GestureDetector, InkWell

// 9. 异步 (1个)
FutureBuilder

// 10. 其他 (2个)
CircularProgressIndicator, Card
```

---

## 🔍 快速查找

### 按场景查找 Widget

| 场景 | 推荐 Widget |
|------|-------------|
| 页面框架 | `Scaffold`, `AppBar`, `BottomNavigationBar` |
| 布局容器 | `Container`, `Row`, `Column`, `Stack` |
| 文本显示 | `Text`, `RichText`, `SelectableText` |
| 图片显示 | `Image.asset`, `Image.network`, `CircleAvatar` |
| 按钮点击 | `ElevatedButton`, `TextButton`, `IconButton` |
| 用户输入 | `TextField`, `TextFormField`, `Checkbox` |
| 列表展示 | `ListView`, `GridView`, `ListTile` |
| 页面导航 | `Navigator`, `MaterialPageRoute` |
| 加载状态 | `CircularProgressIndicator`, `LinearProgressIndicator` |
| 网络数据 | `FutureBuilder`, `StreamBuilder` |
| 动画效果 | `AnimatedContainer`, `Hero`, `AnimatedOpacity` |
| 手势检测 | `GestureDetector`, `InkWell` |
| 滚动视图 | `SingleChildScrollView`, `CustomScrollView` |
| 对话框 | `AlertDialog`, `showDialog`, `BottomSheet` |
| 表单验证 | `Form`, `TextFormField`, `FormField` |

---

## 📚 学习资源

### 官方文档

- [Widget Catalog](https://flutter.dev/docs/development/ui/widgets)
- [Widget of the Week](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)
- [API Documentation](https://api.flutter.dev/)

### 推荐学习顺序

1. **第一阶段**: 掌握基础 Widget (30个)
2. **第二阶段**: 学习布局和交互 (20个)
3. **第三阶段**: 深入动画和高级 Widget (30个)
4. **第四阶段**: 自定义 Widget 和性能优化

---

**创建日期**: 2025年12月26日  
**版本**: 1.0.0  
**Widget 总数**: 380+

**💡 提示**: 这个目录会随着 Flutter 版本更新而增加新的 Widget。建议收藏并定期查看官方文档获取最新信息。


