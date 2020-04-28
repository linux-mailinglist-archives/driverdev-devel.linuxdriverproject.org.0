Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ABF1BC60E
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 19:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 04738228D5;
	Tue, 28 Apr 2020 17:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MSTwZNL2nk1X; Tue, 28 Apr 2020 17:04:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 315FD228BD;
	Tue, 28 Apr 2020 17:04:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A38C21BF37B
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 17:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 889058827C
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 17:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y-BKhEY1sdPl for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 17:04:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5D19F8625C
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 17:04:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACF6120730;
 Tue, 28 Apr 2020 17:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588093447;
 bh=+BzuoEta3GpkJhXTYu0wLZOwyAEizrEkeMqnK9YrukY=;
 h=Date:From:To:Cc:Subject:From;
 b=Px8EXGW46wQvZImhVdLaAEVzRsdigCFe9OPIo9u6BBPu/ji0c9Nmn9GKXDsiFrNTe
 bgw6v7L30kMNrfoanY8ho7PFz56gIiyxHQg4W5dyrt7Mlmu45We4TAYZ4APiat7q/+
 5m0a5zNLlhVK4v3UMaHDJXg3EP/cvyUTlHf4KEbU=
Date: Tue, 28 Apr 2020 19:04:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] staging: media: imx: no need to check return value of
 debugfs_create functions
Message-ID: <20200428170405.GA1649098@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Rui Miguel Silva <rmfrfs@gmail.com>
Cc: Steve Longerbeam <slongerbeam@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-media@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 29 ++++------------------
 1 file changed, 5 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index fbc1a924652a..d7c9e7343f1f 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -915,33 +915,14 @@ static int mipi_csis_dump_regs_show(struct seq_file *m, void *private)
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
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
