Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8697B10AFA2
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 13:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F066C2274A;
	Wed, 27 Nov 2019 12:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EgPINBnR23LU; Wed, 27 Nov 2019 12:40:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1817B22703;
	Wed, 27 Nov 2019 12:40:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0ECBA1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0BA2D8625E
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WexUueevP-U2 for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CCF686237
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
Received: from faui04s.informatik.uni-erlangen.de
 (faui04s.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:149])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 9D986241835;
 Wed, 27 Nov 2019 13:31:02 +0100 (CET)
Received: by faui04s.informatik.uni-erlangen.de (Postfix, from userid 66121)
 id 8088A15E0B50; Wed, 27 Nov 2019 13:31:02 +0100 (CET)
From: Dorothea Ehrl <dorothea.ehrl@fau.de>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] staging/qlge: add braces to conditional statement
Date: Wed, 27 Nov 2019 13:30:50 +0100
Message-Id: <20191127123052.16424-3-dorothea.ehrl@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191127123052.16424-1-dorothea.ehrl@fau.de>
References: <20191127123052.16424-1-dorothea.ehrl@fau.de>
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
Cc: Vanessa Hack <vanessa.hack@fau.de>, Dorothea Ehrl <dorothea.ehrl@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "CHECK: braces {} should be used on all arms of this
statement" by checkpatch.pl.

Signed-off-by: Dorothea Ehrl <dorothea.ehrl@fau.de>
Co-developed-by: Vanessa Hack <vanessa.hack@fau.de>
Signed-off-by: Vanessa Hack <vanessa.hack@fau.de>
---
 drivers/staging/qlge/qlge_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 587102aa7fbf..f5ab6cc7050a 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -178,8 +178,9 @@ int ql_wait_reg_rdy(struct ql_adapter *qdev, u32 reg, u32 bit, u32 err_bit)
 				    "register 0x%.08x access error, value = 0x%.08x!.\n",
 				    reg, temp);
 			return -EIO;
-		} else if (temp & bit)
+		} else if (temp & bit) {
 			return 0;
+		}
 		udelay(UDELAY_DELAY);
 	}
 	netif_alert(qdev, probe, qdev->ndev,
@@ -3731,8 +3732,9 @@ static int ql_adapter_reset(struct ql_adapter *qdev)

 		/* Wait for the NIC and MGMNT FIFOs to empty. */
 		ql_wait_fifo_empty(qdev);
-	} else
+	} else {
 		clear_bit(QL_ASIC_RECOVERY, &qdev->flags);
+	}

 	ql_write32(qdev, RST_FO, (RST_FO_FR << 16) | RST_FO_FR);

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
