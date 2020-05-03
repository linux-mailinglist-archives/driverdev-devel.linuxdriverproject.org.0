Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086BB1C2CBC
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 15:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E382887E5;
	Sun,  3 May 2020 13:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhhItl5Y-vRd; Sun,  3 May 2020 13:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92AB988780;
	Sun,  3 May 2020 13:29:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39A361BF414
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3611287E79
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFHNT84q7GAx for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 13:29:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DABF87E71
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 13:29:28 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 5D61318CB; Sun,  3 May 2020 15:29:26 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 5D61318CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588512566;
 bh=sRvT03xiD8wOdZD4cRBTkygtZsp6kCEcj34XZznO6jE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FfLXLslMP3cb89Z5PrdCHwuD2gA3LnanjGusIW1Tp4UsVvhCmo7ZiL3JiSxS7AWrK
 yUyiIBXfYvASR4eujkg/tZyOVGokrVzO5TsxbcC2En0h2tY3mIgUjeU17YRJ7k9Kl4
 QftYCPUvnVF0/naHOMWd7V16sala97JWN4pG+/z0=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] staging: vt6655: do calculation of uAckTime first
Date: Sun,  3 May 2020 15:29:09 +0200
Message-Id: <1588512552-12297-3-git-send-email-mdujava@kocurkovo.cz>
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

This patch is extracting calculation of uAckTime in one place, at the
start of case body.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 28f0cda36dec..01ceace253a4 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -255,9 +255,13 @@ s_uGetDataDuration(
 
 	switch (byDurType) {
 	case DATADUR_B:    /* DATADUR_B */
+		if (bNeedAck) {
+			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+						     byPktType, 14,
+						     pDevice->byTopCCKBasicRate);
+		}
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -265,19 +269,18 @@ s_uGetDataDuration(
 		} else {/* First Frag or Mid Frag */
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
-			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType,
-							     byPktType, 14,
-							     pDevice->byTopCCKBasicRate);
-			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
 	case DATADUR_A:    /* DATADUR_A */
+		if (bNeedAck) {
+			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+						     byPktType, 14,
+						     pDevice->byTopOFDMBasicRate);
+		}
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -286,20 +289,19 @@ s_uGetDataDuration(
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
 						       wRate, bNeedAck);
 
-			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType,
-							     byPktType, 14,
-							     pDevice->byTopOFDMBasicRate);
-			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
 	case DATADUR_A_F0:    /* DATADUR_A_F0 */
 	case DATADUR_A_F1:    /* DATADUR_A_F1 */
+		if (bNeedAck) {
+			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
+						     byPktType, 14,
+						     pDevice->byTopOFDMBasicRate);
+		}
 		if (((uMACfragNum == 1)) || bLastFrag) { /* Non Frag or Last Frag */
 			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 				return pDevice->uSIFS + uAckTime;
 			} else {
 				return 0;
@@ -322,11 +324,6 @@ s_uGetDataDuration(
 							       bNeedAck);
 			}
 
-			if (bNeedAck) {
-				uAckTime = bb_get_frame_time(pDevice->byPreambleType,
-							     byPktType, 14,
-							     pDevice->byTopOFDMBasicRate);
-			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
