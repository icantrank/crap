.class public Lcom/tencent/StubShell/FileUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ASSET_SPLIT_BASE:I = 0x0

.field public static final SIMPLE_ASSET_COMPARATOR:Lcom/tencent/StubShell/c;

.field public static final SIMPLE_COMPARATOR:Lcom/tencent/StubShell/d;

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/StubShell/a;

    invoke-direct {v0}, Lcom/tencent/StubShell/a;-><init>()V

    sput-object v0, Lcom/tencent/StubShell/FileUtils;->SIMPLE_COMPARATOR:Lcom/tencent/StubShell/d;

    new-instance v0, Lcom/tencent/StubShell/b;

    invoke-direct {v0}, Lcom/tencent/StubShell/b;-><init>()V

    sput-object v0, Lcom/tencent/StubShell/FileUtils;->SIMPLE_ASSET_COMPARATOR:Lcom/tencent/StubShell/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/StubShell/FileUtils;->SIMPLE_ASSET_COMPARATOR:Lcom/tencent/StubShell/c;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/StubShell/FileUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/StubShell/c;)Z

    move-result v0

    return v0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/StubShell/c;)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/StubShell/FileUtils;->performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/StubShell/c;)Z

    move-result v0

    return v0
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/StubShell/FileUtils;->copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z
    .locals 1

    sget-object v0, Lcom/tencent/StubShell/FileUtils;->SIMPLE_COMPARATOR:Lcom/tencent/StubShell/d;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/StubShell/FileUtils;->copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/StubShell/d;)Z

    move-result v0

    return v0
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/StubShell/d;)Z
    .locals 8

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/StubShell/FileUtils;->performCopyFile(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/StubShell/d;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6, p2}, Lcom/tencent/StubShell/FileUtils;->copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;Z)V

    return-void
.end method

.method public static delete(Ljava/io/File;Z)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-static {v3, p1}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deleteFilesStartWithGivenString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAssetLength(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/StubShell/c;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/tencent/StubShell/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/tencent/StubShell/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3, p0, p1, v5}, Lcom/tencent/StubShell/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v2, v3

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v5}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;)V

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-gtz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-static {v4}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_6
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    :goto_3
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    :try_start_6
    invoke-static {v5}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v1}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v1, v2

    goto :goto_2

    :cond_7
    move-object v0, v1

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_5
    invoke-static {v4}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v4

    goto :goto_4
.end method

.method private static performCopyFile(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/StubShell/d;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v0, v6

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_5

    invoke-interface {p3, p0, p1}, Lcom/tencent/StubShell/d;->a(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v0, v7

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;)V

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;)V

    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v0, v6

    goto :goto_0

    :cond_8
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    const-wide/16 v2, 0x0

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v1}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_6
    invoke-static {p1}, Lcom/tencent/StubShell/FileUtils;->delete(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v1}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    move v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_2
    invoke-static {v2}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/tencent/StubShell/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
