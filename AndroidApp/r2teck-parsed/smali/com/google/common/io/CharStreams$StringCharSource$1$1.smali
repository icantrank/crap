.class Lcom/google/common/io/CharStreams$StringCharSource$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams$StringCharSource$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field lines:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/io/CharStreams$StringCharSource$1;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharStreams$StringCharSource$1;)V
    .locals 1

    .line 117
    iput-object p1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->this$1:Lcom/google/common/io/CharStreams$StringCharSource$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 118
    invoke-static {}, Lcom/google/common/io/CharStreams$StringCharSource;->access$200()Lcom/google/common/base/Splitter;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->this$1:Lcom/google/common/io/CharStreams$StringCharSource$1;

    iget-object v0, v0, Lcom/google/common/io/CharStreams$StringCharSource$1;->this$0:Lcom/google/common/io/CharStreams$StringCharSource;

    invoke-static {v0}, Lcom/google/common/io/CharStreams$StringCharSource;->access$100(Lcom/google/common/io/CharStreams$StringCharSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method