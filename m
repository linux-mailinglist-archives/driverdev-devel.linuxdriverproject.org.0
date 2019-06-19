Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E81B04BD4A
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 17:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDDDB85EBB;
	Wed, 19 Jun 2019 15:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gQHVdO6kvUu; Wed, 19 Jun 2019 15:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5160F832C6;
	Wed, 19 Jun 2019 15:54:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05AA41BF5F5
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 15:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 035DB832C6
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 15:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTudgxXkfjiy for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 15:54:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D2BC85E8A
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 15:54:03 +0000 (UTC)
Received: from faui06c.informatik.uni-erlangen.de
 (faui06c.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:202])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 0B4FD240A7B;
 Wed, 19 Jun 2019 17:46:57 +0200 (CEST)
Received: by faui06c.informatik.uni-erlangen.de (Postfix, from userid 30063)
 id EE86CB0084D; Wed, 19 Jun 2019 17:46:56 +0200 (CEST)
From: Lukas Schneider <lukas.s.schneider@fau.de>
To: kim.jamie.bradley@gmail.com, pakki001@umn.edu, colin.king@canonical.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] rts5208: Fix usleep_range is preferred over udelay
Date: Wed, 19 Jun 2019 17:46:46 +0200
Message-Id: <20190619154648.13840-2-lukas.s.schneider@fau.de>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190619154648.13840-1-lukas.s.schneider@fau.de>
References: <20190619154648.13840-1-lukas.s.schneider@fau.de>
MIME-Version: 1.0
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
Cc: Jannik Moritz <jannik.moritz@fau.de>,
 Lukas Schneider <lukas.s.schneider@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the issue reported by checkpatch:

CHECK: usleep_range is preferred over udelay;
see Documentation/timers/timers-howto.txt

It's save to sleep here instead of using busy waiting,
because we are not in an atomic context.

Signed-off-by: Lukas Schneider <lukas.s.schneider@fau.de>
Signed-off-by: Jannik Moritz <jannik.moritz@fau.de>
Cc <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/rts5208/rtsx_card.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_card.c b/drivers/staging/rts5208/rtsx_card.c
index 294f381518fa..960e845133c3 100644
--- a/drivers/staging/rts5208/rtsx_card.c
+++ b/drivers/staging/rts5208/rtsx_card.c
@@ -679,7 +679,7 @@ int switch_ssc_clock(struct rtsx_chip *chip, int clk)
 	if (retval < 0)
 		return STATUS_ERROR;
 
-	udelay(10);
+	usleep_range(10, 20);
 	retval = rtsx_write_register(chip, CLK_CTL, CLK_LOW_FREQ, 0);
 	if (retval)
 		return retval;
@@ -797,7 +797,7 @@ int switch_normal_clock(struct rtsx_chip *chip, int clk)
 		return retval;
 
 	if (sd_vpclk_phase_reset) {
-		udelay(200);
+		usleep_range(200, 210);
 		retval = rtsx_write_register(chip, SD_VPCLK0_CTL,
 					     PHASE_NOT_RESET, PHASE_NOT_RESET);
 		if (retval)
@@ -806,7 +806,7 @@ int switch_normal_clock(struct rtsx_chip *chip, int clk)
 					     PHASE_NOT_RESET, PHASE_NOT_RESET);
 		if (retval)
 			return retval;
-		udelay(200);
+		usleep_range(200, 210);
 	}
 	retval = rtsx_write_register(chip, CLK_CTL, 0xFF, 0);
 	if (retval)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
