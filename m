Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 206D676B34
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 16:11:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F3E2D2637D;
	Fri, 26 Jul 2019 14:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9+VssF1lMloE; Fri, 26 Jul 2019 14:11:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2BEE125488;
	Fri, 26 Jul 2019 14:11:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 207491BF5AD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 14:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C059253D4
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 14:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYFxdq1Hp1qp for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 14:11:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FB8024EA2
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 14:11:30 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1D65FF879E7F7B9D1E28;
 Fri, 26 Jul 2019 22:11:27 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 26 Jul 2019
 22:11:19 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <mamtashukla555@gmail.com>, <hariprasad.kelam@gmail.com>
Subject: [PATCH 06/10] staging: rtl8723bs: os_dep: remove two set but not used
 variables
Date: Fri, 26 Jul 2019 22:09:59 +0800
Message-ID: <20190726140959.15008-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs//os_dep/osdep_service.c: In function 'rtw_buf_free':
drivers/staging/rtl8723bs//os_dep/osdep_service.c:321:6: warning:
 variable 'ori_len' set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs//os_dep/ioctl_linux.c: In function 'rtw_ioctl_wext_private':
drivers/staging/rtl8723bs//os_dep/ioctl_linux.c:4915:6: warning:
 variable 'num_priv' set but not used [-Wunused-but-set-variable]

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c   | 2 --
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 4 ----
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 99e6b10..90c2997 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -4912,7 +4912,6 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 	s32 k;
 	const iw_handler *priv;		/* Private ioctl */
 	const struct iw_priv_args *priv_args;	/* Private ioctl description */
-	u32 num_priv;				/* Number of ioctl */
 	u32 num_priv_args;			/* Number of descriptions */
 	iw_handler handler;
 	int temp;
@@ -4948,7 +4947,6 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 
 	priv = rtw_private_handler;
 	priv_args = rtw_private_args;
-	num_priv = ARRAY_SIZE(rtw_private_handler);
 	num_priv_args = ARRAY_SIZE(rtw_private_args);
 
 	if (num_priv_args == 0) {
diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index 62fdd24..25a8004 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -318,13 +318,9 @@ int rtw_change_ifname(struct adapter *padapter, const char *ifname)
 
 void rtw_buf_free(u8 **buf, u32 *buf_len)
 {
-	u32 ori_len;
-
 	if (!buf || !buf_len)
 		return;
 
-	ori_len = *buf_len;
-
 	if (*buf) {
 		*buf_len = 0;
 		kfree(*buf);
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
