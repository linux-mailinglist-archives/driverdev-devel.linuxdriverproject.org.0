Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF95D1E0752
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96E238818D;
	Mon, 25 May 2020 06:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Giakz6+tK0OU; Mon, 25 May 2020 06:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1320987DA1;
	Mon, 25 May 2020 06:56:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 130D51BF968
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0DFBC87E45
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHCsAXCDJaoQ for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8DBC087DAF
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F8BE2084C;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=WfokecT9lhg3uWztfZPid3JkTjFgwFB4d3t1BIbBzaY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qtGziamYqQf50AWM8/lf3w9+U4wcP+kKSTWICKIL+uQFXa3sgHaT7LwkjfTICsF9q
 A/d25ByyZ8SJnyKLz4XGOdH7Ao97Xs8l2E1ADuIYyewf0jiviTpPqFSayQWXWS9VbW
 Ha2hRuKfSstxYrP1FZSYxGV6iq0yV6smIZ5bos6U=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71x-001d6j-Vq; Mon, 25 May 2020 08:56:13 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 02/11] media: atomisp: reduce debug printk rate when IRQs are
 received
Date: Mon, 25 May 2020 08:56:01 +0200
Message-Id: <a70df4ffe89e1d87bca522056fc08bc1e0b0c1c0.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590389536.git.mchehab+huawei@kernel.org>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, when an EOF IRQ is received, it generates two messages:

	[   59.191893] atomisp-isp2 0000:00:03.0: irq:0x200000
	[   59.191913] atomisp-isp2 0000:00:03.0: atomisp_isr EOF exp_id 142, asd 0

Flooding the dmesg with lots of messages per second. The same
pattern happens for all other IRQs.

Change the logic for printing just one message per IRQ and
rate-limit those, as, for debugging purposes, it is usually
interesting to know that IRQs are being received, but not
displaying every single one.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_cmd.c   | 23 +++++++++++++------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 5be690f876c1..1e22cb70ac1b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -526,8 +526,6 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 		return IRQ_NONE;
 	}
 
-	dev_dbg(isp->dev, "irq:0x%x\n", irq_infos);
-
 	clear_irq_reg(isp);
 
 	if (!atomisp_streaming_count(isp) && !atomisp_is_acc_enabled(isp))
@@ -564,8 +562,12 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 				   atomic_read(&asd->sequence_temp));
 	}
 
-	if (irq_infos & CSS_IRQ_INFO_CSS_RECEIVER_SOF)
+	if (irq_infos & CSS_IRQ_INFO_CSS_RECEIVER_SOF) {
+		dev_dbg_ratelimited(isp->dev,
+				    "irq:0x%x (CSS_IRQ_INFO_CSS_RECEIVER_SOF)\n",
+				    irq_infos);
 		irq_infos &= ~CSS_IRQ_INFO_CSS_RECEIVER_SOF;
+	}
 
 	if ((irq_infos & CSS_IRQ_INFO_INPUT_SYSTEM_ERROR) ||
 	    (irq_infos & CSS_IRQ_INFO_IF_ERROR)) {
@@ -587,14 +589,16 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 			/* EOF Event does not have the css_pipe returned */
 			asd = __get_asd_from_port(isp, eof_event.event.port);
 			if (!asd) {
-				dev_err(isp->dev, "%s:no subdev.event:%d",  __func__,
-					eof_event.event.type);
+				dev_err(isp->dev, "%s:no subdev.event:%d",
+					__func__, eof_event.event.type);
 				continue;
 			}
 
 			atomisp_eof_event(asd, eof_event.event.exp_id);
-			dev_dbg(isp->dev, "%s EOF exp_id %d, asd %d\n",
-				__func__, eof_event.event.exp_id, asd->index);
+			dev_dbg_ratelimited(isp->dev,
+					    "%s EOF exp_id %d, asd %d\n",
+					    __func__, eof_event.event.exp_id,
+					    asd->index);
 		}
 
 		irq_infos &= ~IA_CSS_IRQ_INFO_ISYS_EVENTS_READY;
@@ -604,11 +608,16 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 
 	spin_unlock_irqrestore(&isp->lock, flags);
 
+	dev_dbg_ratelimited(isp->dev, "irq:0x%x\n", irq_infos);
+
 	return IRQ_WAKE_THREAD;
 
 out_nowake:
 	spin_unlock_irqrestore(&isp->lock, flags);
 
+	if (irq_infos)
+		dev_dbg_ratelimited(isp->dev, "irq:0x%x\n", irq_infos);
+
 	return IRQ_HANDLED;
 }
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
