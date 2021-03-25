Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DAA348E15
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 11:35:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FB8540186;
	Thu, 25 Mar 2021 10:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njN-AmyNcIYP; Thu, 25 Mar 2021 10:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6468240182;
	Thu, 25 Mar 2021 10:35:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66C941BF35D
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 10:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55ADD6075B
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 10:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=163.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2A5RNCCYu0dt for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 10:35:31 +0000 (UTC)
X-Greylist: delayed 00:15:51 by SQLgrey-1.8.0
Received: from m12-16.163.com (m12-16.163.com [220.181.12.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4141F60727
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 10:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=VG5pv2GH8R52rludct
 6hPThVPq000PA+eCG5zTVpFZ8=; b=lNCJORMsqfxyz6ufstQVvB8PbIKTVysx/4
 TL4Oq6wh+B2MXJkA3Z9dJc6sDx7zEjigP4u4rCOOScpo8R24kVWi07E52GReB3Dq
 n7alQPVK+E3XSMxRvUIXPs6r/iiFhaU7V4g3LjaU11P6EDUvsf2iqabDZoS5mYHg
 zny8qmpu0=
Received: from bf-rmnj-02.ccdomain.com (unknown [218.94.48.178])
 by smtp12 (Coremail) with SMTP id EMCowAD3BFGyY1xgGRBqiQ--.42582S2;
 Thu, 25 Mar 2021 18:19:36 +0800 (CST)
From: Jian Dong <dj0227@163.com>
To: vireshk@kernel.org, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH]  staging: greybus: fix fw is NULL but dereferenced
Date: Thu, 25 Mar 2021 18:19:26 +0800
Message-Id: <1616667566-58997-1-git-send-email-dj0227@163.com>
X-Mailer: git-send-email 1.9.1
X-CM-TRANSID: EMCowAD3BFGyY1xgGRBqiQ--.42582S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZrW8ZFyfWw13uFyfWrW3KFg_yoW8XrW5pF
 4UA3sFk3WrWa4Yqa45CFWDXFyrKFWxJrWxG348G3s5Jr4rZFnYqr1Utry3WF1fAFZ3Jw15
 Xanagr4Fq3WIyF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j7nYrUUUUU=
X-Originating-IP: [218.94.48.178]
X-CM-SenderInfo: dgmqjjqx6rljoofrz/1tbiEBhg3V8YFVxYfwAAsc
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, huyue2@yulong.com,
 Jian Dong <dongjian@yulong.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Jian Dong <dongjian@yulong.com>

 fixes coccicheck Error:

 drivers/staging/greybus/bootrom.c:301:41-45: ERROR:
 fw is NULL but dereferenced.

 if procedure goto label directly, ret will be nefative, so the fw is NULL
 and the if(condition) end with dereferenced fw. let's fix it.

Signed-off-by: Jian Dong <dongjian@yulong.com>
---
 drivers/staging/greybus/bootrom.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
index a8efb86..0439efa 100644
--- a/drivers/staging/greybus/bootrom.c
+++ b/drivers/staging/greybus/bootrom.c
@@ -246,7 +246,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
 	struct gb_bootrom_get_firmware_response *firmware_response;
 	struct device *dev = &op->connection->bundle->dev;
 	unsigned int offset, size;
-	enum next_request_type next_request;
+	enum next_request_type next_request = NEXT_REQ_GET_FIRMWARE;
 	int ret = 0;
 
 	/* Disable timeouts */
@@ -298,10 +298,10 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
 
 queue_work:
 	/* Refresh timeout */
-	if (!ret && (offset + size == fw->size))
-		next_request = NEXT_REQ_READY_TO_BOOT;
-	else
+	if (!!ret)
 		next_request = NEXT_REQ_GET_FIRMWARE;
+	else if (offset + size == fw->size)
+		next_request = NEXT_REQ_READY_TO_BOOT;
 
 	gb_bootrom_set_timeout(bootrom, next_request, NEXT_REQ_TIMEOUT_MS);
 
-- 
1.9.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
