.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
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
    .line 858
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;-><init>(ZS)V

    .line 857
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 862
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;-><init>(ZS)V

    .line 861
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
    .line 848
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 849
    iput-boolean p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    .line 850
    if-eqz p1, :cond_0

    .line 851
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->setRings(S)V

    .line 848
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->setRings(S)V

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

    .line 865
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 866
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 867
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 868
    .local v1, "enable":B
    if-nez v1, :cond_0

    .line 869
    iput-boolean v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    .line 865
    :goto_0
    return-void

    .line 870
    :cond_0
    if-ne v1, v3, :cond_1

    .line 871
    iput-boolean v3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    goto :goto_0

    .line 873
    :cond_1
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2
.end method


# virtual methods
.method public getRings()S
    .locals 1

    .prologue
    .line 886
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->rings:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 882
    iput-boolean p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    .line 881
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
    .line 891
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->rings:S

    .line 889
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
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
    .line 905
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 906
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    if-eqz v1, :cond_0

    .line 907
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 911
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 909
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rings=%d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;->rings:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
