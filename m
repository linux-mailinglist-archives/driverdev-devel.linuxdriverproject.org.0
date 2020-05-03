Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102341C2CBE
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 15:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20ED288871;
	Sun,  3 May 2020 13:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btNhCFg5ex+U; Sun,  3 May 2020 13:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 575858868C;
	Sun,  3 May 2020 13:29:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB5B61BF414
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E38AD20461
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkO47HSdqHMc for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 13:29:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 43E89203A5
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 13:29:30 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 3D4693ED5; Sun,  3 May 2020 15:29:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 3D4693ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588512568;
 bh=IQWaprTDszXjBPTNKWxkbdKG2lr6Lb8LwJMD7ral41Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=veK8wxuduDeH9QdwdctFpKbdeQGHJsczEwvkqxVOb2SpB5uMp7LgnwAoZACP4OdYJ
 zJDj1mxI5wl+ZKryJPFbfMLLYH3/2m3aRg3PbLbnpad8pFIQj3hFNYENN4VdTBcUcS
 Urd2833oN9vjH4bu3R8LdW34fC6aU19ohk24QJh8=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] staging: vt6655: remove else after return and invert
 condition
Date: Sun,  3 May 2020 15:29:10 +0200
Message-Id: <1588512552-12297-4-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588512552-12297-1-git-send-email-mdujava@kocurkovo.cz>
References: <1588512552-12297-1-git-send-email-mdujava@kocurkovo.cz>
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

This patch will prepare us to make return at the end of case body

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 36 +++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 01ceace253a4..61f7077bb75f 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -260,13 +260,13 @@ s_uGetDataDuration(
 						     byPktType, 14,
 						     pDevice->byTopCCKBasicRate);
 		}
-		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
-			if (bNeedAck) {
-				return pDevice->uSIFS + uAckTime;
-			} else {
+		/* Non Frag or Last Frag */
+		if ((uMACfragNum == 1) || bLastFrag) {
+			if (!bNeedAck)
 				return 0;
-			}
-		} else {/* First Frag or Mid Frag */
+			return pDevice->uSIFS + uAckTime;
+		} else {
+			/* First Frag or Mid Frag */
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
@@ -279,13 +279,13 @@ s_uGetDataDuration(
 						     byPktType, 14,
 						     pDevice->byTopOFDMBasicRate);
 		}
-		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
-			if (bNeedAck) {
-				return pDevice->uSIFS + uAckTime;
-			} else {
+		/* Non Frag or Last Frag */
+		if ((uMACfragNum == 1) || bLastFrag) {
+			if (!bNeedAck)
 				return 0;
-			}
-		} else {/* First Frag or Mid Frag */
+			return pDevice->uSIFS + uAckTime;
+		} else {
+			/* First Frag or Mid Frag */
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
 						       wRate, bNeedAck);
 
@@ -300,13 +300,13 @@ s_uGetDataDuration(
 						     byPktType, 14,
 						     pDevice->byTopOFDMBasicRate);
 		}
-		if (((uMACfragNum == 1)) || bLastFrag) { /* Non Frag or Last Frag */
-			if (bNeedAck) {
-				return pDevice->uSIFS + uAckTime;
-			} else {
+		/* Non Frag or Last Frag */
+		if ((uMACfragNum == 1) || bLastFrag) {
+			if (!bNeedAck)
 				return 0;
-			}
-		} else { /* First Frag or Mid Frag */
+			return pDevice->uSIFS + uAckTime;
+		} else {
+			/* First Frag or Mid Frag */
 			if (wRate < RATE_18M)
 				wRate = RATE_18M;
 			else if (wRate > RATE_54M)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
