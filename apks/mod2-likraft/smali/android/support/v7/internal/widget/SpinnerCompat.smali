.class Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;,
        Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;,
        Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;,
        Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;,
        Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

.field private mGravity:I

.field private mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

.field private mTempAdapter:Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 114
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 125
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempRect:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 167
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_background:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    .line 170
    sget p4, Landroid/support/v7/appcompat/R$styleable;->Spinner_spinnerMode:I

    invoke-virtual {v0, p4, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result p4

    :cond_0
    const/4 v2, 0x0

    if-eqz p4, :cond_2

    const/4 v3, 0x1

    if-eq p4, v3, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    new-instance p4, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-direct {p4, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    sget p1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 p2, -0x2

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDropDownWidth:I

    .line 185
    sget p1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iput-object p4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    .line 189
    new-instance p1, Landroid/support/v7/internal/widget/SpinnerCompat$1;

    invoke-direct {p1, p0, p0, p4}, Landroid/support/v7/internal/widget/SpinnerCompat$1;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    goto :goto_0

    .line 175
    :cond_2
    new-instance p1, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;

    invoke-direct {p1, p0, v2}, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/support/v7/internal/widget/SpinnerCompat$1;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    .line 207
    :goto_0
    sget p1, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_gravity:I

    const/16 p2, 0x11

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mGravity:I

    .line 209
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    sget p2, Landroid/support/v7/appcompat/R$styleable;->Spinner_prompt:I

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 211
    sget p1, Landroid/support/v7/appcompat/R$styleable;->Spinner_disableChildrenWhenDisabled:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDisableChildrenWhenDisabled:Z

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 218
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;

    if-eqz p1, :cond_3

    .line 219
    iget-object p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {p2, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;

    .line 224
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/graphics/Rect;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 2

    .line 527
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setUpChild(Landroid/view/View;Z)V

    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 541
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setUpChild(Landroid/view/View;Z)V

    return-object p1
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 5

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 562
    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 565
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 566
    iget-boolean p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDisableChildrenWhenDisabled:Z

    if-eqz p2, :cond_2

    .line 567
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 571
    :cond_2
    iget p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 573
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mWidthMeasureSpec:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 577
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 583
    iget-object p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 592
    invoke-virtual {p1, v1, p2, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    .line 380
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 383
    invoke-direct {p0, v1, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 384
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-ltz v2, :cond_2

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int v1, v0, v2

    :cond_2
    return v1
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 328
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDropDownWidth:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 635
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 5

    .line 461
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 462
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    .line 464
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->handleDataChanged()V

    .line 469
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mItemCount:I

    if-nez v0, :cond_1

    .line 470
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->resetList()V

    return-void

    .line 474
    :cond_1
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mNextSelectedPosition:I

    if-ltz v0, :cond_2

    .line 475
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mNextSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelectedPositionInt(I)V

    .line 478
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->recycleAllViews()V

    .line 481
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    .line 484
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSelectedPosition:I

    iput v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mFirstPosition:I

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_5

    .line 486
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSelectedPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 489
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 490
    iget v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mGravity:I

    invoke-static {v4, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v1, :cond_4

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr p1, p2

    goto :goto_0

    .line 493
    :cond_4
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    sub-int/2addr p1, v2

    .line 499
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 503
    :cond_5
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->clear()V

    .line 505
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->checkSelectionChanged()V

    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDataChanged:Z

    .line 510
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mNeedSync:Z

    .line 511
    iget p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setNextSelectedPositionInt(I)V

    return-void
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 646
    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 648
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 653
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 654
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 656
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    move v3, v0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 658
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    .line 663
    :cond_1
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 664
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 665
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 670
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 675
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 676
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    add-int/2addr v3, p1

    :cond_4
    return v3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 611
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 612
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 397
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 447
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 448
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mInLayout:Z

    const/4 p1, 0x0

    .line 449
    invoke-virtual {p0, p1, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->layout(IZ)V

    .line 450
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 430
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 431
    iget-object p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result p2

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 691
    check-cast p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    .line 693
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 695
    iget-boolean p1, p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->showDropdown:Z

    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 698
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$2;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/SpinnerCompat$2;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    .line 711
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 684
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 685
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->showDropdown:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 425
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 2

    .line 597
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 602
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->show()V

    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 53
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 360
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 362
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->clear()V

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 365
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spinner adapter view type count must be 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    if-eqz v0, :cond_2

    .line 370
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 372
    :cond_2
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;

    :goto_1
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 288
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->setHorizontalOffset(I)V

    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->setVerticalOffset(I)V

    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    instance-of v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    if-nez v0, :cond_0

    const-string p1, "Spinner"

    const-string v0, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDropDownWidth:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 333
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 334
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 349
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mGravity:I

    if-eq v0, p1, :cond_1

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    .line 353
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mGravity:I

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 1

    .line 412
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setOnItemClickListenerInt(Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0

    .line 416
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setOnItemClickListener(Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 234
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    instance-of v1, v0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    if-nez v1, :cond_0

    const-string p1, "Spinner"

    const-string v0, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    .line 235
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_0
    check-cast v0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 620
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mPopup:Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPromptId(I)V
    .locals 1

    .line 628
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method
