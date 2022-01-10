.class Lcom/google/common/base/internal/Finalizer$Memo;
.super Ljava/lang/Object;
.source "Finalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/internal/Finalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Memo"
.end annotation


# instance fields
.field finalizer:Lcom/google/common/base/internal/Finalizer;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/common/base/internal/Finalizer;Ljava/lang/Thread;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/base/internal/Finalizer$Memo;->finalizer:Lcom/google/common/base/internal/Finalizer;

    .line 65
    iput-object p2, p0, Lcom/google/common/base/internal/Finalizer$Memo;->thread:Ljava/lang/Thread;

    return-void
.end method
