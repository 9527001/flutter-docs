# Flutter Widgets 完整列表

> 本文档穷举了 Flutter 框架中所有主要的内置 Widgets，按功能类别组织。

---

## 目录

1. [基础 Widgets](#基础-widgets)
2. [Material Design Widgets](#material-design-widgets)
3. [Cupertino Widgets (iOS风格)](#cupertino-widgets-ios风格)
4. [布局 Widgets](#布局-widgets)
5. [容器类 Widgets](#容器类-widgets)
6. [文本 Widgets](#文本-widgets)
7. [输入 Widgets](#输入-widgets)
8. [按钮 Widgets](#按钮-widgets)
9. [图像和图标 Widgets](#图像和图标-widgets)
10. [滚动 Widgets](#滚动-widgets)
11. [导航 Widgets](#导航-widgets)
12. [对话框和弹窗 Widgets](#对话框和弹窗-widgets)
13. [动画 Widgets](#动画-widgets)
14. [绘制和效果 Widgets](#绘制和效果-widgets)
15. [交互模型 Widgets](#交互模型-widgets)
16. [异步 Widgets](#异步-widgets)
17. [辅助功能 Widgets](#辅助功能-widgets)
18. [平台集成 Widgets](#平台集成-widgets)
19. [其他实用 Widgets](#其他实用-widgets)

---

## 基础 Widgets

### 核心基础组件
- **Widget** - 所有 Widget 的基类
- **StatelessWidget** - 无状态 Widget
- **StatefulWidget** - 有状态 Widget
- **InheritedWidget** - 用于数据传递的特殊 Widget
- **RenderObjectWidget** - 渲染对象 Widget
- **ProxyWidget** - 代理 Widget
- **ParentDataWidget** - 父数据 Widget

### 基本显示组件
- **Text** - 文本显示
- **RichText** - 富文本
- **Icon** - 图标
- **Image** - 图片
- **Placeholder** - 占位符
- **FlutterLogo** - Flutter Logo

---

## Material Design Widgets

### 应用结构
- **MaterialApp** - Material 应用根 Widget
- **Scaffold** - 脚手架，提供基本的页面结构
- **ScaffoldMessenger** - Scaffold 消息管理器
- **AppBar** - 应用栏
- **SliverAppBar** - 可折叠的应用栏
- **BottomAppBar** - 底部应用栏
- **TabBar** - 标签栏
- **TabBarView** - 标签页视图
- **Drawer** - 抽屉
- **BottomNavigationBar** - 底部导航栏
- **NavigationBar** - 导航栏（Material 3）
- **NavigationRail** - 导航栏（侧边）
- **NavigationDrawer** - 导航抽屉（Material 3）

### Material 按钮
- **ElevatedButton** - 浮起按钮
- **TextButton** - 文本按钮
- **OutlinedButton** - 轮廓按钮
- **IconButton** - 图标按钮
- **FloatingActionButton** - 浮动操作按钮
- **BackButton** - 返回按钮
- **CloseButton** - 关闭按钮
- **SegmentedButton** - 分段按钮（Material 3）

### Material 卡片和容器
- **Card** - 卡片
- **Chip** - 纸片
- **InputChip** - 输入纸片
- **ChoiceChip** - 选择纸片
- **FilterChip** - 过滤纸片
- **ActionChip** - 动作纸片
- **Banner** - 横幅
- **MaterialBanner** - Material 横幅
- **BottomSheet** - 底部面板
- **ExpansionPanel** - 扩展面板
- **ExpansionPanelList** - 扩展面板列表
- **ExpansionTile** - 扩展瓦片

### Material 输入组件
- **TextField** - 文本输入框
- **TextFormField** - 表单文本输入框
- **Form** - 表单
- **FormField** - 表单字段
- **Checkbox** - 复选框
- **CheckboxListTile** - 复选框列表瓦片
- **Radio** - 单选按钮
- **RadioListTile** - 单选列表瓦片
- **Switch** - 开关
- **SwitchListTile** - 开关列表瓦片
- **Slider** - 滑块
- **RangeSlider** - 范围滑块
- **DropdownButton** - 下拉按钮
- **DropdownButtonFormField** - 下拉表单字段
- **DropdownMenu** - 下拉菜单（Material 3）
- **SearchBar** - 搜索栏（Material 3）
- **SearchAnchor** - 搜索锚点（Material 3）
- **Autocomplete** - 自动完成
- **DatePickerDialog** - 日期选择器对话框
- **TimePickerDialog** - 时间选择器对话框
- **CalendarDatePicker** - 日历日期选择器

### Material 列表
- **ListTile** - 列表瓦片
- **ListBody** - 列表体
- **ListView** - 列表视图
- **ReorderableListView** - 可重排序列表视图

### Material 对话框
- **AlertDialog** - 警告对话框
- **SimpleDialog** - 简单对话框
- **Dialog** - 对话框
- **AboutDialog** - 关于对话框
- **showDialog** - 显示对话框（函数）
- **showModalBottomSheet** - 显示模态底部面板（函数）

### Material 指示器
- **CircularProgressIndicator** - 圆形进度指示器
- **LinearProgressIndicator** - 线性进度指示器
- **RefreshIndicator** - 刷新指示器
- **SnackBar** - 快餐栏
- **Tooltip** - 工具提示
- **Badge** - 徽章（Material 3）

### Material 选择和菜单
- **PopupMenuButton** - 弹出菜单按钮
- **PopupMenuItem** - 弹出菜单项
- **MenuAnchor** - 菜单锚点（Material 3）
- **MenuBar** - 菜单栏（Material 3）
- **SubmenuButton** - 子菜单按钮（Material 3）
- **CheckedPopupMenuItem** - 选中的弹出菜单项

### Material 主题
- **Theme** - 主题
- **ThemeData** - 主题数据
- **MaterialLocalizations** - Material 本地化

### Material 其他
- **Divider** - 分隔线
- **VerticalDivider** - 垂直分隔线
- **DataTable** - 数据表格
- **PaginatedDataTable** - 分页数据表格
- **Stepper** - 步进器
- **Step** - 步骤
- **GridTile** - 网格瓦片
- **GridTileBar** - 网格瓦片栏
- **Ink** - 墨水效果
- **InkWell** - 墨水井（点击效果）
- **InkResponse** - 墨水响应

---

## Cupertino Widgets (iOS风格)

### 应用结构
- **CupertinoApp** - Cupertino 应用根 Widget
- **CupertinoPageScaffold** - Cupertino 页面脚手架
- **CupertinoNavigationBar** - Cupertino 导航栏
- **CupertinoSliverNavigationBar** - Cupertino 可折叠导航栏
- **CupertinoTabScaffold** - Cupertino 标签脚手架
- **CupertinoTabBar** - Cupertino 标签栏
- **CupertinoTabView** - Cupertino 标签视图

### Cupertino 按钮
- **CupertinoButton** - Cupertino 按钮
- **CupertinoNavigationBarBackButton** - Cupertino 导航栏返回按钮

### Cupertino 输入组件
- **CupertinoTextField** - Cupertino 文本输入框
- **CupertinoTextFormFieldRow** - Cupertino 文本表单字段行
- **CupertinoSwitch** - Cupertino 开关
- **CupertinoSlider** - Cupertino 滑块
- **CupertinoPicker** - Cupertino 选择器
- **CupertinoDatePicker** - Cupertino 日期选择器
- **CupertinoTimerPicker** - Cupertino 计时器选择器
- **CupertinoSearchTextField** - Cupertino 搜索文本框
- **CupertinoCheckbox** - Cupertino 复选框
- **CupertinoRadio** - Cupertino 单选按钮

### Cupertino 对话框
- **CupertinoAlertDialog** - Cupertino 警告对话框
- **CupertinoActionSheet** - Cupertino 操作表
- **CupertinoDialogAction** - Cupertino 对话框操作
- **CupertinoPopupSurface** - Cupertino 弹出表面

### Cupertino 列表
- **CupertinoListTile** - Cupertino 列表瓦片
- **CupertinoListSection** - Cupertino 列表分组
- **CupertinoFormSection** - Cupertino 表单分组
- **CupertinoFormRow** - Cupertino 表单行

### Cupertino 指示器
- **CupertinoActivityIndicator** - Cupertino 活动指示器
- **CupertinoContextMenu** - Cupertino 上下文菜单
- **CupertinoContextMenuAction** - Cupertino 上下文菜单操作

### Cupertino 其他
- **CupertinoScrollbar** - Cupertino 滚动条
- **CupertinoSegmentedControl** - Cupertino 分段控件
- **CupertinoSlidingSegmentedControl** - Cupertino 滑动分段控件
- **CupertinoPageRoute** - Cupertino 页面路由
- **CupertinoFullscreenDialogTransition** - Cupertino 全屏对话框过渡
- **CupertinoPageTransition** - Cupertino 页面过渡
- **CupertinoTheme** - Cupertino 主题
- **CupertinoThemeData** - Cupertino 主题数据
- **CupertinoColors** - Cupertino 颜色
- **CupertinoIcons** - Cupertino 图标

---

## 布局 Widgets

### 单子布局
- **Container** - 容器
- **Padding** - 内边距
- **Center** - 居中
- **Align** - 对齐
- **FittedBox** - 适配盒子
- **AspectRatio** - 宽高比
- **ConstrainedBox** - 约束盒子
- **UnconstrainedBox** - 无约束盒子
- **LimitedBox** - 限制盒子
- **OverflowBox** - 溢出盒子
- **SizedBox** - 固定大小盒子
- **SizedOverflowBox** - 固定大小溢出盒子
- **FractionallySizedBox** - 比例大小盒子
- **IntrinsicHeight** - 固有高度
- **IntrinsicWidth** - 固有宽度
- **Baseline** - 基线
- **Transform** - 变换
- **RotatedBox** - 旋转盒子
- **DecoratedBox** - 装饰盒子
- **ColoredBox** - 颜色盒子
- **Offstage** - 离屏

### 多子布局
- **Row** - 行布局
- **Column** - 列布局
- **Stack** - 堆叠布局
- **Flex** - 弹性布局
- **Wrap** - 流式布局
- **Flow** - 流动布局
- **Table** - 表格布局
- **IndexedStack** - 索引堆叠
- **GridView** - 网格视图
- **CustomMultiChildLayout** - 自定义多子布局
- **LayoutBuilder** - 布局构建器

### 定位布局
- **Positioned** - 定位
- **PositionedDirectional** - 方向定位

### 灵活布局
- **Flexible** - 灵活
- **Expanded** - 扩展
- **Spacer** - 间隔器

### Sliver 布局（滚动视图专用）
- **SliverList** - Sliver 列表
- **SliverFixedExtentList** - Sliver 固定范围列表
- **SliverGrid** - Sliver 网格
- **SliverToBoxAdapter** - Sliver 到盒子适配器
- **SliverPadding** - Sliver 内边距
- **SliverFillViewport** - Sliver 填充视口
- **SliverFillRemaining** - Sliver 填充剩余
- **SliverAppBar** - Sliver 应用栏
- **SliverPersistentHeader** - Sliver 持久头部
- **SliverOpacity** - Sliver 透明度
- **SliverIgnorePointer** - Sliver 忽略指针
- **SliverOffstage** - Sliver 离屏
- **SliverAnimatedList** - Sliver 动画列表
- **SliverAnimatedOpacity** - Sliver 动画透明度
- **SliverLayoutBuilder** - Sliver 布局构建器
- **SliverPrototypeExtentList** - Sliver 原型范围列表
- **SliverReorderableList** - Sliver 可重排序列表
- **SliverOverlapAbsorber** - Sliver 重叠吸收器
- **SliverOverlapInjector** - Sliver 重叠注入器

---

## 容器类 Widgets

- **Container** - 容器（组合了多种功能）
- **DecoratedBox** - 装饰盒子
- **SizedBox** - 固定大小盒子
- **ConstrainedBox** - 约束盒子
- **Padding** - 内边距
- **Margin** - 外边距（通过 Container 实现）
- **Card** - 卡片
- **PhysicalModel** - 物理模型
- **PhysicalShape** - 物理形状
- **ClipRect** - 矩形裁剪
- **ClipRRect** - 圆角矩形裁剪
- **ClipOval** - 椭圆裁剪
- **ClipPath** - 路径裁剪
- **CustomPaint** - 自定义绘制
- **CustomSingleChildLayout** - 自定义单子布局
- **CustomMultiChildLayout** - 自定义多子布局

---

## 文本 Widgets

- **Text** - 文本
- **RichText** - 富文本
- **Text.rich** - 富文本构造器
- **TextSpan** - 文本片段
- **DefaultTextStyle** - 默认文本样式
- **SelectableText** - 可选择文本
- **EditableText** - 可编辑文本

---

## 输入 Widgets

### Material 输入
- **TextField** - 文本输入框
- **TextFormField** - 表单文本输入框
- **Form** - 表单
- **FormField** - 表单字段
- **RawKeyboardListener** - 原始键盘监听器
- **KeyboardListener** - 键盘监听器
- **Focus** - 焦点
- **FocusScope** - 焦点范围
- **FocusableActionDetector** - 可聚焦动作检测器

### 选择和开关
- **Checkbox** - 复选框
- **Radio** - 单选按钮
- **Switch** - 开关
- **Slider** - 滑块
- **RangeSlider** - 范围滑块

---

## 按钮 Widgets

### Material 按钮
- **ElevatedButton** - 浮起按钮
- **TextButton** - 文本按钮
- **OutlinedButton** - 轮廓按钮
- **IconButton** - 图标按钮
- **FloatingActionButton** - 浮动操作按钮
- **DropdownButton** - 下拉按钮
- **PopupMenuButton** - 弹出菜单按钮
- **BackButton** - 返回按钮
- **CloseButton** - 关闭按钮

### Cupertino 按钮
- **CupertinoButton** - Cupertino 按钮

### 通用按钮
- **InkWell** - 墨水井（点击效果）
- **InkResponse** - 墨水响应
- **GestureDetector** - 手势检测器
- **RawMaterialButton** - 原始 Material 按钮
- **ButtonBar** - 按钮栏

---

## 图像和图标 Widgets

### 图像
- **Image** - 图片
- **Image.asset** - 资源图片
- **Image.network** - 网络图片
- **Image.file** - 文件图片
- **Image.memory** - 内存图片
- **RawImage** - 原始图片
- **AssetBundle** - 资源包
- **ExactAssetImage** - 精确资源图片
- **NetworkImage** - 网络图片（ImageProvider）
- **FileImage** - 文件图片（ImageProvider）
- **MemoryImage** - 内存图片（ImageProvider）
- **DecorationImage** - 装饰图片

### 图标
- **Icon** - 图标
- **Icons** - Material 图标集
- **CupertinoIcons** - Cupertino 图标集
- **ImageIcon** - 图片图标
- **IconTheme** - 图标主题
- **IconButton** - 图标按钮

### 其他
- **CircleAvatar** - 圆形头像
- **FlutterLogo** - Flutter Logo
- **Placeholder** - 占位符
- **ShaderMask** - 着色器遮罩
- **BackdropFilter** - 背景滤镜

---

## 滚动 Widgets

### 滚动容器
- **SingleChildScrollView** - 单子滚动视图
- **ListView** - 列表视图
- **ListView.builder** - 构建器列表视图
- **ListView.separated** - 分隔列表视图
- **ListView.custom** - 自定义列表视图
- **GridView** - 网格视图
- **GridView.builder** - 构建器网格视图
- **GridView.count** - 计数网格视图
- **GridView.extent** - 范围网格视图
- **GridView.custom** - 自定义网格视图
- **PageView** - 页面视图
- **PageView.builder** - 构建器页面视图
- **PageView.custom** - 自定义页面视图
- **CustomScrollView** - 自定义滚动视图
- **NestedScrollView** - 嵌套滚动视图
- **ReorderableListView** - 可重排序列表视图

### 滚动控制
- **ScrollController** - 滚动控制器
- **PageController** - 页面控制器
- **ScrollPhysics** - 滚动物理
- **BouncingScrollPhysics** - 弹跳滚动物理
- **ClampingScrollPhysics** - 夹紧滚动物理
- **AlwaysScrollableScrollPhysics** - 总是可滚动物理
- **NeverScrollableScrollPhysics** - 从不可滚动物理
- **ScrollConfiguration** - 滚动配置
- **ScrollBehavior** - 滚动行为
- **Scrollable** - 可滚动
- **ScrollNotification** - 滚动通知
- **NotificationListener** - 通知监听器

### 滚动装饰
- **Scrollbar** - 滚动条
- **CupertinoScrollbar** - Cupertino 滚动条
- **RawScrollbar** - 原始滚动条
- **DraggableScrollableSheet** - 可拖动滚动表单
- **RefreshIndicator** - 刷新指示器

---

## 导航 Widgets

### 导航器
- **Navigator** - 导航器
- **MaterialPageRoute** - Material 页面路由
- **CupertinoPageRoute** - Cupertino 页面路由
- **PageRoute** - 页面路由
- **PageRouteBuilder** - 页面路由构建器
- **Route** - 路由
- **ModalRoute** - 模态路由
- **PopupRoute** - 弹出路由
- **TransitionRoute** - 过渡路由

### 导航组件
- **AppBar** - 应用栏
- **BottomNavigationBar** - 底部导航栏
- **NavigationBar** - 导航栏
- **NavigationRail** - 导航栏（侧边）
- **TabBar** - 标签栏
- **TabBarView** - 标签页视图
- **Drawer** - 抽屉
- **Hero** - 英雄动画
- **WillPopScope** - 返回拦截

---

## 对话框和弹窗 Widgets

### Material 对话框
- **AlertDialog** - 警告对话框
- **SimpleDialog** - 简单对话框
- **Dialog** - 对话框
- **AboutDialog** - 关于对话框
- **showDialog** - 显示对话框（函数）

### Cupertino 对话框
- **CupertinoAlertDialog** - Cupertino 警告对话框
- **CupertinoActionSheet** - Cupertino 操作表
- **CupertinoDialogAction** - Cupertino 对话框操作

### 底部面板
- **BottomSheet** - 底部面板
- **showModalBottomSheet** - 显示模态底部面板（函数）
- **showBottomSheet** - 显示底部面板（函数）
- **DraggableScrollableSheet** - 可拖动滚动表单

### 菜单
- **PopupMenuButton** - 弹出菜单按钮
- **PopupMenuItem** - 弹出菜单项
- **DropdownButton** - 下拉按钮
- **DropdownMenuItem** - 下拉菜单项
- **MenuAnchor** - 菜单锚点
- **MenuBar** - 菜单栏

### 提示
- **SnackBar** - 快餐栏
- **Tooltip** - 工具提示
- **Banner** - 横幅
- **MaterialBanner** - Material 横幅

---

## 动画 Widgets

### 隐式动画（自动动画）
- **AnimatedContainer** - 动画容器
- **AnimatedPadding** - 动画内边距
- **AnimatedAlign** - 动画对齐
- **AnimatedPositioned** - 动画定位
- **AnimatedPositionedDirectional** - 动画方向定位
- **AnimatedOpacity** - 动画透明度
- **AnimatedDefaultTextStyle** - 动画默认文本样式
- **AnimatedPhysicalModel** - 动画物理模型
- **AnimatedSize** - 动画大小
- **AnimatedCrossFade** - 动画交叉淡入
- **AnimatedSwitcher** - 动画切换器
- **AnimatedScale** - 动画缩放
- **AnimatedRotation** - 动画旋转
- **AnimatedSlide** - 动画滑动
- **TweenAnimationBuilder** - 补间动画构建器

### 显式动画（需要控制器）
- **AnimatedBuilder** - 动画构建器
- **AnimatedWidget** - 动画 Widget
- **RotationTransition** - 旋转过渡
- **ScaleTransition** - 缩放过渡
- **SizeTransition** - 大小过渡
- **SlideTransition** - 滑动过渡
- **FadeTransition** - 淡入淡出过渡
- **AlignTransition** - 对齐过渡
- **PositionedTransition** - 定位过渡
- **RelativePositionedTransition** - 相对定位过渡
- **DecoratedBoxTransition** - 装饰盒子过渡
- **DefaultTextStyleTransition** - 默认文本样式过渡

### 动画控制
- **AnimationController** - 动画控制器
- **Animation** - 动画
- **Tween** - 补间
- **ColorTween** - 颜色补间
- **SizeTween** - 大小补间
- **RectTween** - 矩形补间
- **IntTween** - 整数补间
- **CurveTween** - 曲线补间
- **Curve** - 曲线
- **Curves** - 曲线集合

### 列表动画
- **AnimatedList** - 动画列表
- **SliverAnimatedList** - Sliver 动画列表
- **AnimatedGrid** - 动画网格
- **SliverAnimatedGrid** - Sliver 动画网格

### 英雄动画
- **Hero** - 英雄动画

---

## 绘制和效果 Widgets

### 绘制
- **CustomPaint** - 自定义绘制
- **Canvas** - 画布
- **Paint** - 画笔
- **Path** - 路径
- **CustomPainter** - 自定义画家

### 裁剪
- **ClipRect** - 矩形裁剪
- **ClipRRect** - 圆角矩形裁剪
- **ClipOval** - 椭圆裁剪
- **ClipPath** - 路径裁剪

### 装饰
- **DecoratedBox** - 装饰盒子
- **ColoredBox** - 颜色盒子
- **Ink** - 墨水效果

### 效果
- **Opacity** - 透明度
- **ShaderMask** - 着色器遮罩
- **BackdropFilter** - 背景滤镜
- **ImageFiltered** - 图像滤镜
- **ColorFiltered** - 颜色滤镜
- **Transform** - 变换
- **RotatedBox** - 旋转盒子

### 阴影和模糊
- **PhysicalModel** - 物理模型
- **PhysicalShape** - 物理形状

---

## 交互模型 Widgets

### 手势检测
- **GestureDetector** - 手势检测器
- **RawGestureDetector** - 原始手势检测器
- **Listener** - 监听器
- **MouseRegion** - 鼠标区域
- **InkWell** - 墨水井
- **InkResponse** - 墨水响应
- **Draggable** - 可拖动
- **DragTarget** - 拖动目标
- **LongPressDraggable** - 长按可拖动
- **Dismissible** - 可滑动删除
- **InteractiveViewer** - 交互式查看器

### 焦点
- **Focus** - 焦点
- **FocusScope** - 焦点范围
- **FocusNode** - 焦点节点
- **FocusableActionDetector** - 可聚焦动作检测器
- **ExcludeFocus** - 排除焦点
- **FocusTraversalGroup** - 焦点遍历组

### 吸收和忽略
- **AbsorbPointer** - 吸收指针
- **IgnorePointer** - 忽略指针
- **ExcludeSemantics** - 排除语义

---

## 异步 Widgets

- **FutureBuilder** - Future 构建器
- **StreamBuilder** - Stream 构建器
- **ValueListenableBuilder** - 值监听构建器
- **AnimatedBuilder** - 动画构建器
- **LayoutBuilder** - 布局构建器

---

## 辅助功能 Widgets

- **Semantics** - 语义
- **MergeSemantics** - 合并语义
- **ExcludeSemantics** - 排除语义
- **BlockSemantics** - 阻止语义
- **Accessibility** - 辅助功能

---

## 平台集成 Widgets

### 平台视图
- **AndroidView** - Android 视图
- **UiKitView** - iOS 视图
- **HtmlElementView** - Web HTML 元素视图
- **PlatformViewLink** - 平台视图链接

### 原生交互
- **MethodChannel** - 方法通道
- **EventChannel** - 事件通道
- **BasicMessageChannel** - 基本消息通道

### 平台特定
- **DefaultTabController** - 默认标签控制器
- **WillPopScope** - 返回拦截
- **MediaQuery** - 媒体查询
- **SafeArea** - 安全区域
- **OrientationBuilder** - 方向构建器

---

## 其他实用 Widgets

### 状态管理
- **InheritedWidget** - 继承 Widget
- **InheritedModel** - 继承模型
- **ValueNotifier** - 值通知器
- **ValueListenableBuilder** - 值监听构建器
- **Provider** - 提供者（第三方，但常用）

### 工具类
- **Builder** - 构建器
- **StatefulBuilder** - 有状态构建器
- **LayoutBuilder** - 布局构建器
- **OrientationBuilder** - 方向构建器
- **MediaQuery** - 媒体查询
- **Theme** - 主题
- **Localizations** - 本地化
- **DefaultAssetBundle** - 默认资源包
- **WidgetsApp** - Widgets 应用
- **Title** - 标题（浏览器标题）

### 生命周期
- **WidgetsBindingObserver** - Widgets 绑定观察者
- **AppLifecycleListener** - 应用生命周期监听器

### 性能优化
- **RepaintBoundary** - 重绘边界
- **KeepAlive** - 保持活跃
- **AutomaticKeepAlive** - 自动保持活跃
- **Visibility** - 可见性
- **Offstage** - 离屏

### 可见性控制
- **Visibility** - 可见性
- **Offstage** - 离屏
- **Opacity** - 透明度（0 时仍占空间）
- **Placeholder** - 占位符

### 键
- **Key** - 键
- **ValueKey** - 值键
- **ObjectKey** - 对象键
- **UniqueKey** - 唯一键
- **GlobalKey** - 全局键
- **LabeledGlobalKey** - 标记全局键
- **PageStorageKey** - 页面存储键

### 调试
- **Banner** - 横幅
- **CheckedModeBanner** - 检查模式横幅
- **DebugPrint** - 调试打印
- **WidgetInspector** - Widget 检查器

### 国际化
- **Localizations** - 本地化
- **MaterialLocalizations** - Material 本地化
- **WidgetsLocalizations** - Widgets 本地化
- **DefaultMaterialLocalizations** - 默认 Material 本地化
- **DefaultWidgetsLocalizations** - 默认 Widgets 本地化

### 辅助工具
- **SizedBox.shrink** - 收缩盒子（零大小）
- **SizedBox.expand** - 扩展盒子（最大大小）
- **Spacer** - 间隔器
- **Divider** - 分隔线
- **VerticalDivider** - 垂直分隔线

---

## 附录：Widget 分类统计

### 按功能统计
- **基础 Widgets**: ~10 个
- **Material Design Widgets**: ~100+ 个
- **Cupertino Widgets**: ~40+ 个
- **布局 Widgets**: ~50+ 个
- **文本和输入 Widgets**: ~30+ 个
- **按钮 Widgets**: ~20+ 个
- **图像和图标 Widgets**: ~20+ 个
- **滚动 Widgets**: ~40+ 个
- **导航 Widgets**: ~20+ 个
- **对话框和弹窗 Widgets**: ~20+ 个
- **动画 Widgets**: ~40+ 个
- **绘制和效果 Widgets**: ~20+ 个
- **交互模型 Widgets**: ~20+ 个
- **异步 Widgets**: ~5 个
- **辅助功能 Widgets**: ~5 个
- **平台集成 Widgets**: ~10+ 个
- **其他实用 Widgets**: ~40+ 个

### 总计
Flutter 内置的核心 Widgets 超过 **450 个**，加上各种变体和辅助类，总数超过 **600 个**。

---

## 使用建议

### 1. 学习优先级
**初学者应优先掌握：**
- 基础：Text, Image, Icon, Container, Row, Column, Stack
- Material：Scaffold, AppBar, TextButton, TextField, ListView
- 导航：Navigator, MaterialPageRoute
- 状态：StatelessWidget, StatefulWidget

**进阶学习：**
- 动画：AnimatedContainer, Hero, AnimatedBuilder
- 自定义：CustomPaint, LayoutBuilder
- 性能优化：RepaintBoundary, KeepAlive

### 2. 组合而非继承
Flutter 推荐通过组合现有 Widgets 来创建复杂 UI，而不是继承。

### 3. 性能考虑
- 使用 `const` 构造函数
- 合理使用 `RepaintBoundary`
- 避免不必要的 `setState`
- 使用 `ListView.builder` 而非 `ListView`

### 4. 平台适配
- Material Design 适用于 Android
- Cupertino 适用于 iOS
- 可使用 `Platform.isAndroid` 进行平台判断

---

## 参考资源

- [Flutter 官方文档](https://flutter.dev/docs)
- [Flutter Widget 目录](https://flutter.dev/docs/development/ui/widgets)
- [Flutter API 文档](https://api.flutter.dev/)
- [Flutter 中文网](https://flutterchina.club/)

---

**最后更新**: 2025-12-26
**文档版本**: 1.0
**适用于**: Flutter 3.x+

