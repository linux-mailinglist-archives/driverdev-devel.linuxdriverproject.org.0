Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6925A1C5D0B
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 18:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5135B894D9;
	Tue,  5 May 2020 16:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dJ7scX37B76; Tue,  5 May 2020 16:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA7A08874A;
	Tue,  5 May 2020 16:09:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3462B1BF34F
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 16:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E8FF23B44
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 16:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TbyEoWNBnI1h for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 16:09:17 +0000 (UTC)
X-Greylist: delayed 00:41:36 by SQLgrey-1.7.6
Received: from www.linuxtv.org (www.linuxtv.org [130.149.80.248])
 by silver.osuosl.org (Postfix) with ESMTPS id B99B0204DD
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 16:09:16 +0000 (UTC)
Received: from mchehab by www.linuxtv.org with local (Exim 4.92)
 (envelope-from <mchehab@linuxtv.org>)
 id 1jVzQf-00Cv7a-CQ; Tue, 05 May 2020 15:24:17 +0000
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Tue, 05 May 2020 15:23:21 +0000
Subject: [git:media_tree/master] media: staging: media: imx: no need to check
 return value of debugfs_create functions
To: linuxtv-commits@linuxtv.org
Mail-followup-to: linux-media@vger.kernel.org
Forward-to: linux-media@vger.kernel.org
Message-Id: <E1jVzQf-00Cv7a-CQ@www.linuxtv.org>
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: linux-media@vger.kernel.org
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is an automatic generated email to let you know that the following patch were queued:

Subject: media: staging: media: imx: no need to check return value of debugfs_create functions
Author:  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:    Tue Apr 28 19:04:05 2020 +0200

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Steve Longerbeam <slongerbeam@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

 drivers/staging/media/imx/imx7-mipi-csis.c | 29 +++++------------------------
 1 file changed, 5 insertions(+), 24 deletions(-)

---

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index e2403b448b6d..ca20f5da9ac6 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -1017,33 +1017,14 @@ static int mipi_csis_dump_regs_show(struct seq_file *m, void *private)
 }
 DEFINE_SHOW_ATTRIBUTE(mipi_csis_dump_regs);
 
-static int mipi_csis_debugfs_init(struct csi_state *state)
+static void mipi_csis_debugfs_init(struct csi_state *state)
 {
-	struct dentry *d;
-
-	if (!debugfs_initialized())
-		return -ENODEV;
-
 	state->debugfs_root = debugfs_create_dir(dev_name(state->dev), NULL);
-	if (!state->debugfs_root)
-		return -ENOMEM;
-
-	d = debugfs_create_bool("debug_enable", 0600, state->debugfs_root,
-				&state->debug);
-	if (!d)
-		goto remove_debugfs;
-
-	d = debugfs_create_file("dump_regs", 0600, state->debugfs_root,
-				state, &mipi_csis_dump_regs_fops);
-	if (!d)
-		goto remove_debugfs;
-
-	return 0;
-
-remove_debugfs:
-	debugfs_remove_recursive(state->debugfs_root);
 
-	return -ENOMEM;
+	debugfs_create_bool("debug_enable", 0600, state->debugfs_root,
+			    &state->debug);
+	debugfs_create_file("dump_regs", 0600, state->debugfs_root, state,
+			    &mipi_csis_dump_regs_fops);
 }
 
 static void mipi_csis_debugfs_exit(struct csi_state *state)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
