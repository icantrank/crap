.class public Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;
.super Ljava/lang/Object;
.source "UpdateResultBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/ui/bean/UpdateResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private newFunction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private updateUrl:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean$1;

    invoke-direct {v0}, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean$1;-><init>()V

    sput-object v0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionCode:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->description:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->updateUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewFunction()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->newFunction:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNewFunction(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->newFunction:Ljava/util/List;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget p2, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/sharptech/aerialc/ui/bean/UpdateResultBean$DataBean;->updateUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
