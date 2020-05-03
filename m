Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536E31C2CBF
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 15:29:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E25A1888D9;
	Sun,  3 May 2020 13:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gj1d-eFyvinl; Sun,  3 May 2020 13:29:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B46D88763;
	Sun,  3 May 2020 13:29:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EFC81BF414
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83BDA870A4
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id slKvdWNdZAps for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 13:29:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B39787088
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 13:29:33 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id C1ED418CB; Sun,  3 May 2020 15:29:30 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz C1ED418CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588512570;
 bh=amZ/K/qQy5bwb/wFEfKS9nmEX2XcdVfnm7PUkRKoYiU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nKmyMbBBkIn5kuOWK2EFqEuUP3x4NUSiEfJOJxG3dbo9tdCC/C1toAXnC+DUUwDvE
 mPXiYuUiUs7Vp31Y8nlxR7ULsCuh6QdcGityBEOTEg+wryNR0ur46c6QeoK6L7RDr+
 mQNk37EhhxXJE0jXg+dh8pi97ZNTfFDXMnqfpYx0=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] staging: vt6655: return at the ond of case body
Date: Sun,  3 May 2020 15:29:11 +0200
Message-Id: <1588512552-12297-5-git-send-email-mdujava@kocurkovo.cz>
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

This patch will unify exit point for s_uGetDataDuration function.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 61f7077bb75f..c4d62c27f1c1 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -264,14 +264,12 @@ s_uGetDataDuration(
 		if ((uMACfragNum == 1) || bLastFrag) {
 			if (!bNeedAck)
 				return 0;
-			return pDevice->uSIFS + uAckTime;
 		} else {
 			/* First Frag or Mid Frag */
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
-
-			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
-		break;
+
+		return pDevice->uSIFS + uAckTime + uNextPktTime;
 
 	case DATADUR_A:    /* DATADUR_A */
 		if (bNeedAck) {
@@ -283,15 +281,13 @@ s_uGetDataDuration(
 		if ((uMACfragNum == 1) || bLastFrag) {
 			if (!bNeedAck)
 				return 0;
-			return pDevice->uSIFS + uAckTime;
 		} else {
 			/* First Frag or Mid Frag */
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
 						       wRate, bNeedAck);
-
-			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
-		break;
+
+		return pDevice->uSIFS + uAckTime + uNextPktTime;
 
 	case DATADUR_A_F0:    /* DATADUR_A_F0 */
 	case DATADUR_A_F1:    /* DATADUR_A_F1 */
@@ -304,7 +300,6 @@ s_uGetDataDuration(
 		if ((uMACfragNum == 1) || bLastFrag) {
 			if (!bNeedAck)
 				return 0;
-			return pDevice->uSIFS + uAckTime;
 		} else {
 			/* First Frag or Mid Frag */
 			if (wRate < RATE_18M)
@@ -323,10 +318,9 @@ s_uGetDataDuration(
 							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
 							       bNeedAck);
 			}
-
-			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
-		break;
+
+		return pDevice->uSIFS + uAckTime + uNextPktTime;
 
 	default:
 		break;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
