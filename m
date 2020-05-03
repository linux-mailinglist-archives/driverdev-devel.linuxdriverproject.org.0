Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE381C2CC0
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 15:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47E028897F;
	Sun,  3 May 2020 13:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kX7za0iwtHE9; Sun,  3 May 2020 13:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C61378868C;
	Sun,  3 May 2020 13:29:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F222B1BF414
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC0BB20461
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zpfg8eecwC1y for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 13:29:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 79522203A5
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 13:29:35 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 77F6D18CB; Sun,  3 May 2020 15:29:33 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 77F6D18CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588512573;
 bh=E/M1+fpZ9BWdUh/UPu/JUV9VouoTHOw3qfqD6bm6qFc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NSkfRasV8wbXhtoGVac4YMgEwq4Y5n4+UvpJ8aO0K2ZmqK29Y0YeD5hiChJ3+f1cE
 Ipuii6E9gE83MW289WXXXzR4ociHbBamYmX6pCVh7o+41KjNrgBV62XP+mYz1uLqTO
 wXZ+dMqxBvfCLysmFMJhnl6fjkaDPcddhSv7ClbU=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] staging: vt6655: extract index manupulation out of
 function call
Date: Sun,  3 May 2020 15:29:12 +0200
Message-Id: <1588512552-12297-6-git-send-email-mdujava@kocurkovo.cz>
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

This patch will remove if/else by selecting proper argument before
function call, also index is updated before function call.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index c4d62c27f1c1..1e025bb72810 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -266,7 +266,8 @@ s_uGetDataDuration(
 				return 0;
 		} else {
 			/* First Frag or Mid Frag */
-			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType,
+						       len, wRate, bNeedAck);
 		}
 
 		return pDevice->uSIFS + uAckTime + uNextPktTime;
@@ -283,8 +284,8 @@ s_uGetDataDuration(
 				return 0;
 		} else {
 			/* First Frag or Mid Frag */
-			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
-						       wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType,
+						       len, wRate, bNeedAck);
 		}
 
 		return pDevice->uSIFS + uAckTime + uNextPktTime;
@@ -307,17 +308,15 @@ s_uGetDataDuration(
 			else if (wRate > RATE_54M)
 				wRate = RATE_54M;
 
-			if (byFBOption == AUTO_FB_0) {
-				uNextPktTime = s_uGetTxRsvTime(pDevice,
-							       byPktType, len,
-							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
-							       bNeedAck);
-			} else {
-				uNextPktTime = s_uGetTxRsvTime(pDevice,
-							       byPktType, len,
-							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
-							       bNeedAck);
-			}
+			wRate -= RATE_18M;
+
+			if (byFBOption == AUTO_FB_0)
+				wRate = wFB_Opt0[FB_RATE0][wRate];
+			else
+				wRate = wFB_Opt1[FB_RATE0][wRate];
+
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType,
+						       len, wRate, bNeedAck);
 		}
 
 		return pDevice->uSIFS + uAckTime + uNextPktTime;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
