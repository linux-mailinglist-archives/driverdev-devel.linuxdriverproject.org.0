Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37360309762
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 18:45:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8491204E4;
	Sat, 30 Jan 2021 17:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXZuBPC61kYS; Sat, 30 Jan 2021 17:45:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 268B020451;
	Sat, 30 Jan 2021 17:45:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56DD71BF4D7
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 17:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 539DF85F50
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 17:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EkTXI4YdUFJT for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 17:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o58.zoho.com (sender4-of-o58.zoho.com
 [136.143.188.58])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4714C85F4E
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 17:45:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1612028720; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=ROtYQKvyAxwgVdxRFZSAFRT+id4kjhGpJ6hiOx0FXm047cVIWW367SlGQChjagiGJeSqhgsv5U7lYErkEUCPATnUXP9S7cns59tXVo+wjAcFFSfVmhuGkcA51oBNXB8hDiYAb2aqw7iJ6wQ2uXFGGwgVyV1R7wWhmZhyRNcEWNQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1612028720;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=BHv+Hneu4LE0XcH8i0NN7VhsQrUX+zXk04pk3HGBn/U=; 
 b=aiuc//wdtaMd+sxmgeEfhvr7I6CbEgDtBLCFeLdluu6mIHb832WlCwTcrJe1QvBEC1r/yIjng4vWmXcELg2jE1qu/rGOXHFNwRFXBwQo95UgU/Q/IKujUa/Q4n2waDMuPQNLVbUt7WGrirF+LYS270muvFI63wZCkdatm3ceGWQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1612028720; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=BHv+Hneu4LE0XcH8i0NN7VhsQrUX+zXk04pk3HGBn/U=;
 b=PwdvtaUiecRKt0qgagHWwkTbXHUJQFUxwvJkAI/hNNvV5CC+xs5yYi8RArkO626w
 77ToEDGATVYZAP/y7GCBw1oJYHLrExkWuaShYdZTCgeCtWYDQkfZIikLfKPpokjegp5
 k0A5oN+NECb0/CZIlzw68PdN9OTEWbsyKBjtNhHU=
Received: from localhost.localdomain (106.51.111.98 [106.51.111.98]) by
 mx.zohomail.com with SMTPS id 1612028718065671.0814556597444;
 Sat, 30 Jan 2021 09:45:18 -0800 (PST)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: gregkh@linuxfoundation.org, johannes@sipsolutions.net, arnd@arndb.de,
 kuba@kernel.org
Message-ID: <20210130174454.11810-1-mail@anirudhrb.com>
Subject: [PATCH v2] staging: wimax/i2400m: fix pointer declaration style
Date: Sat, 30 Jan 2021 23:14:54 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Anirudh Rayabharam <mail@anirudhrb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a couple of pointer declarations where the pointer qualifier '*'
is not attached to the variable name. This fixes the checkpatch
error: "foo * bar" should be "foo *bar".

Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
---
v2: Minor corrections in the commit message.
---
 drivers/staging/wimax/i2400m/rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
index c9fb619a9e01..5b3a85035f6a 100644
--- a/drivers/staging/wimax/i2400m/rx.c
+++ b/drivers/staging/wimax/i2400m/rx.c
@@ -819,7 +819,7 @@ void i2400m_roq_reset(struct i2400m *i2400m, struct i2400m_roq *roq)
  */
 static
 void i2400m_roq_queue(struct i2400m *i2400m, struct i2400m_roq *roq,
-		      struct sk_buff * skb, unsigned lbn)
+		      struct sk_buff *skb, unsigned lbn)
 {
 	struct device *dev = i2400m_dev(i2400m);
 	unsigned nsn, len;
@@ -882,7 +882,7 @@ void i2400m_roq_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
  */
 static
 void i2400m_roq_queue_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
-				struct sk_buff * skb, unsigned sn)
+				struct sk_buff *skb, unsigned sn)
 {
 	struct device *dev = i2400m_dev(i2400m);
 	unsigned nsn, old_ws, len;
-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
