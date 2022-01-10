.class public Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;
.super Landroid/os/Binder;
.source "ScreenRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/service/ScreenRecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenRecordBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/service/ScreenRecordService;


# direct methods
.method public constructor <init>(Lcom/sharptech/aerialc/service/ScreenRecordService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;->this$0:Lcom/sharptech/aerialc/service/ScreenRecordService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenRecordService()Lcom/sharptech/aerialc/service/ScreenRecordService;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sharptech/aerialc/service/ScreenRecordService$ScreenRecordBinder;->this$0:Lcom/sharptech/aerialc/service/ScreenRecordService;

    return-object v0
.end method
