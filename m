Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCA91C2D9B
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 17:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 702D4875F9;
	Sun,  3 May 2020 15:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5LXQXPgkf7pj; Sun,  3 May 2020 15:43:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D37A8758B;
	Sun,  3 May 2020 15:43:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96F8E1BF578
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 15:43:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 909B3884CF
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 15:43:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xzc9IDeQhMhu for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 15:43:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C41BE88488
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 15:43:17 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id ED15C18FF; Sun,  3 May 2020 17:43:14 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz ED15C18FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588520594;
 bh=dsnpnhjrUHSaXiLLDmToUkfJQoMhJ20hDN9zjO5mUkU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dNl8rEgHTdjcTOYqUrmg3v2b5wHHcXb1BdxBabqikOyXK123vafgx2aoXqE6xWS3D
 lwtXfjrXONakQmZ+13MXj9HCpugFjjBeOsb5E+nwqpQ4RQhbJOdY3rx37EkBfX84H1
 5fMCEQbhw6lYLbpVaYJwiCwkxGoS02e251iPGFI4=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] staging: vt6655: fix LONG_LINE warning
Date: Sun,  3 May 2020 17:42:50 +0200
Message-Id: <1588520570-14388-3-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588520570-14388-1-git-send-email-mdujava@kocurkovo.cz>
References: <1588520570-14388-1-git-send-email-mdujava@kocurkovo.cz>
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
Cc: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Stefano Brivio <sbrivio@redhat.com>, Briana Oursler <briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch will fix LONG_LINE error from checkpatch, by using ternary
operator.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index dda578436e64..994c19f1de43 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -170,10 +170,14 @@ s_uGetTxRsvTime(
 	if (!bNeedAck)
 		return uDataTime;
 
-	if (byPktType == PK_TYPE_11B) /* llb,CCK mode */
-		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
-	else /* 11g 2.4G OFDM mode & 11a 5G OFDM mode */
-		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
+	/*
+	 * CCK mode  - 11b
+	 * OFDM mode - 11g 2.4G & 11a 5G
+	 */
+	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
+				     byPktType == PK_TYPE_11B ?
+				     pDevice->byTopCCKBasicRate :
+				     pDevice->byTopOFDMBasicRate);
 
 	return uDataTime + pDevice->uSIFS + uAckTime;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
