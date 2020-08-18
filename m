Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A2A248BE7
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 18:47:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85235857E2;
	Tue, 18 Aug 2020 16:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N6-2Dsssi6Xo; Tue, 18 Aug 2020 16:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 685EF8559B;
	Tue, 18 Aug 2020 16:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4CD31BF980
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 16:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A104F86372
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 16:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ysrMzMO5uTkb for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 16:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D5D6D8516C
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 16:46:56 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1k84lD-0008RW-5A; Tue, 18 Aug 2020 16:46:55 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: kpc2000: kpc_dma: fix spelling mistake "for for" ->
 "for"
Date: Tue, 18 Aug 2020 17:46:54 +0100
Message-Id: <20200818164654.381588-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There are a couple of duplicated "for" spelling mistakes in dev_err
error messages. Fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index dd716edd9b1b..e1c7c04f16fe 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -53,7 +53,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
 	if (!acd) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
+		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for the aio data\n");
 		return -ENOMEM;
 	}
 	memset(acd, 0x66, sizeof(struct aio_cb_data));
@@ -69,7 +69,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	acd->user_pages = kcalloc(acd->page_count, sizeof(struct page *),
 				  GFP_KERNEL);
 	if (!acd->user_pages) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the page pointers\n");
+		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for the page pointers\n");
 		rv = -ENOMEM;
 		goto err_alloc_userpages;
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
