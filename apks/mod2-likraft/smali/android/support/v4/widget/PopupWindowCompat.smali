.class public Landroid/support/v4/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;,
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 137
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 139
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 141
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 143
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_0

    .line 145
    :cond_3
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1

    .line 191
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result p0

    return p0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1

    .line 213
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result p0

    return p0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 1

    .line 181
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 1

    .line 204
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    .line 171
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method
