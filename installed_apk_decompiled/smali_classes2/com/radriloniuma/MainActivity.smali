.class public final Lcom/radriloniuma/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/radriloniuma/MainActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,247:1\n1#2:248\n37#3,2:249\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/radriloniuma/MainActivity\n*L\n143#1:249,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0012\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015J\u0008\u0010\u0012\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/radriloniuma/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "modulePanel",
        "Landroidx/compose/ui/platform/ComposeView;",
        "ubuntuPanel",
        "Landroid/widget/FrameLayout;",
        "webView",
        "Landroid/webkit/WebView;",
        "checkAndRequestAllPermissions",
        "",
        "force",
        "",
        "getPermissionsSummaryJson",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private modulePanel:Landroidx/compose/ui/platform/ComposeView;

.field private ubuntuPanel:Landroid/widget/FrameLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$FNPROmmhFxH3Uu6cwGF7IIX9vtE(Lcom/radriloniuma/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/radriloniuma/MainActivity;->onCreate$lambda$5(Lcom/radriloniuma/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JOMbyGmgc8U_z0BDVlzPMo_jOIs(Lcom/radriloniuma/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/radriloniuma/MainActivity;->onCreate$lambda$6(Lcom/radriloniuma/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic checkAndRequestAllPermissions$default(Lcom/radriloniuma/MainActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->checkAndRequestAllPermissions(Z)V

    return-void
.end method

.method private static final onCreate$lambda$5(Lcom/radriloniuma/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcom/radriloniuma/MainActivity;->modulePanel:Landroidx/compose/ui/platform/ComposeView;

    if-nez p0, :cond_1

    const-string p0, "modulePanel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$6(Lcom/radriloniuma/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 75
    iget-object p0, p0, Lcom/radriloniuma/MainActivity;->modulePanel:Landroidx/compose/ui/platform/ComposeView;

    if-nez p0, :cond_1

    const-string p0, "modulePanel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final checkAndRequestAllPermissions(Z)V
    .locals 4

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 114
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/radriloniuma/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 120
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const-string v1, "package:"

    if-lt p1, v0, :cond_1

    .line 121
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_4

    .line 123
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 135
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 136
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/radriloniuma/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/radriloniuma/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_3
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 250
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/radriloniuma/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 149
    :catch_1
    :cond_4
    :goto_0
    const-string p1, "power"

    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/os/PowerManager;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/os/PowerManager;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 152
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 158
    :catch_2
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    :catch_3
    :cond_6
    :goto_2
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 169
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    .line 170
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 171
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 169
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 182
    :catch_4
    :cond_7
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p1

    if-nez p1, :cond_8

    .line 184
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    .line 185
    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 186
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/radriloniuma/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_8
    return-void
.end method

.method public final getPermissionsSummaryJson()Ljava/lang/String;
    .locals 7

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 198
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/radriloniuma/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 202
    :goto_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/radriloniuma/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/os/PowerManager;

    if-eqz v4, :cond_2

    check-cast v1, Landroid/os/PowerManager;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v3

    .line 209
    :goto_3
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    .line 212
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_4

    .line 213
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v2

    goto :goto_4

    .line 215
    :cond_4
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/radriloniuma/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    .line 219
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/radriloniuma/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v3

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"notifications\":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\"battery\":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"overlay\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"storage\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"install\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 31
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v1, Landroid/content/Intent;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-class v2, Lcom/radriloniuma/RadriloniumaForegroundService;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/radriloniuma/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    .line 43
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x5

    const/16 v4, 0x11

    const/16 v9, 0x8

    .line 44
    invoke-static {v2, v9, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 46
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 47
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x13

    const/16 v5, 0x22

    const/16 v6, 0xd

    .line 48
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "RADRILONIUMA"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "OS MODULE"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    move-object v4, v11

    check-cast v4, Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    move-object v4, v12

    check-cast v4, Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/radriloniuma/MainActivity;->ubuntuPanel:Landroid/widget/FrameLayout;

    .line 57
    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    .line 63
    iget-object v2, v0, Lcom/radriloniuma/MainActivity;->ubuntuPanel:Landroid/widget/FrameLayout;

    const-string v13, "ubuntuPanel"

    if-nez v2, :cond_0

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget-object v4, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v15, "webView"

    if-nez v4, :cond_1

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1
    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v7, Landroidx/compose/ui/platform/ComposeView;

    const/4 v6, 0x6

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v7

    move-object v14, v7

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual {v14, v9}, Landroidx/compose/ui/platform/ComposeView;->setVisibility(I)V

    .line 66
    new-instance v2, Lcom/radriloniuma/MainActivity$onCreate$1$1;

    invoke-direct {v2, v0}, Lcom/radriloniuma/MainActivity$onCreate$1$1;-><init>(Lcom/radriloniuma/MainActivity;)V

    const v3, -0x37e8a7b2

    invoke-static {v3, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v14, v2}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 64
    iput-object v14, v0, Lcom/radriloniuma/MainActivity;->modulePanel:Landroidx/compose/ui/platform/ComposeView;

    .line 68
    iget-object v2, v0, Lcom/radriloniuma/MainActivity;->ubuntuPanel:Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    iget-object v3, v0, Lcom/radriloniuma/MainActivity;->modulePanel:Landroidx/compose/ui/platform/ComposeView;

    if-nez v3, :cond_3

    const-string v3, "modulePanel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3
    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Lcom/radriloniuma/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/radriloniuma/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/radriloniuma/MainActivity;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v2, Lcom/radriloniuma/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/radriloniuma/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/radriloniuma/MainActivity;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/radriloniuma/MainActivity;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v1, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_4

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "getSettings(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 83
    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 84
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 86
    iget-object v1, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_5

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_5
    new-instance v2, Lcom/radriloniuma/MainActivity$onCreate$4;

    invoke-direct {v2}, Lcom/radriloniuma/MainActivity$onCreate$4;-><init>()V

    check-cast v2, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    iget-object v1, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_6

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    iget-object v1, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_7
    new-instance v2, Lcom/radriloniuma/RuntimeSessionBridge;

    invoke-direct {v2, v0}, Lcom/radriloniuma/RuntimeSessionBridge;-><init>(Lcom/radriloniuma/MainActivity;)V

    const-string v3, "RuntimeSession"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v1, v0, Lcom/radriloniuma/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_8

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_0

    :cond_8
    move-object v14, v1

    :goto_0
    const-string v1, "file:///android_asset/index.html"

    invoke-virtual {v14, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, v8}, Lcom/radriloniuma/MainActivity;->checkAndRequestAllPermissions(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 226
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
