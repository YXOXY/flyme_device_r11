.class Lcom/qualcomm/qcnvitems/QcNvItems$1;
.super Ljava/lang/Object;
.source "QcNvItems.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcnvitems/QcNvItems;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcnvitems/QcNvItems;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcnvitems/QcNvItems;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QcNvItems$1;->this$0:Lcom/qualcomm/qcnvitems/QcNvItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQcRilHookDisconnected()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems$1;->this$0:Lcom/qualcomm/qcnvitems/QcNvItems;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->-set0(Lcom/qualcomm/qcnvitems/QcNvItems;Z)Z

    .line 91
    return-void
.end method

.method public onQcRilHookReady()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItems$1;->this$0:Lcom/qualcomm/qcnvitems/QcNvItems;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItems;->-set0(Lcom/qualcomm/qcnvitems/QcNvItems;Z)Z

    .line 87
    return-void
.end method
