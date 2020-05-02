Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9891C2884
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 00:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFF2D88329;
	Sat,  2 May 2020 22:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkg6LS3Fkbn1; Sat,  2 May 2020 22:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C60A988331;
	Sat,  2 May 2020 22:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B61F71BF326
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 22:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B57D204D6
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 22:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IR3x+wUdMMPZ for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 22:16:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 2DF6E20496
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 22:16:49 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 660E218CB; Sun,  3 May 2020 00:16:47 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 660E218CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588457807;
 bh=2+ok7hSFqmJ9p6NZRS3iB+ks9qy0qquKr2HJfKft10E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YvbktAIT615fXGeU1BszZYJYUx4uMSlrhuWIN4yTspPjZTsvW+S3VFfV85HYU1uCU
 7XLB3Z46YKQLOvZjPdpjk3cUwUnXJdj6B+Z723//7idA3sx8rmqSnM35pXgoB+w7wK
 1n+5FzRYzOarZYQFYdWcWiTM/Foe+vmQwwER6vhc=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: vt6655: fix LONG_LINE warning
Date: Sun,  3 May 2020 00:16:34 +0200
Message-Id: <1588457794-31438-2-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588457794-31438-1-git-send-email-mdujava@kocurkovo.cz>
References: <1588457794-31438-1-git-send-email-mdujava@kocurkovo.cz>
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

This patch will fix LONG_LINE error from checkpatch, by createing temporary
variable so call to the function is not in if/else block.

Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
---
 drivers/staging/vt6655/rxtx.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index dda578436e64..782177dfd67e 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -164,16 +164,24 @@ s_uGetTxRsvTime(
 )
 {
 	unsigned int uDataTime, uAckTime;
+	unsigned short basic_rate;
 
 	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
 
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
+	if (byPktType == PK_TYPE_11B)
+		basic_rate = (unsigned short)pDevice->byTopCCKBasicRate;
+	else
+		basic_rate = (unsigned short)pDevice->byTopOFDMBasicRate;
+
+	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
+				     basic_rate);
 
 	return uDataTime + pDevice->uSIFS + uAckTime;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
