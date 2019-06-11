Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD2F3D732
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3642C83713;
	Tue, 11 Jun 2019 19:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7GRODdw48Dkp; Tue, 11 Jun 2019 19:51:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 666E685F8E;
	Tue, 11 Jun 2019 19:51:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4455C1BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41D8B87D41
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UtYXKoPDCjfB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9B0A87D73
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ikvg0JgK7F3ZLNMm7l1QOYkakuardXrxtODge9x83mo=; b=tputyIB+Ta0bHPCl+qI7OcMx3G
 bvbicP6QUdaik2WW9JGP1vVCUfgI3LeP9z5G4pIWN5EbKqM1zFiIWnP1AYCXqudSwLlsJF8sYJ0fM
 FHDUA3bDir63r1u3MPnsisDp8TkXz0ayGkRanZUGqXgqqqqpVo/zvAhjbG1NTJrzzNM1cQo17nC4f
 3hxoglUTRcLwnzP+eUfuWTvnPsArL7rhEHajqRX8r2lDOClQcEoY1KWGzAZBmItRhO7syRJUK1nc0
 Qonn+3994vT2BJ12UCaaPloLELAbB4omCFsuF/W99EL9Wffw78hXzt3BEhXAHA0TOL2/9QpZrXHwh
 gu0E9PPA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnQ-0002Uq-N4; Tue, 11 Jun 2019 20:51:04 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 1/6] staging: kpc2000_dma: added Kconfig to enable
 asynchronous I/O.
Date: Tue, 11 Jun 2019 20:50:59 +0100
Message-Id: <20190611195104.4828-2-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611195104.4828-1-jeremy@azazel.net>
References: <20190611195104.4828-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The DMA driver has call-backs for doing asynchronous I/O which are
protected by a CONFIG_ macro which is not defined.  Added a Kconfig
stanza to define it.

Cc: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/Kconfig           | 8 ++++++++
 drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/Kconfig b/drivers/staging/kpc2000/Kconfig
index 897965359fcb..694cef28c1b3 100644
--- a/drivers/staging/kpc2000/Kconfig
+++ b/drivers/staging/kpc2000/Kconfig
@@ -57,3 +57,11 @@ config KPC2000_DMA
 
 	  If unsure, say N.
 
+config KPC2000_DMA_AIO
+	bool "Daktronics KPC DMA controller (asynchronous IO)"
+	depends on KPC2000_DMA && AIO
+	help
+          Say Y here if you wish to support asynchronous IO with the Daktronics
+          DMA controller.
+
+	  If unsure, say N.
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index f80b01715d93..ee382dee01ca 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -242,7 +242,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 			kfree(acd);
 		}
 	} else {
-#ifdef CONFIG_KPC_DMA_AIO
+#ifdef CONFIG_KPC2000_DMA_AIO
 		aio_complete(acd->kcb, acd->len, acd->flags);
 #endif
 		kfree(acd);
@@ -308,7 +308,7 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 	return 0;
 }
 
-#ifdef CONFIG_KPC_DMA_AIO
+#ifdef CONFIG_KPC2000_DMA_AIO
 static
 int  kpc_dma_aio_cancel(struct kiocb *kcb)
 {
@@ -402,7 +402,7 @@ const struct file_operations  kpc_dma_fops = {
 	.release        = kpc_dma_close,
 	.read           = kpc_dma_read,
 	.write          = kpc_dma_write,
-#ifdef CONFIG_KPC_DMA_AIO
+#ifdef CONFIG_KPC2000_DMA_AIO
 	.aio_read       = kpc_dma_aio_read,
 	.aio_write      = kpc_dma_aio_write,
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
