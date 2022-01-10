.class public Lcom/sharptech/aerialc/util/ProtocolContent;
.super Ljava/lang/Object;
.source "ProtocolContent.java"


# static fields
.field public static final OSD_OFF:B = 0x2t

.field public static final OSD_ON:B = 0x1t

.field public static final TYPE_ACK:B = 0x5t

.field public static final TYPE_FREQUENCY:B = 0x2t

.field public static final TYPE_INFO:B = 0x4t

.field public static final TYPE_OSD:B = 0x1t

.field public static final TYPE_POWER:B = 0x3t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TypeToString(B)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ACK"

    goto :goto_0

    :pswitch_1
    const-string v0, "INFO"

    goto :goto_0

    :pswitch_2
    const-string v0, "POWER"

    goto :goto_0

    :pswitch_3
    const-string v0, "FREQUENCY"

    goto :goto_0

    :pswitch_4
    const-string v0, "OSD"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
