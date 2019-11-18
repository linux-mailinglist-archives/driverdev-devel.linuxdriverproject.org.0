Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C197FFFAB
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 118ED20422;
	Mon, 18 Nov 2019 07:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJ1UWdD-u16m; Mon, 18 Nov 2019 07:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BF4BF203FD;
	Mon, 18 Nov 2019 07:38:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2473A1BF94B
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 001F885C10
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pTlDY6iFCGoX for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0235A8648E
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:38:51 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E166CA1DAAA8C4D3BE6A;
 Mon, 18 Nov 2019 15:38:47 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:38:39 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <hariprasad.kelam@gmail.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH 4/5] staging: rtl8723bs: remove set but not used variable
 'notify_ielen', 'notify_ie', 'notify_interval', 'notify_capability'
Date: Mon, 18 Nov 2019 15:45:55 +0800
Message-ID: <1574063156-68155-5-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574063156-68155-1-git-send-email-zhengbin13@huawei.com>
References: <1574063156-68155-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function rtw_cfg80211_inform_bss:
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:248:9: warning: variable notify_ielen set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function rtw_cfg80211_inform_bss:
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:247:6: warning: variable notify_ie set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function rtw_cfg80211_inform_bss:
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:246:6: warning: variable notify_interval set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function rtw_cfg80211_inform_bss:
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:245:6: warning: variable notify_capability set but not used [-Wunused-but-set-variable]

They are introduced by commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver"), but never used, so remove them.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 52c1f66..9a17a9b1 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -240,10 +240,6 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 	u16 channel;
 	u32 freq;
 	u64 notify_timestamp;
-	u16 notify_capability;
-	u16 notify_interval;
-	u8 *notify_ie;
-	size_t notify_ielen;
 	s32 notify_signal;
 	u8 *buf = NULL, *pbuf;
 	size_t len, bssinf_len = 0;
@@ -324,12 +320,6 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl

 	notify_timestamp = ktime_to_us(ktime_get_boottime());

-	notify_interval = le16_to_cpu(*(__le16 *)rtw_get_beacon_interval_from_ie(pnetwork->network.IEs));
-	notify_capability = le16_to_cpu(*(__le16 *)rtw_get_capability_from_ie(pnetwork->network.IEs));
-
-	notify_ie = pnetwork->network.IEs+_FIXED_IE_LENGTH_;
-	notify_ielen = pnetwork->network.IELength-_FIXED_IE_LENGTH_;
-
 	/* We've set wiphy's signal_type as CFG80211_SIGNAL_TYPE_MBM: signal strength in mBm (100*dBm) */
 	if (check_fwstate(pmlmepriv, _FW_LINKED) == true &&
 		is_same_network(&pmlmepriv->cur_network.network, &pnetwork->network, 0)) {
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
