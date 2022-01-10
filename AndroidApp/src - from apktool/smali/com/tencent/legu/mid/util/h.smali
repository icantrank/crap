.class public Lcom/tencent/legu/mid/util/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    sput-object v0, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u93c3\u72b3\ue11d\u7ee0\u6941\u7876"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u934f\ue104\u631c\u95c8\u70b4\u7876"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u934f\ue104\u631c\u93c1\u7248\u5d41\u6d93\u8679\u2516"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x75

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u9354\u72b2\u7611\u934f\ue104\u631c\u6d93\u8679\u2516, \u7487\u75af\ue195\u7f03?"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "RSA/NONE/PKCS1PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    :goto_0
    sub-int v6, v4, v0

    if-lez v6, :cond_2

    sub-int v6, v4, v0

    if-le v6, v7, :cond_1

    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v0, 0x75

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_1
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0
.end method

.method public static a([BI)[[B
    .locals 8

    const/4 v1, 0x0

    array-length v0, p0

    div-int v3, v0, p1

    array-length v0, p0

    rem-int v4, v0, p1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int v2, v3, v0

    new-array v5, v2, [[B

    move v2, v1

    :goto_1
    add-int v6, v3, v0

    if-ge v2, v6, :cond_1

    new-array v6, p1, [B

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_0

    if-eqz v4, :cond_0

    mul-int v7, v2, p1

    invoke-static {p0, v7, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    mul-int v7, v2, p1

    invoke-static {p0, v7, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    return-object v5

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u7459\uff45\u7611\u934f\ue104\u631c\u6d93\u8679\u2516, \u7487\u75af\ue195\u7f03?"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    const-string v0, "RSA/NONE/PKCS1PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v0, 0x2

    sget-object v1, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object v0, Lcom/tencent/legu/mid/util/h;->a:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    const-string v1, ""

    invoke-static {p0, v0}, Lcom/tencent/legu/mid/util/h;->a([BI)[[B

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v4, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const-string v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u93c3\u72b3\ue11d\u7459\uff45\u7611\u7ee0\u6941\u7876"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u7459\uff45\u7611\u7ec9\u4f80\u631c\u95c8\u70b4\u7876,\u7487\u950b\ue5c5\u93cc?"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u7035\u55d8\u6783\u95c0\u57ae\u5bb3\u95c8\u70b4\u7876"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u7035\u55d8\u6783\u93c1\u7248\u5d41\u5bb8\u53c9\u5d2f\u9367?"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
