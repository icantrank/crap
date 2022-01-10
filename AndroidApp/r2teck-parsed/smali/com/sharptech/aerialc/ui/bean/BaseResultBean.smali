.class public Lcom/sharptech/aerialc/ui/bean/BaseResultBean;
.super Ljava/lang/Object;
.source "BaseResultBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/BaseResultBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/BaseResultBean;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sharptech/aerialc/ui/bean/BaseResultBean;->status:I

    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/BaseResultBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setResults(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/BaseResultBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/sharptech/aerialc/ui/bean/BaseResultBean;->status:I

    return-void
.end method
