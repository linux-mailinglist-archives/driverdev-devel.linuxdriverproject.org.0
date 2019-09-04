Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59101A9473
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 23:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B6F986AAB;
	Wed,  4 Sep 2019 21:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuzbYujisF2R; Wed,  4 Sep 2019 21:05:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 424E786739;
	Wed,  4 Sep 2019 21:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1311B1BF97E
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 21:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1030D84D8A
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 21:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JmW6-6zONGBZ for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 21:05:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2C6A84D0F
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 21:05:27 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (verified OK))
 by mx1.riseup.net (Postfix) with ESMTPS id E80261A652C;
 Wed,  4 Sep 2019 14:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1567631127; bh=RLM1V7holiv5uXxR58b5zPqf00nxc2ymX8fdlGsPBOs=;
 h=From:To:Subject:Date:From;
 b=A3wowv/MIngUNkpsgk59MMoIHhiDyIi6FhwyI39b9jnKZgmF0poaC7Jh0GD4dSm+K
 PYmi5kdloCu8LfuedeZmcW3Jtxvs2kKNd2VvHjmgdGtdBMAv75hw1NKs1RANcqaZ8n
 7qdLwlMEg2vM+uzjZqcjLOXQu0AXcIf1ggjwietE=
X-Riseup-User-ID: 4E284FA5E98CD97C1A4A4A34D27E74924627F18E6477D22557B90FBBC61CF950
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 63C952231D9;
 Wed,  4 Sep 2019 14:05:25 -0700 (PDT)
From: Leandro Ribeiro <leandrohr@riseup.net>
To: lkcamp@lists.libreplanetbr.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: Remove return statement from void function
Date: Wed,  4 Sep 2019 21:06:31 +0000
Message-Id: <20190904210631.13599-1-leandrohr@riseup.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch warning:

"WARNING: void function return statements are not generally useful"

Signed-off-by: Leandro Ribeiro <leandrohr@riseup.net>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 79c1e3edb189..7760fd0eb6c9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1406,7 +1406,6 @@ void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
 	rtl8723b_set_Fw_AP_Offload_Cmd(padapter, enable);
 	msleep(10);
 	DBG_871X_LEVEL(_drv_always_, "-%s()-\n", __func__);
-	return ;
 }
 #endif /* CONFIG_AP_WOWLAN */
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
