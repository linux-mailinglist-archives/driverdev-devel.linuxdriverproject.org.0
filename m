Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C981A3EE3
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 05:47:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 188A486A90;
	Fri, 10 Apr 2020 03:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYZwyg8gaIMa; Fri, 10 Apr 2020 03:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4D0686257;
	Fri, 10 Apr 2020 03:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E5851BF995
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 28AD320527
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fDySCVS46+J for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 03:46:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 759B020109
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 03:46:40 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59F4620BED;
 Fri, 10 Apr 2020 03:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490400;
 bh=veCBmgdRybGO47FNkFF3zVpn19J+P2jgtZGRswXSyFg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=grMnufgF/5rJDnhlgTHbr6X8mVDtQE+5ejGB+douOLT9mqr5UWg9DLkMMXwx9Yy7i
 xnZp8bIkODz64Mn9eIFNduUe2GfW/z+VX9LWrRZIPCTFRCeb+hi8nDPV/y9ttPQ/uT
 JcIZpXpAPxxAzUMVQtqo/yTWO+4FhHRz/YAt5Y6k=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 04/68] staging: wilc1000: avoid double unlocking
 of 'wilc->hif_cs' mutex
Date: Thu,  9 Apr 2020 23:45:29 -0400
Message-Id: <20200410034634.7731-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Ajay Singh <ajay.kathat@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

[ Upstream commit 6c411581caef6e3b2c286871641018364c6db50a ]

Possible double unlocking of 'wilc->hif_cs' mutex was identified by
smatch [1]. Removed the extra call to release_bus() in
wilc_wlan_handle_txq() which was missed in earlier commit fdc2ac1aafc6
("staging: wilc1000: support suspend/resume functionality").

[1]. https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/NOEVW7C3GV74EWXJO3XX6VT2NKVB2HMT/

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
Link: https://lore.kernel.org/r/20200221170120.15739-1-ajay.kathat@microchip.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/wilc1000/wlan.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wlan.c b/drivers/staging/wilc1000/wlan.c
index 601e4d1345d24..05b8adfe001da 100644
--- a/drivers/staging/wilc1000/wlan.c
+++ b/drivers/staging/wilc1000/wlan.c
@@ -572,7 +572,6 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 				entries = ((reg >> 3) & 0x3f);
 				break;
 			}
-			release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 		} while (--timeout);
 		if (timeout <= 0) {
 			ret = func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x0);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
