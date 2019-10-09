Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13230D1078
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9F9B8835C;
	Wed,  9 Oct 2019 13:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y78PCReNZ1gi; Wed,  9 Oct 2019 13:43:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E63088338;
	Wed,  9 Oct 2019 13:43:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA2B01BF2B4
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B6F9587899
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9uALNd5DENTn for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6CB6587864
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 458776C64FAE1296733B;
 Wed,  9 Oct 2019 21:43:30 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 21:43:20 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <jerome.pouiller@silabs.com>, <gregkh@linuxfoundation.org>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 3/3] staging: wfx: Make some functions static in sta.c
Date: Wed, 9 Oct 2019 21:50:30 +0800
Message-ID: <1570629030-29888-4-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
References: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
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

Fix sparse warnings:

drivers/staging/wfx/sta.c:269:6: warning: symbol 'wfx_update_filtering_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:475:6: warning: symbol 'wfx_event_handler_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:521:6: warning: symbol 'wfx_bss_loss_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:528:6: warning: symbol 'wfx_bss_params_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:539:6: warning: symbol 'wfx_set_beacon_wakeup_period_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:732:6: warning: symbol 'wfx_unjoin_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:794:6: warning: symbol 'wfx_set_cts_work' was not declared. Should it be static?
drivers/staging/wfx/sta.c:1234:6: warning: symbol 'wfx_set_tim_work' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/wfx/sta.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 2855d14..d19bab6 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -269,7 +269,7 @@ void wfx_update_filtering(struct wfx_vif *wvif)
 	kfree(bf_tbl);
 }

-void wfx_update_filtering_work(struct work_struct *work)
+static void wfx_update_filtering_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, update_filtering_work);

@@ -475,7 +475,7 @@ static void wfx_event_report_rssi(struct wfx_vif *wvif, uint8_t raw_rcpi_rssi)
 	ieee80211_cqm_rssi_notify(wvif->vif, cqm_evt, rcpi_rssi, GFP_KERNEL);
 }

-void wfx_event_handler_work(struct work_struct *work)
+static void wfx_event_handler_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif =
 		container_of(work, struct wfx_vif, event_handler_work);
@@ -521,14 +521,14 @@ void wfx_event_handler_work(struct work_struct *work)
 	__wfx_free_event_queue(&list);
 }

-void wfx_bss_loss_work(struct work_struct *work)
+static void wfx_bss_loss_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, bss_loss_work.work);

 	ieee80211_connection_loss(wvif->vif);
 }

-void wfx_bss_params_work(struct work_struct *work)
+static void wfx_bss_params_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, bss_params_work);

@@ -539,7 +539,7 @@ void wfx_bss_params_work(struct work_struct *work)
 	mutex_unlock(&wvif->wdev->conf_mutex);
 }

-void wfx_set_beacon_wakeup_period_work(struct work_struct *work)
+static void wfx_set_beacon_wakeup_period_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, set_beacon_wakeup_period_work);

@@ -732,7 +732,7 @@ static void wfx_do_join(struct wfx_vif *wvif)
 		cfg80211_put_bss(wvif->wdev->hw->wiphy, bss);
 }

-void wfx_unjoin_work(struct work_struct *work)
+static void wfx_unjoin_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, unjoin_work);

@@ -794,7 +794,7 @@ int wfx_sta_remove(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 	return 0;
 }

-void wfx_set_cts_work(struct work_struct *work)
+static void wfx_set_cts_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, set_cts_work);
 	u8 erp_ie[3] = { WLAN_EID_ERP_INFO, 1, 0 };
@@ -1234,7 +1234,7 @@ static int wfx_set_tim_impl(struct wfx_vif *wvif, bool aid0_bit_set)
 	return 0;
 }

-void wfx_set_tim_work(struct work_struct *work)
+static void wfx_set_tim_work(struct work_struct *work)
 {
 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, set_tim_work);

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
