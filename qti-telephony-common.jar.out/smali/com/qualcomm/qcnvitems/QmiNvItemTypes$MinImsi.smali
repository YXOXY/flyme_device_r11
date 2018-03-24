.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinImsi"
.end annotation


# static fields
.field public static final IMSI11_12_SIZE:I = 0x2

.field public static final IMSI_S1_SIZE:I = 0x7

.field public static final IMSI_S2_SIZE:I = 0x3

.field public static final MCC_SIZE:I = 0x3


# instance fields
.field protected imsi11_12:Ljava/lang/String;

.field protected imsiS1:Ljava/lang/String;

.field protected imsiS2:Ljava/lang/String;

.field protected mcc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 213
    const-string/jumbo v0, "000"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setMcc(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "00"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsi11_12(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "0000000"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiS1(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "000"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiS2(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "imsi11_12"    # Ljava/lang/String;
    .param p3, "imsiS1"    # Ljava/lang/String;
    .param p4, "imsiS2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 221
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setMcc(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsi11_12(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiS1(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiS2(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 227
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 228
    array-length v2, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 229
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 232
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_2
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    .line 241
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_3
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    .line 245
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_4

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 227
    :cond_4
    return-void
.end method

.method public static minToPhString(IS)Ljava/lang/String;
    .locals 8
    .param p0, "min1Value"    # I
    .param p1, "min2Value"    # S

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x0

    .line 343
    const/16 v5, 0xa

    :try_start_0
    new-array v2, v5, [Ljava/lang/String;

    .line 344
    const-string/jumbo v5, "1"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string/jumbo v5, "2"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string/jumbo v5, "3"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const-string/jumbo v5, "4"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const-string/jumbo v5, "5"

    const/4 v6, 0x4

    aput-object v5, v2, v6

    const-string/jumbo v5, "6"

    const/4 v6, 0x5

    aput-object v5, v2, v6

    const-string/jumbo v5, "7"

    const/4 v6, 0x6

    aput-object v5, v2, v6

    const-string/jumbo v5, "8"

    const/4 v6, 0x7

    aput-object v5, v2, v6

    const-string/jumbo v5, "9"

    const/16 v6, 0x8

    aput-object v5, v2, v6

    const-string/jumbo v5, "0"

    const/16 v6, 0x9

    aput-object v5, v2, v6

    .line 347
    .local v2, "table":[Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 350
    .local v1, "phString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, p1, 0x64

    rem-int/lit8 v6, v6, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, p1, 0xa

    rem-int/lit8 v6, v6, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v6, p1, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    shr-int/lit8 v3, p0, 0xe

    .line 356
    .local v3, "tempValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v3, 0x64

    rem-int/lit8 v6, v6, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v3, 0xa

    rem-int/lit8 v6, v6, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v6, v3, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    and-int/lit16 v3, p0, 0x3fff

    .line 362
    shr-int/lit8 v5, v3, 0xa

    and-int/lit8 v3, v5, 0xf

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v3, v7, :cond_0

    move v3, v4

    .end local v3    # "tempValue":I
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    and-int/lit16 v3, p0, 0x3ff

    .line 367
    .restart local v3    # "tempValue":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, v3, 0x64

    rem-int/lit8 v5, v5, 0xa

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, v3, 0xa

    rem-int/lit8 v5, v5, 0xa

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v5, v3, 0xa

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 371
    return-object v1

    .line 372
    .end local v1    # "phString":Ljava/lang/String;
    .end local v2    # "table":[Ljava/lang/String;
    .end local v3    # "tempValue":I
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public static phStringToMin1(Ljava/lang/String;)I
    .locals 7
    .param p0, "phString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 378
    new-array v2, v4, [I

    .local v2, "table":[I
    fill-array-data v2, :array_0

    .line 382
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 383
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string/jumbo v5, "Invalid phone number"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 388
    .local v1, "ph":[C
    const/4 v0, 0x0

    .line 391
    .local v0, "min1":I
    const/4 v5, 0x3

    aget-char v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget v5, v2, v5

    add-int/lit8 v5, v5, 0x0

    int-to-short v3, v5

    .line 392
    .local v3, "tempValue":I
    mul-int/lit8 v5, v3, 0xa

    const/4 v6, 0x4

    aget-char v6, v1, v6

    add-int/lit8 v6, v6, -0x30

    aget v6, v2, v6

    add-int/2addr v5, v6

    int-to-short v3, v5

    .line 393
    mul-int/lit8 v5, v3, 0xa

    const/4 v6, 0x5

    aget-char v6, v1, v6

    add-int/lit8 v6, v6, -0x30

    aget v6, v2, v6

    add-int/2addr v5, v6

    int-to-short v3, v5

    .line 394
    shl-int/lit8 v3, v3, 0xe

    .line 395
    move v0, v3

    .line 397
    const/4 v5, 0x6

    aget-char v5, v1, v5

    add-int/lit8 v3, v5, -0x30

    .line 398
    if-nez v3, :cond_1

    move v3, v4

    .line 399
    :cond_1
    shl-int/lit8 v3, v3, 0xa

    .line 400
    add-int/2addr v0, v3

    .line 403
    const/4 v4, 0x7

    aget-char v4, v1, v4

    add-int/lit8 v4, v4, -0x30

    aget v4, v2, v4

    add-int/lit8 v4, v4, 0x0

    int-to-short v3, v4

    .line 404
    mul-int/lit8 v4, v3, 0xa

    const/16 v5, 0x8

    aget-char v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-short v3, v4

    .line 405
    mul-int/lit8 v4, v3, 0xa

    const/16 v5, 0x9

    aget-char v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-short v3, v4

    .line 407
    add-int/2addr v0, v3

    .line 409
    return v0

    .line 378
    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public static phStringToMin2(Ljava/lang/String;)S
    .locals 6
    .param p0, "phString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 414
    new-array v2, v5, [S

    .local v2, "table":[S
    fill-array-data v2, :array_0

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 419
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string/jumbo v4, "Invalid phone number"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 426
    .local v1, "ph":[C
    aget-char v3, v1, v4

    add-int/lit8 v3, v3, -0x30

    aget-short v3, v2, v3

    add-int/lit8 v3, v3, 0x0

    int-to-short v0, v3

    .line 427
    .local v0, "min2":S
    mul-int/lit8 v3, v0, 0xa

    const/4 v4, 0x1

    aget-char v4, v1, v4

    add-int/lit8 v4, v4, -0x30

    aget-short v4, v2, v4

    add-int/2addr v3, v4

    int-to-short v0, v3

    .line 428
    mul-int/lit8 v3, v0, 0xa

    const/4 v4, 0x2

    aget-char v4, v1, v4

    add-int/lit8 v4, v4, -0x30

    aget-short v4, v2, v4

    add-int/2addr v3, v4

    int-to-short v0, v3

    .line 430
    return v0

    .line 414
    nop

    :array_0
    .array-data 2
        0x9s
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data
.end method


# virtual methods
.method public getImsi11_12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiS1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiS2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 312
    const/16 v0, 0xf

    return v0
.end method

.method public setImsi11_12(Ljava/lang/String;)V
    .locals 2
    .param p1, "imsi11_12"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setImsiNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "phNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 300
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 303
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x7

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiS1(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->setImsiS2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setImsiS1(Ljava/lang/String;)V
    .locals 2
    .param p1, "imsiS1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 278
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setImsiS2(Ljava/lang/String;)V
    .locals 2
    .param p1, "imsiS2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 289
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 256
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 317
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 318
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 319
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 328
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 330
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imsi11_12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsi11_12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imsiS1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imsiS2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;->imsiS2:Ljava/lang/String;

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
