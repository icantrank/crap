.class Lcom/sharptech/aerialc/ui/UDPUtils$1;
.super Ljava/util/TimerTask;
.source "UDPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sharptech/aerialc/ui/UDPUtils;->startUDPBroadCast(Lcom/sharptech/aerialc/ui/UDPUtils$OnReceiveDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sharptech/aerialc/ui/UDPUtils;


# direct methods
.method constructor <init>(Lcom/sharptech/aerialc/ui/UDPUtils;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/UDPUtils$1;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/UDPUtils$1;->this$0:Lcom/sharptech/aerialc/ui/UDPUtils;

    invoke-static {v0}, Lcom/sharptech/aerialc/ui/UDPUtils;->access$000(Lcom/sharptech/aerialc/ui/UDPUtils;)V

    return-void
.end method
