.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredVoiceSo"
.end annotation


# static fields
.field public static final EVRC_CAPABILITY_SIZE:I = 0x1

.field public static final HOME_ORIG_VOICE_SO_SIZE:I = 0x2

.field public static final HOME_PAGE_VOICE_SO_SIZE:I = 0x2

.field public static final NAM_ID_SIZE:I = 0x1

.field public static final ROAM_ORIG_VOICE_SO_SIZE:I = 0x2

.field public static final VOICE_13K:I = 0x8000

.field public static final VOICE_13K_IS733:I = 0x11

.field public static final VOICE_4GV_NARROW_BAND:I = 0x44

.field public static final VOICE_4GV_WIDE_BAND:I = 0x46

.field public static final VOICE_EVRC:I = 0x3

.field public static final VOICE_IS_96:I = 0x8001

.field public static final VOICE_IS_96_A:I = 0x1

.field public static final VOICE_WVRC:I = 0x8023


# instance fields
.field private evrcCapability:S

.field private homeOrigVoiceSo:I

.field private homePageVoiceSo:I

.field private namId:S

.field private roamOrigVoiceSo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    return-void
.end method

.method public constructor <init>(SIII)V
    .locals 6
    .param p1, "evrcCapability"    # S
    .param p2, "homePageVoiceSo"    # I
    .param p3, "homeOrigVoiceSo"    # I
    .param p4, "roamOrigVoiceSo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1315
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1314
    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;-><init>(SIIIS)V

    .line 1313
    return-void
.end method

.method public constructor <init>(SIIIS)V
    .locals 0
    .param p1, "evrcCapability"    # S
    .param p2, "homePageVoiceSo"    # I
    .param p3, "homeOrigVoiceSo"    # I
    .param p4, "roamOrigVoiceSo"    # I
    .param p5, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 1305
    invoke-virtual {p0, p5}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->setNamId(S)V

    .line 1306
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->setEvrcCapability(S)V

    .line 1307
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->setHomePageVoiceSo(I)V

    .line 1308
    invoke-virtual {p0, p3}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->setHomeOrigVoiceSo(I)V

    .line 1309
    invoke-virtual {p0, p4}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->setRoamOrigVoiceSo(I)V

    .line 1304
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 1319
    array-length v1, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1320
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1322
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1323
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->namId:S

    .line 1324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->evrcCapability:S

    .line 1325
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homePageVoiceSo:I

    .line 1326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homeOrigVoiceSo:I

    .line 1327
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->roamOrigVoiceSo:I

    .line 1318
    return-void
.end method


# virtual methods
.method public getEvrcCapability()S
    .locals 1

    .prologue
    .line 1344
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->evrcCapability:S

    return v0
.end method

.method public getHomeOrigVoiceSo()I
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homeOrigVoiceSo:I

    return v0
.end method

.method public getHomePageVoiceSo()I
    .locals 1

    .prologue
    .line 1357
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homePageVoiceSo:I

    return v0
.end method

.method public getNamId()S
    .locals 1

    .prologue
    .line 1331
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->namId:S

    return v0
.end method

.method public getRoamOrigVoiceSo()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->roamOrigVoiceSo:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1397
    const/16 v0, 0x8

    return v0
.end method

.method public setEvrcCapability(S)V
    .locals 3
    .param p1, "evrcCapability"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1349
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->evrcCapability:S

    .line 1347
    return-void

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHomeOrigVoiceSo(I)V
    .locals 3
    .param p1, "homeOrigVoiceSo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1375
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homeOrigVoiceSo:I

    .line 1373
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHomePageVoiceSo(I)V
    .locals 3
    .param p1, "homePageVoiceSo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1362
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homePageVoiceSo:I

    .line 1360
    return-void

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNamId(S)V
    .locals 3
    .param p1, "namId"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1336
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->namId:S

    .line 1334
    return-void

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRoamOrigVoiceSo(I)V
    .locals 3
    .param p1, "roamOrigVoiceSo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1388
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->roamOrigVoiceSo:I

    .line 1386
    return-void

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1404
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->namId:S

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1405
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->evrcCapability:S

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1406
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homePageVoiceSo:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1407
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homeOrigVoiceSo:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1408
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->roamOrigVoiceSo:I

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1409
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1416
    const-string/jumbo v0, "namId=%d, evrcCapability=%d, homePageVoiceSo=%d, homeOrigVoiceSo=%d, roamOrigVoiceSo=%d"

    .line 1414
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 1417
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->namId:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->evrcCapability:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homePageVoiceSo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->homeOrigVoiceSo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1418
    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$PreferredVoiceSo;->roamOrigVoiceSo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 1414
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
