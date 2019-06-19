Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 668624BD4B
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 17:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6DAD867CC;
	Wed, 19 Jun 2019 15:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upHP2vHy3zst; Wed, 19 Jun 2019 15:54:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6481E81AE2;
	Wed, 19 Jun 2019 15:54:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4A51BF9AF
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 15:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1BCEE832C6
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 15:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6y3KmDHtxiSl for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 15:54:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2ABD85E5D
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 15:54:02 +0000 (UTC)
Received: from faui06c.informatik.uni-erlangen.de
 (faui06c.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:202])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 0F3BC2412F1;
 Wed, 19 Jun 2019 17:46:58 +0200 (CEST)
Received: by faui06c.informatik.uni-erlangen.de (Postfix, from userid 30063)
 id F2FC7B00B8E; Wed, 19 Jun 2019 17:46:57 +0200 (CEST)
From: Lukas Schneider <lukas.s.schneider@fau.de>
To: kim.jamie.bradley@gmail.com, pakki001@umn.edu, colin.king@canonical.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] rts5208: Fix usleep range is preferred over udelay
Date: Wed, 19 Jun 2019 17:46:48 +0200
Message-Id: <20190619154648.13840-4-lukas.s.schneider@fau.de>
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
see Doucmentation/timers/timers-howto.txt

It's save to sleep here instead of using busy waiting,
because we are not in an atomic context.

Signed-off-by: Lukas Schneider <lukas.s.schneider@fau.de>
Signed-off-by: Jannik Moritz <jannik.moritz@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/rts5208/sd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index c256a2398651..23a3499096ce 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -865,7 +865,7 @@ static int sd_change_phase(struct rtsx_chip *chip, u8 sample_point, u8 tune_dir)
 						     PHASE_CHANGE);
 			if (retval)
 				return retval;
-			udelay(50);
+			usleep_range(50, 60);
 			retval = rtsx_write_register(chip, SD_VP_CTL, 0xFF,
 						     PHASE_CHANGE |
 						     PHASE_NOT_RESET |
@@ -877,14 +877,14 @@ static int sd_change_phase(struct rtsx_chip *chip, u8 sample_point, u8 tune_dir)
 						     CHANGE_CLK, CHANGE_CLK);
 			if (retval)
 				return retval;
-			udelay(50);
+			usleep_range(50, 60);
 			retval = rtsx_write_register(chip, SD_VP_CTL, 0xFF,
 						     PHASE_NOT_RESET |
 						     sample_point);
 			if (retval)
 				return retval;
 		}
-		udelay(100);
+		usleep_range(100, 110);
 
 		rtsx_init_cmd(chip);
 		rtsx_add_cmd(chip, WRITE_REG_CMD, SD_DCMPS_CTL, DCMPS_CHANGE,
@@ -918,7 +918,7 @@ static int sd_change_phase(struct rtsx_chip *chip, u8 sample_point, u8 tune_dir)
 				return retval;
 		}
 
-		udelay(50);
+		usleep_range(50, 60);
 	}
 
 	retval = rtsx_write_register(chip, SD_CFG1, SD_ASYNC_FIFO_NOT_RST, 0);
@@ -1416,7 +1416,7 @@ static int sd_wait_data_idle(struct rtsx_chip *chip)
 			retval = STATUS_SUCCESS;
 			break;
 		}
-		udelay(100);
+		usleep_range(100, 110);
 	}
 	dev_dbg(rtsx_dev(chip), "SD_DATA_STATE: 0x%02x\n", val);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
