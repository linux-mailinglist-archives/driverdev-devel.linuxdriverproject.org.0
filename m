Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE36C3979A6
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Jun 2021 19:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26EC440438;
	Tue,  1 Jun 2021 17:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id poYgSc5-_iRb; Tue,  1 Jun 2021 17:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3988F4035B;
	Tue,  1 Jun 2021 17:59:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E6011BF20B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Jun 2021 17:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A77660656
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Jun 2021 17:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=posteo.de
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QPvX9pu5oVRW
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Jun 2021 17:59:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E59D6059C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Jun 2021 17:59:30 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 60453240027
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Jun 2021 19:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1622570367; bh=qkNDE5l6jZ3nQBxEpfbx9PXtIU1qCkoNG1mWWb6MI5w=;
 h=Date:From:To:Cc:Subject:From;
 b=Mm5+uT6QA4GKxAIwvcnvo9nNFMPIee8FBpEjuFwdDrOl2BzInOP22e0YBafxl48ba
 eO5kx+rEN/krNAgWb/0tvE5r39F/96rvVsfW0o7oWgqvaO7iQkxfyrPWrTZGkffZr3
 /RyyVKRZgsKtAEoTUJvA0F7hVid5kILrNxniVs9Z3niAgkJ+iUUyG9iT28RkhhdY4G
 iOEX4lQabBfjCO7fawmYj8mK9aDwtGEjudsSk1qgwRCqL8YZWVemJJOsn2rKwM7U8B
 TSxWCx3VJqywM4lPAGO1e6Mqj3e08G6c9QRAi6r1NfjDS7MIjUH9lW+EjqBlvCj4UJ
 XpIqYvkWxUuuQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4Fvg0G29yqz9rxV;
 Tue,  1 Jun 2021 19:59:26 +0200 (CEST)
Date: Tue,  1 Jun 2021 17:59:25 +0000
From: Khoa Tran Minh <ktm8@posteo.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rtl8712: Cleanup coding style warning
Message-ID: <YLZ1fc7BsaTo+ixQ@rue.localhost>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes checkpatch warning about multiple line dereference.

Signed-off-by: Khoa Tran Minh <ktm8@posteo.de>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 116cb812dcb9..84a22eba7ebf 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -482,9 +482,9 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 				ptxdesc->txdw1 |= cpu_to_le32((0x01 << 22) &
 						  0x00c00000);
 				/*KEY_ID when WEP is used;*/
-				ptxdesc->txdw1 |= cpu_to_le32((psecuritypriv->
-						  PrivacyKeyIndex << 17) &
-						  0x00060000);
+				ptxdesc->txdw1 |=
+					cpu_to_le32((psecuritypriv->PrivacyKeyIndex << 17) &
+						    0x00060000);
 				break;
 			case _TKIP_:
 			case _TKIP_WTMIC_:
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
