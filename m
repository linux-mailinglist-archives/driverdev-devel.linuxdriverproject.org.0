Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0AD97933
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 14:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB7FB86DA9;
	Wed, 21 Aug 2019 12:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id idg1e-jIVGCa; Wed, 21 Aug 2019 12:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F15B286D9A;
	Wed, 21 Aug 2019 12:26:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1D571BF326
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AED1C87872
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5VMlJgonl+Q for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 12:26:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84767838F6
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 12:26:21 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F38ABCF1108F8A60286B;
 Wed, 21 Aug 2019 20:26:18 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 21 Aug 2019
 20:26:11 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <colin.king@canonical.com>,
 <puranjay12@gmail.com>
Subject: [PATCH -next] staging: rtl8192e: remove two set but not used variables
Date: Wed, 21 Aug 2019 20:25:56 +0800
Message-ID: <20190821122556.37636-1-yuehaibing@huawei.com>
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

 In function '_rtl92e_dm_tx_power_tracking_callback_tssi':
drivers/staging/rtl8192e/rtl8192e/rtl_dm.c:621:7:
 warning: variable 'bHighpowerstate' set but not used [-Wunused-but-set-variable]
 In function '_rtl92e_dm_rx_path_sel_byrssi':
drivers/staging/rtl8192e/rtl8192e/rtl_dm.c:1904:32:
 warning: variable 'cck_rx_ver2_min_index' set but not used [-Wunused-but-set-variable]

They are never used, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 1b7e3fd..20e4941 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -618,7 +618,7 @@ static void _rtl92e_dm_tx_update_tssi_strong_signal(struct net_device *dev,
 static void _rtl92e_dm_tx_power_tracking_callback_tssi(struct net_device *dev)
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
-	bool	bHighpowerstate, viviflag = false;
+	bool	viviflag = false;
 	struct dcmd_txcmd tx_cmd;
 	u8	powerlevelOFDM24G;
 	int	i = 0, j = 0, k = 0;
@@ -632,7 +632,6 @@ static void _rtl92e_dm_tx_power_tracking_callback_tssi(struct net_device *dev)
 	rtl92e_writeb(dev, Pw_Track_Flag, 0);
 	rtl92e_writeb(dev, FW_Busy_Flag, 0);
 	priv->rtllib->bdynamic_txpower_enable = false;
-	bHighpowerstate = priv->bDynamicTxHighPower;
 
 	powerlevelOFDM24G = (u8)(priv->Pwr_Track>>24);
 	RF_Type = priv->rf_type;
@@ -1901,7 +1900,7 @@ static void _rtl92e_dm_rx_path_sel_byrssi(struct net_device *dev)
 	u8 cck_default_Rx = 0x2;
 	u8 cck_optional_Rx = 0x3;
 	long tmp_cck_max_pwdb = 0, tmp_cck_min_pwdb = 0, tmp_cck_sec_pwdb = 0;
-	u8 cck_rx_ver2_max_index = 0, cck_rx_ver2_min_index = 0;
+	u8 cck_rx_ver2_max_index = 0;
 	u8 cck_rx_ver2_sec_index = 0;
 	u8 cur_rf_rssi;
 	long cur_cck_pwdb;
@@ -1984,7 +1983,6 @@ static void _rtl92e_dm_rx_path_sel_byrssi(struct net_device *dev)
 
 				if (rf_num == 1) {
 					cck_rx_ver2_max_index = i;
-					cck_rx_ver2_min_index = i;
 					cck_rx_ver2_sec_index = i;
 					tmp_cck_max_pwdb = cur_cck_pwdb;
 					tmp_cck_min_pwdb = cur_cck_pwdb;
@@ -1997,7 +1995,6 @@ static void _rtl92e_dm_rx_path_sel_byrssi(struct net_device *dev)
 						tmp_cck_sec_pwdb = cur_cck_pwdb;
 						tmp_cck_min_pwdb = cur_cck_pwdb;
 						cck_rx_ver2_sec_index = i;
-						cck_rx_ver2_min_index = i;
 					}
 				} else {
 					if (cur_cck_pwdb > tmp_cck_max_pwdb) {
@@ -2027,13 +2024,10 @@ static void _rtl92e_dm_rx_path_sel_byrssi(struct net_device *dev)
 						   (cur_cck_pwdb > tmp_cck_min_pwdb)) {
 						;
 					} else if (cur_cck_pwdb == tmp_cck_min_pwdb) {
-						if (tmp_cck_sec_pwdb == tmp_cck_min_pwdb) {
+						if (tmp_cck_sec_pwdb == tmp_cck_min_pwdb)
 							tmp_cck_min_pwdb = cur_cck_pwdb;
-							cck_rx_ver2_min_index = i;
-						}
 					} else if (cur_cck_pwdb < tmp_cck_min_pwdb) {
 						tmp_cck_min_pwdb = cur_cck_pwdb;
-						cck_rx_ver2_min_index = i;
 					}
 				}
 
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
