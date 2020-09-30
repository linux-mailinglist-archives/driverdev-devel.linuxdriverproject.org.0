Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A057027EB9D
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Sep 2020 16:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 636DA2266C;
	Wed, 30 Sep 2020 14:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtBPfT+7u2id; Wed, 30 Sep 2020 14:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5AACE2151E;
	Wed, 30 Sep 2020 14:59:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C270E1BF2B7
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 14:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D60D20370
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 14:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Jhp+ICJ-tvt for <devel@linuxdriverproject.org>;
 Wed, 30 Sep 2020 14:59:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 035F72035D
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 14:59:02 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c4.dynamic.kabel-deutschland.de
 [95.90.213.196])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B9E0206FC;
 Wed, 30 Sep 2020 14:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601477941;
 bh=N3+Tsm9Pra0YyIgpFUdp71awF/rV5GQVgS+yl8d0qVY=;
 h=From:To:Cc:Subject:Date:From;
 b=vLpj+RcfO30czrtNpRn5GHE+/O7zk0zp7NQXq8+o1wz5Xl2Za3WSDPcGgoGdpKNee
 wPHyE9Fhl1Va2PuO608hKUxCo+A8vxE1zEy4efK2UOrWS4u97YiqOdhw1miKR2saUH
 +plAKBea6zu7bu29pLEH+0KjqqrKz1SwHGLYaszI=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kNdZK-001Yd3-Pm; Wed, 30 Sep 2020 16:58:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH] media: atomisp: fixes a breakage due to a cleanup patch
Date: Wed, 30 Sep 2020 16:58:54 +0200
Message-Id: <e0bc43fcada40dc1c7cd1b77e40b429641c7ca66.1601477929.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A temporary var needed for building with ISP2401 was removed
by accident on a cleanup patch.

Fix the breakage.

Fixes: 852a53a02cf0 ("media: atomisp: get rid of unused vars")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index e8c5caf3dfe6..8e4e82a97098 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -1365,7 +1365,6 @@ start_binary(struct ia_css_pipe *pipe,
 {
 	assert(pipe);
 	/* Acceleration uses firmware, the binary thus can be NULL */
-	/* assert(binary != NULL); */
 
 	if (binary)
 		sh_css_metrics_start_binary(&binary->metrics);
@@ -1381,7 +1380,7 @@ start_binary(struct ia_css_pipe *pipe,
 #endif
 
 #if !defined(ISP2401)
-	if (stream->reconfigure_css_rx) {
+	if (pipe->stream->reconfigure_css_rx) {
 		ia_css_isys_rx_configure(&pipe->stream->csi_rx_config,
 					 pipe->stream->config.mode);
 		stream->reconfigure_css_rx = false;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
