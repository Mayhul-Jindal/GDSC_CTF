.class Landroid/support/v7/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 320
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 323
    iget-object p1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {p1}, Landroid/support/v7/widget/SearchView;->access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {p1}, Landroid/support/v7/widget/SearchView;->access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-interface {p1, v0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
