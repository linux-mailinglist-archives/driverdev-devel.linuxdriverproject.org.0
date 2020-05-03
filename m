Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C7D1C2CBD
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 15:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8964D22721;
	Sun,  3 May 2020 13:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eB2Y3i4RqpEF; Sun,  3 May 2020 13:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0925C203A5;
	Sun,  3 May 2020 13:29:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70F5C1BF414
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67C1520457
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S4PTqntgE2JC for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 13:29:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D5AD203A5
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 13:29:26 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 25FD218FF; Sun,  3 May 2020 15:29:24 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 25FD218FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588512564;
 bh=AFyRxD9BU6cVNLrSCjghBgVzm+iB1gkng47LzmGhZ2w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aF0OMyfikviv7C/CjIl/pHTSTAh4q6oI/7BtlSyDP+ioQ/Okz3Fm8qPu3c+ilbzrT
 KOanTkmi/PLdQG+bkjoI9JSbJ0wimAu5qOK2vV88uehlJbymZeMj3p2XDPG5sVNywJ
 +KzTEaaQjYSJVM5c0T/NEWe/JJ4ZnygZ42jtiWeQ=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] staging: vt6655: merge two switch cases in
 s_uGetDataDuration
Date: Sun,  3 May 2020 15:29:08 +0200
Message-Id: <1588512552-12297-2-git-send-email-mdujava@kocurkovo.cz>
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

This patch will reuse code for two cases.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 34 ----------------------------------
 1 file changed, 34 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 2f9c2ead3cb8..28f0cda36dec 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -296,40 +296,6 @@ s_uGetDataDuration(
 		break;
 
 	case DATADUR_A_F0:    /* DATADUR_A_F0 */
-		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
-			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime;
-			} else {
-				return 0;
-			}
-		} else { /* First Frag or Mid Frag */
-			if (wRate < RATE_18M)
-				wRate = RATE_18M;
-			else if (wRate > RATE_54M)
-				wRate = RATE_54M;
-
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
-
-			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType,
-							     byPktType, 14,
-							     pDevice->byTopOFDMBasicRate);
-			}
-			return pDevice->uSIFS + uAckTime + uNextPktTime;
-		}
-		break;
-
 	case DATADUR_A_F1:    /* DATADUR_A_F1 */
 		if (((uMACfragNum == 1)) || bLastFrag) { /* Non Frag or Last Frag */
 			if (bNeedAck) {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
