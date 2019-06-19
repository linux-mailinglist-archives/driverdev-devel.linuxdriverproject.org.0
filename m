Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A474BD47
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 17:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A333A207B0;
	Wed, 19 Jun 2019 15:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKT-OYsB5U1b; Wed, 19 Jun 2019 15:54:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5865D20797;
	Wed, 19 Jun 2019 15:54:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 884B01BF5F5
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 15:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 853AB87B5D
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 15:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mj2XPe3xXZ+Z for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 15:54:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6F1287B4D
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 15:54:02 +0000 (UTC)
Received: from faui06c.informatik.uni-erlangen.de
 (faui06c.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:202])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 80D532412DB;
 Wed, 19 Jun 2019 17:46:57 +0200 (CEST)
Received: by faui06c.informatik.uni-erlangen.de (Postfix, from userid 30063)
 id 7094EB00B74; Wed, 19 Jun 2019 17:46:57 +0200 (CEST)
From: Lukas Schneider <lukas.s.schneider@fau.de>
To: kim.jamie.bradley@gmail.com, pakki001@umn.edu, colin.king@canonical.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] rts5208: Fix usleep_range is preferred over udelay
Date: Wed, 19 Jun 2019 17:46:47 +0200
Message-Id: <20190619154648.13840-3-lukas.s.schneider@fau.de>
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
Cc: Jannik Moritz <jannik.moritz@fau.de>, linux-kernel@i4.cs.fau.de,
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
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/rts5208/rtsx_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 76c35f3c0208..8cddfe542d56 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -1803,7 +1803,7 @@ void rtsx_exit_ss(struct rtsx_chip *chip)
 
 	if (chip->power_down_in_ss) {
 		rtsx_force_power_on(chip, SSC_PDCTL | OC_PDCTL);
-		udelay(1000);
+		usleep_range(1000, 1010);
 	}
 
 	if (RTSX_TST_DELINK(chip)) {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
