.class final enum Lcom/sharptech/aerialc/ui/UDPUtils$State;
.super Ljava/lang/Enum;
.source "UDPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sharptech/aerialc/ui/UDPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sharptech/aerialc/ui/UDPUtils$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sharptech/aerialc/ui/UDPUtils$State;

.field public static final enum PPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

.field public static final enum SPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

.field public static final enum START_E:Lcom/sharptech/aerialc/ui/UDPUtils$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;

    const-string v1, "START_E"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sharptech/aerialc/ui/UDPUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;->START_E:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    .line 63
    new-instance v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;

    const-string v1, "SPS_DONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sharptech/aerialc/ui/UDPUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;->SPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    .line 64
    new-instance v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;

    const-string v1, "PPS_DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sharptech/aerialc/ui/UDPUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;->PPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    const/4 v0, 0x3

    .line 61
    new-array v0, v0, [Lcom/sharptech/aerialc/ui/UDPUtils$State;

    sget-object v1, Lcom/sharptech/aerialc/ui/UDPUtils$State;->START_E:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sharptech/aerialc/ui/UDPUtils$State;->SPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sharptech/aerialc/ui/UDPUtils$State;->PPS_DONE:Lcom/sharptech/aerialc/ui/UDPUtils$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;->$VALUES:[Lcom/sharptech/aerialc/ui/UDPUtils$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sharptech/aerialc/ui/UDPUtils$State;
    .locals 1

    .line 61
    const-class v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sharptech/aerialc/ui/UDPUtils$State;

    return-object p0
.end method

.method public static values()[Lcom/sharptech/aerialc/ui/UDPUtils$State;
    .locals 1

    .line 61
    sget-object v0, Lcom/sharptech/aerialc/ui/UDPUtils$State;->$VALUES:[Lcom/sharptech/aerialc/ui/UDPUtils$State;

    invoke-virtual {v0}, [Lcom/sharptech/aerialc/ui/UDPUtils$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sharptech/aerialc/ui/UDPUtils$State;

    return-object v0
.end method
