.class Lcom/sharptech/aerialc/ui/SettingPopupWindow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/SettingPopupWindow;->startRotateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$1;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 223
    iget-object p1, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$1;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-static {p1}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->access$100(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Landroid/widget/CheckedTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sharptech/aerialc/ui/SettingPopupWindow$1;->this$0:Lcom/sharptech/aerialc/ui/SettingPopupWindow;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/SettingPopupWindow;->access$000(Lcom/sharptech/aerialc/ui/SettingPopupWindow;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setSelected(Z)V

    return-void
.end method
