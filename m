Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 522A631F314
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 00:30:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E46F5606B3
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 23:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bi_doqmPg26F for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 23:30:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 14177606C4; Thu, 18 Feb 2021 23:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32F1E6069A;
	Thu, 18 Feb 2021 23:30:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FC6A1BF861
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 23:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C21E86EA4
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 23:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1WswWCc6z2J for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 23:30:17 +0000 (UTC)
X-Greylist: delayed 00:07:40 by SQLgrey-1.7.6
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84B0F86EA3
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 23:30:17 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id AF9192400FD
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 00:22:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1613690553; bh=yEXRlc/sSYKM3VIaDtPwOZa/sbjN+qoXAvWzOZjB3BU=;
 h=From:To:Cc:Subject:Date:From;
 b=TiJxdOXdaAEHQ5TQX/VJevysFpmWwOdZR2DJYfhq2igdClm1TtBRY3UTysruv2wRl
 apFZcDB5FsZy4MuBoQnz3na2A3fpzH2ZPq/t3NzMQk7WZun1h6DIb6MmBTBei+t/jM
 iPqMhrKt4KSyzsD8XyBhomhQI407Bcqt4tN8KQwAkVmJM/lMjEyxX6aiTGpS31miSc
 kIPlvIcSHyiunT/9qKwzlBZY8o8MQ96OOPNVLoHpDkCIenEhbGvR9BpXShxWzygIng
 3l4xxajTLvlKlbhF8iIqaiUD8VuabQg2mpQ/nKk94ZRlx4vVQzC9stHwxSC6jf3FXK
 cK/zQoG4wo2DA==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4DhW2c072nz6tm9;
 Fri, 19 Feb 2021 00:22:31 +0100 (CET)
From: Florian Ziegler <florian.ziegler@posteo.de>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6656: Fix alignment of function args
Date: Fri, 19 Feb 2021 00:22:15 +0100
Message-Id: <20210218232215.17508-1-florian.ziegler@posteo.de>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, Florian Ziegler <florian.ziegler@posteo.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Align function arguments to fix checkpatch.pl CHECK message and rewrap
to match the file's style.

Signed-off-by: Florian Ziegler <florian.ziegler@posteo.de>
---
 drivers/staging/vt6656/card.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 10f3dfda83b5..396736eee690 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -375,7 +375,8 @@ int vnt_radio_power_off(struct vnt_private *priv)
 	case RF_VT3226D0:
 	case RF_VT3342A0:
 		ret = vnt_mac_reg_bits_off(priv, MAC_REG_SOFTPWRCTL,
-					(SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+					   (SOFTPWRCTL_SWPE2 |
+					    SOFTPWRCTL_SWPE3));
 		break;
 	}
 
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
