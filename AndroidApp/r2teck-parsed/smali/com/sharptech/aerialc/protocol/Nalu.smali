.class public Lcom/sharptech/aerialc/protocol/Nalu;
.super Ljava/lang/Object;
.source "Nalu.java"


# instance fields
.field private packages:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sharptech/aerialc/protocol/Nalu;->packages:[B

    return-void
.end method


# virtual methods
.method public getPackages()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/sharptech/aerialc/protocol/Nalu;->packages:[B

    return-object v0
.end method

.method public setPackages([B)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/sharptech/aerialc/protocol/Nalu;->packages:[B

    return-void
.end method
