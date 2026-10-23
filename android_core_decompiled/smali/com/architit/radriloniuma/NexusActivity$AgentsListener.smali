.class Lcom/architit/radriloniuma/NexusActivity$AgentsListener;
.super Ljava/lang/Object;
.source "NexusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field final synthetic this$0:Lcom/architit/radriloniuma/NexusActivity;

# direct methods
.method constructor <init>(Lcom/architit/radriloniuma/NexusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/architit/radriloniuma/NexusActivity$AgentsListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/architit/radriloniuma/NexusActivity$AgentsListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-static {v0}, Lcom/architit/radriloniuma/NexusActivity;->access$100(Lcom/architit/radriloniuma/NexusActivity;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/architit/radriloniuma/NexusActivity$AgentsListener;->this$0:Lcom/architit/radriloniuma/NexusActivity;
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83e\udd16 RADRILONIUMA AGENTS MATRIX"
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "[QUORUM: 5 NODES ACTIVE - 528 Hz]\n\n\u2022 DEV_01_BUSHMASTER: Win11 Host (Online)\n\u2022 DEV_02_ATESIRT: Samsung SM-A266B (Connected)\n\u2022 DEV_03_UBUNTU_WSL2: Linux Substrate\n\u2022 DEV_04_SAMSUNG_T7: Vault Storage (Mounted)\n\u2022 DEV_05_LAO_SWARM: 528-Slot Living Matrix\n\nActive Organs: 68/68 Synced\nCarrier: 528 Hz / 432 Hz\nSecurity Status: SOVEREIGN ENFORCED"
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "CONFIRM"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
