Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 715E97C44A
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 16:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B50F72153B;
	Wed, 31 Jul 2019 14:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3We72AhgBPJZ; Wed, 31 Jul 2019 14:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 29A1C20368;
	Wed, 31 Jul 2019 14:00:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 95E6C1BF2CE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 14:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9335485F29
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 14:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WWC0BSq6YIcU for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 14:00:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8524185F05
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 14:00:38 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id AFEEC8CB03ECE0FCABD2;
 Wed, 31 Jul 2019 22:00:33 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 31 Jul 2019
 22:00:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <madhumithabiw@gmail.com>, <hdegoede@redhat.com>, <dan.carpenter@oracle.com>
Subject: [PATCH -next] staging: rtl8723bs: remove set but not used variables
 'prspbuf' and 'auth'
Date: Wed, 31 Jul 2019 21:59:53 +0800
Message-ID: <20190731135953.16784-1-yuehaibing@huawei.com>
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

drivers/staging/rtl8723bs/core/rtw_cmd.c: In function rtw_cmd_thread:
drivers/staging/rtl8723bs/core/rtw_cmd.c:405:16: warning: variable prspbuf set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/core/rtw_cmd.c: In function rtw_joinbss_cmd:
drivers/staging/rtl8723bs/core/rtw_cmd.c:771:6: warning: variable auth set but not used [-Wunused-but-set-variable]

They are never used, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index addc557..c6565b0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -402,7 +402,7 @@ int rtw_cmd_thread(void *context)
 {
 	u8 ret;
 	struct cmd_obj *pcmd;
-	u8 *pcmdbuf, *prspbuf;
+	u8 *pcmdbuf;
 	unsigned long cmd_start_time;
 	unsigned long cmd_process_time;
 	u8 (*cmd_hdl)(struct adapter *padapter, u8 *pbuf);
@@ -414,7 +414,6 @@ int rtw_cmd_thread(void *context)
 	thread_enter("RTW_CMD_THREAD");
 
 	pcmdbuf = pcmdpriv->cmd_buf;
-	prspbuf = pcmdpriv->rsp_buf;
 
 	pcmdpriv->stop_req = 0;
 	atomic_set(&(pcmdpriv->cmdthd_running), true);
@@ -768,7 +767,7 @@ int rtw_startbss_cmd(struct adapter  *padapter, int flags)
 
 u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 {
-	u8 *auth, res = _SUCCESS;
+	u8 res = _SUCCESS;
 	uint	t_len = 0;
 	struct wlan_bssid_ex		*psecnetwork;
 	struct cmd_obj		*pcmd;
@@ -825,7 +824,6 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 
 	memcpy(psecnetwork, &pnetwork->network, get_wlan_bssid_ex_sz(&pnetwork->network));
 
-	auth = &psecuritypriv->authenticator_ie[0];
 	psecuritypriv->authenticator_ie[0] = (unsigned char)psecnetwork->IELength;
 
 	if ((psecnetwork->IELength-12) < (256-1)) {
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
