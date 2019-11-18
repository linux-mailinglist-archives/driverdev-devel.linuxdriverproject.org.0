Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 939FBFFFAC
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01381864E0;
	Mon, 18 Nov 2019 07:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zNS4fBHywJ3O; Mon, 18 Nov 2019 07:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B022985C10;
	Mon, 18 Nov 2019 07:38:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1163F1BF424
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4C6E203FD
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZRYHTSVeTi-b for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 93887203AD
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:38:51 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E551B29B63C6125DE000;
 Mon, 18 Nov 2019 15:38:47 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:38:39 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <hariprasad.kelam@gmail.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH 5/5] staging: rtl8723bs: remove set but not used variable
 'change', 'pos'
Date: Mon, 18 Nov 2019 15:45:56 +0800
Message-ID: <1574063156-68155-6-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function cfg80211_rtw_change_iface:
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:1310:5: warning: variable change set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function rtw_cfg80211_set_wpa_ie:
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:1803:19: warning: variable pos set but not used [-Wunused-but-set-variable]

They are introduced by commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver"), but never used, so remove them.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 9a17a9b1..322cabb 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1295,7 +1295,6 @@ static int cfg80211_rtw_change_iface(struct wiphy *wiphy,
 	struct wireless_dev *rtw_wdev = padapter->rtw_wdev;
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	int ret = 0;
-	u8 change = false;

 	DBG_871X(FUNC_NDEV_FMT" type =%d\n", FUNC_NDEV_ARG(ndev), type);

@@ -1326,7 +1325,6 @@ static int cfg80211_rtw_change_iface(struct wiphy *wiphy,

 	if (old_type != type)
 	{
-		change = true;
 		pmlmeext->action_public_rxseq = 0xffff;
 		pmlmeext->action_public_dialog_token = 0xff;
 	}
@@ -1795,7 +1793,7 @@ static int rtw_cfg80211_set_key_mgt(struct security_priv *psecuritypriv, u32 key

 static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t ielen)
 {
-	u8 *buf = NULL, *pos = NULL;
+	u8 *buf = NULL;
 	int group_cipher = 0, pairwise_cipher = 0;
 	int ret = 0;
 	int wpa_ielen = 0;
@@ -1830,7 +1828,6 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 			DBG_8192C("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
 	}

-	pos = buf;
 	if (ielen < RSN_HEADER_LEN) {
 		RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("Ie len too short %d\n", ielen));
 		ret  = -1;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
