Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C513A9B64
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Jun 2021 15:02:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D788483C47;
	Wed, 16 Jun 2021 13:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r4gjTqpQYSKE; Wed, 16 Jun 2021 13:02:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52C6C8376B;
	Wed, 16 Jun 2021 13:02:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D615F1BF2FA
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 13:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2D60401FC
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 13:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ex3Schn0zoVr for <devel@linuxdriverproject.org>;
 Wed, 16 Jun 2021 13:02:05 +0000 (UTC)
X-Greylist: delayed 00:08:12 by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A4C34045B
 for <devel@driverdev.osuosl.org>; Wed, 16 Jun 2021 13:02:05 +0000 (UTC)
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id CE363CD8BD;
 Wed, 16 Jun 2021 20:53:40 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [111.207.172.18])
 by smtp.263.net (postfix) whith ESMTP id
 P4789T140158491260672S1623848013965153_; 
 Wed, 16 Jun 2021 20:53:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <97f3434abaad5f566b0711ee2b3c6bfd>
X-RL-SENDER: maqianga@uniontech.com
X-SENDER: maqianga@uniontech.com
X-LOGIN-NAME: maqianga@uniontech.com
X-FST-TO: larry.finger@lwfinger.net
X-RCPT-COUNT: 8
X-SENDER-IP: 111.207.172.18
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Qiang Ma <maqianga@uniontech.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, insafonov@gmail.com,
 yepeilin.cs@gmail.com, ffclaire1224@gmail.com
Subject: [PATCH] staging: r8188eu/core: remove the check for NULL pointer in
 _rtw_enqueue_cmd()
Date: Wed, 16 Jun 2021 20:53:32 +0800
Message-Id: <20210616125332.31674-1-maqianga@uniontech.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Qiang Ma <maqianga@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the check for _rtw_enqueue_cmd(), because
rtw_enqueue_cmd() already has a check of NULL pointer,
so this condition is not possible.

Signed-off-by: Qiang Ma <maqianga@uniontech.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 1724dfd7edbc..513c0f95b4bf 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -39,17 +39,12 @@ static int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
 	unsigned long irqL;
 
-	if (!obj)
-		goto exit;
-
 	spin_lock_irqsave(&queue->lock, irqL);
 
 	list_add_tail(&obj->list, &queue->queue);
 
 	spin_unlock_irqrestore(&queue->lock, irqL);
 
-exit:
-
 	return _SUCCESS;
 }
 
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
