Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02475309617
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 15:59:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94D2B86B67;
	Sat, 30 Jan 2021 14:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yKOSDYUVuGMz; Sat, 30 Jan 2021 14:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0357855B1;
	Sat, 30 Jan 2021 14:59:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DE341BF23B
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 14:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FB79203B8
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 14:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qRKjGjTJtz0 for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 14:59:31 +0000 (UTC)
X-Greylist: delayed 00:15:03 by SQLgrey-1.7.6
Received: from sender4-of-o58.zoho.com (sender4-of-o58.zoho.com
 [136.143.188.58])
 by silver.osuosl.org (Postfix) with ESMTPS id 14DD12010A
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 14:59:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1612017865; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Bo86B4A58u71uvLTqKE/ZeES4qwljLbcZ/+6yrbLWriHuyu1Bs8TLLwjTQ+vnpUc6cJDcBWX2AW0y+56NUE8R4S9BJ8uTrfn+1O36RoAYdl3w412RuGANU+X9ylrxEB3/ScE2nM+1QNO+PEbWIxMoQoj4hHw13A8MtlHjfpXqVg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1612017865;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=Zw44vM+o9XmcWXpvUZQlWZdAAABddDzloR2lsPBXALc=; 
 b=duil50Ujg9OBUeg6+MKaXIM2EBpBR9Jreg0agdLCFObDCQZW50fuVzeyiNmJ1VWKfZFXuKAYB0jlodv0B1ETKxhQEOE7Gao/TplfV0UpNq/FUkampgBM0lMnxt45adWlzjy+NTLaUJ8I22FAsjwe/4TdlTgilEanz3EChO5ljGQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1612017865; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=Zw44vM+o9XmcWXpvUZQlWZdAAABddDzloR2lsPBXALc=;
 b=bmroBEYAD04i36PlttyL+hkHin4/1bbqDpyC2QyCywF2PvY5BW8NpWGCpxgjk9Fd
 x7tT7Vy/5TPSwXwW+t9QaqI7U/bwcWK0eCW7JpFw58c6iQp4VHY3T/6NFYkgOpdJPLQ
 LCEaM4Zbk8Px+mWTE/0tx8gSa1zXdWS0AghU+FlY=
Received: from localhost.localdomain (106.51.111.98 [106.51.111.98]) by
 mx.zohomail.com with SMTPS id 1612017862437872.7137623272297;
 Sat, 30 Jan 2021 06:44:22 -0800 (PST)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: gregkh@linuxfoundation.org, johannes@sipsolutions.net, arnd@arndb.de,
 kuba@kernel.og
Message-ID: <20210130144408.5712-1-mail@anirudhrb.com>
Subject: [PATCH] staging: wimax/i2400m: fix pointer declaration style
Date: Sat, 30 Jan 2021 20:14:08 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Status: RO
Lines: 33
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

Fix a couple of pointer declarataions where the pointer qualifier '*'
is not attached to the variable. This fixes the checkpatch error:
"'foo * bar' should be 'foo *bar'".

Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
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
