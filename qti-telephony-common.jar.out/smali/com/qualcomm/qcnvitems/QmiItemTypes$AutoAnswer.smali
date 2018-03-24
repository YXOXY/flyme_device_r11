.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoAnswer"
.end annotation


# static fields
.field public static final DEFAULT_RINGS:S = 0x5s

.field public static final ENABLE_SIZE:I = 0x1

.field public static final RINGS_SIZE:I = 0x1


# instance fields
.field enable:Z

.field rings:S


# direct methods
.method public constructor <init>(S)V
    .locals 1
    .param p1, "rings"    # S

    .prologue
    .line 1133
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;-><init>(ZS)V

    .line 1132
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1137
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;-><init>(ZS)V

    .line 1136
    return-void
.end method

.method public constructor <init>(ZS)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "rings"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 1124
    iput-boolean p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    .line 1125
    if-eqz p1, :cond_0

    .line 1126
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->setRings(S)V

    .line 1123
    :goto_0
    return-void

    .line 1128
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->setRings(S)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1140
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 1141
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1142
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1143
    .local v1, "enable":B
    if-nez v1, :cond_0

    .line 1144
    iput-boolean v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    .line 1140
    :goto_0
    return-void

    .line 1145
    :cond_0
    if-ne v1, v3, :cond_1

    .line 1146
    iput-boolean v3, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    goto :goto_0

    .line 1148
    :cond_1
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2
.end method


# virtual methods
.method public getRings()S
    .locals 1

    .prologue
    .line 1161
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->rings:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1157
    iput-boolean p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    .line 1156
    return-void
.end method

.method public setRings(S)V
    .locals 3
    .param p1, "rings"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1166
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->rings:S

    .line 1164
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
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
    .line 1180
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1181
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    if-eqz v1, :cond_0

    .line 1182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1186
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 1184
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rings=%d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AutoAnswer;->rings:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
