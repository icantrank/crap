.class public final enum Lcom/tencent/legu/stat/event/EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/legu/stat/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDITION:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum BACKGROUND:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum CUSTOM:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum ERROR:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum MONITOR_STAT:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum MTA_GAME_USER:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum NETWORK_DETECTOR:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum NETWORK_MONITOR:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum ONCE:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum PAGE_VIEW:Lcom/tencent/legu/stat/event/EventType;

.field public static final enum SESSION_ENV:Lcom/tencent/legu/stat/event/EventType;

.field private static final synthetic b:[Lcom/tencent/legu/stat/event/EventType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "PAGE_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->PAGE_VIEW:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "SESSION_ENV"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->SESSION_ENV:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->ERROR:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->BACKGROUND:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "ONCE"

    invoke-direct {v0, v1, v7, v8}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->ONCE:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "CUSTOM"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->CUSTOM:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "ADDITION"

    const/4 v2, 0x6

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->ADDITION:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "MONITOR_STAT"

    const/4 v2, 0x7

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->MONITOR_STAT:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "MTA_GAME_USER"

    const/16 v2, 0x8

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->MTA_GAME_USER:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "NETWORK_MONITOR"

    const/16 v2, 0x9

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->NETWORK_MONITOR:Lcom/tencent/legu/stat/event/EventType;

    new-instance v0, Lcom/tencent/legu/stat/event/EventType;

    const-string v1, "NETWORK_DETECTOR"

    const/16 v2, 0xa

    const/16 v3, 0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/legu/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/legu/stat/event/EventType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/tencent/legu/stat/event/EventType;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/legu/stat/event/EventType;->PAGE_VIEW:Lcom/tencent/legu/stat/event/EventType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->SESSION_ENV:Lcom/tencent/legu/stat/event/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->ERROR:Lcom/tencent/legu/stat/event/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->BACKGROUND:Lcom/tencent/legu/stat/event/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->ONCE:Lcom/tencent/legu/stat/event/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/legu/stat/event/EventType;->CUSTOM:Lcom/tencent/legu/stat/event/EventType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/legu/stat/event/EventType;->ADDITION:Lcom/tencent/legu/stat/event/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/legu/stat/event/EventType;->MONITOR_STAT:Lcom/tencent/legu/stat/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/legu/stat/event/EventType;->MTA_GAME_USER:Lcom/tencent/legu/stat/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/legu/stat/event/EventType;->NETWORK_MONITOR:Lcom/tencent/legu/stat/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/legu/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/legu/stat/event/EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/legu/stat/event/EventType;->b:[Lcom/tencent/legu/stat/event/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/legu/stat/event/EventType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    const-class v0, Lcom/tencent/legu/stat/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/legu/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/legu/stat/event/EventType;->b:[Lcom/tencent/legu/stat/event/EventType;

    invoke-virtual {v0}, [Lcom/tencent/legu/stat/event/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/legu/stat/event/EventType;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/legu/stat/event/EventType;->a:I

    return v0
.end method
