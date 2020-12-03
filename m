Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6991B2CD5DE
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1E9387ABF;
	Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id afzpGBFT2scr; Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2738087AAD;
	Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E47B41BF9B6
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E16C187506
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJkuT-HoIs00 for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 065658752A
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:53 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MsaeR-1jsPzT2mwF-00tyos; Thu, 03 Dec 2020 13:48:12 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 11/11] drivers: staging: rtl8723bs: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:48:03 +0100
Message-Id: <20201203124803.23390-11-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:K37+eyIhv0Jb/MzK3jnMGWBmLWepPJuiKdD1EOq0NyyZs+7YC10
 jE5E0O/ntftFAhWSpM6FBNp32u3g80+Y4PIwebTKvt5maocGGGDlttLPphBTnwemY9iA8P0
 Ea4YxF/NhpPtBLgkJnp+yOkmLcdgXZZYuMsiL86C1siiIxDdT7ySmroAcuRa8yKj912uvsa
 qTDf9K/Ihh8mumSlgcyiQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:qfkFQp5hoTE=:VCgOPZqPOsCzjVT2ig9+gx
 7c88PXwrJDy9bnQNZJel1Drz5LJfxrl+YLIyLCB8nQVheLEW+gNWDMcmEQwWXw3ORRnqU5Hq9
 sxLclY3Xas4uzGXxVbmNpsobNlDji0ie5fwBeZUeOUlIUWp6KHkpjwF/O96nj63n2iboEOxHB
 yoco/hULUQ7NYOaBzmh79eg58EFKG9ijM2U8cvlOuy2ka96guUAbtEH/PhksJB42t5yjlk2+0
 h9wzj7QMUnhvOt8yeRz0YoNUZf20XdOt43sKan/UTZ3uYMadWV5Bk+zOlwHNspxKsC1jPQCxZ
 c1ApsrHuA4tWHmbvquJz4EVxZ6y0EOZ5XBQ/oOqqYTEbdgiJjLXeYe6Vd2YpEOG7JfmLamlFA
 /7v8kDK1B2CRtvUIOY3nbiuHFwtwoBjCi9yJiiu19qWJnu4UieoAmFLxiKLUg
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, rcy@google.com,
 f.fainelli@gmail.com, rspringer@google.com, laurent.pinchart@ideasonboard.com,
 netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mchehab@kernel.org, nsaenzjulienne@suse.de, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove MODULE_VERSION(), as it doesn't seem to serve any practical purpose.
The driver received lots of changes, but module remained constant since
it landed in mainline, several years ago.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 27f990a01a23..0a94bab4fdcb 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -13,7 +13,6 @@
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Realtek Wireless Lan Driver");
 MODULE_AUTHOR("Realtek Semiconductor Corp.");
-MODULE_VERSION(DRIVERVERSION);
 
 /* module param defaults */
 static int rtw_chip_version;
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
