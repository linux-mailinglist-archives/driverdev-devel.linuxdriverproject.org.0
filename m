Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948F11EC9E6
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35BB7887BB;
	Wed,  3 Jun 2020 07:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GR0Hn2KXIkSI; Wed,  3 Jun 2020 07:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EEB788773;
	Wed,  3 Jun 2020 07:01:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 317AE1BF9B3
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E9FC86745
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UmtBXXs4GXQ1 for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0B05C83608
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:01:06 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 804302077D;
 Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591167665;
 bh=eWAJvViYM06bCspTqoBw5aI7xqOFP2eVmb3nVQAQ9wY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QK+/al89zy+82hQBgD2jdShYFfh7VIXPNz3PIkM6AjrLzxAdSNh7J96+jd0ktmnBB
 c8XYlbSGiG4kLnp93+bK/KSUK5FEfy3yUG5Z+C4zTng2WHTcP/JYc8mNKV6+D8oIq+
 iaIXF/TdOI+Gi3d43CxV0BiWOknuBuaQg4Heg1qE=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgNOZ-004j84-3J; Wed, 03 Jun 2020 09:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 01/15] media: atomisp: improve IRQ handling debug messages
Date: Wed,  3 Jun 2020 09:00:47 +0200
Message-Id: <575283fde059cbb42bf4e7b044cafbfe463e9f3b.1591167358.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591167358.git.mchehab+huawei@kernel.org>
References: <cover.1591167358.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When an IRQ is not handled, it is nice to know what's the
reason.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index d06173b62b99..875dd3ce6e48 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -566,7 +566,7 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 
 	if (irq_infos & IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF) {
 		dev_dbg_ratelimited(isp->dev,
-				    "irq:0x%x (IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF)\n",
+				    "irq:0x%x (SOF)\n",
 				    irq_infos);
 		irq_infos &= ~IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF;
 	}
@@ -591,14 +591,14 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 			/* EOF Event does not have the css_pipe returned */
 			asd = __get_asd_from_port(isp, eof_event.event.port);
 			if (!asd) {
-				dev_err(isp->dev, "%s:no subdev.event:%d",
+				dev_err(isp->dev, "%s: ISYS event, but no subdev.event:%d",
 					__func__, eof_event.event.type);
 				continue;
 			}
 
 			atomisp_eof_event(asd, eof_event.event.exp_id);
 			dev_dbg_ratelimited(isp->dev,
-					    "%s EOF exp_id %d, asd %d\n",
+					    "%s ISYS event: EOF exp_id %d, asd %d\n",
 					    __func__, eof_event.event.exp_id,
 					    asd->index);
 		}
@@ -610,7 +610,7 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 
 	spin_unlock_irqrestore(&isp->lock, flags);
 
-	dev_dbg_ratelimited(isp->dev, "irq:0x%x\n", irq_infos);
+	dev_dbg_ratelimited(isp->dev, "irq:0x%x (unhandled)\n", irq_infos);
 
 	return IRQ_WAKE_THREAD;
 
@@ -618,7 +618,8 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 	spin_unlock_irqrestore(&isp->lock, flags);
 
 	if (irq_infos)
-		dev_dbg_ratelimited(isp->dev, "irq:0x%x\n", irq_infos);
+		dev_dbg_ratelimited(isp->dev, "irq:0x%x (ignored, as not streaming anymore)\n",
+				    irq_infos);
 
 	return IRQ_HANDLED;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
