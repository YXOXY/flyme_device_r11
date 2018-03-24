.class public Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;
.super Ljava/lang/Object;
.source "QcNvItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SidNidPair"
.end annotation


# instance fields
.field nid:Ljava/lang/String;

.field sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/qcnvitems/QcNvItems;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcnvitems/QcNvItems;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcnvitems/QcNvItems;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->this$0:Lcom/qualcomm/qcnvitems/QcNvItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qcnvitems/QcNvItems;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcnvitems/QcNvItems;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "nid"    # Ljava/lang/String;

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->this$0:Lcom/qualcomm/qcnvitems/QcNvItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput-object p2, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->sid:Ljava/lang/String;

    .line 1317
    iput-object p3, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->nid:Ljava/lang/String;

    .line 1315
    return-void
.end method


# virtual methods
.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->nid:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setNid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nid"    # Ljava/lang/String;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->nid:Ljava/lang/String;

    .line 1332
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QcNvItems$SidNidPair;->sid:Ljava/lang/String;

    .line 1324
    return-void
.end method
