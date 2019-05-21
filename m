Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB9A25178
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:07:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8ACE3861EB;
	Tue, 21 May 2019 14:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVcrK4N0Jrg0; Tue, 21 May 2019 14:07:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1957C81EF5;
	Tue, 21 May 2019 14:07:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98E781BF4DD
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 923B385FA4
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCvj6_W02BkR for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F42785FA0
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:07:38 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id f12so8506936plt.8
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yNeTHroZTnlDOqycyYeAy/CSBPfA1RfyfvTE3IJTnV0=;
 b=Jo/yh0gkKpU+wFFDF92oeaNRGYqpfBXQPXk4aYlRgskCqf4lMVwOVYNk1AT2MsnwVO
 NekQTh5Q2bZCV5KIzOp5AzzS4d9xXjJQsnHo26yy7KEyqOA3JVgL98jnjLEM1QSBLoo5
 VmUSBOS2gt/+xzrzxetYQXfbljaMUj9BB3sN1DWswC0qCWit+M7C5jtbIPy4TaI8Gs8U
 FzrGb+530TY2sCyn0DEFy/71eMtU4bLQTe4qg7YSfjR1vDixKQsvC9KZKGon0WM8ZhNI
 oqAruJxB1EFmNEYG8WbSGrs5BBSf36xBCIDA4PErNYuEwE8wKUGOJcXWv2JIwPkhgClq
 6CvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yNeTHroZTnlDOqycyYeAy/CSBPfA1RfyfvTE3IJTnV0=;
 b=gxgZ0DhOH8Qzk96FtghY1EYU5olmkl7T33Zc+zX9XE8NgYZJMD9Wamw15qCY1ePO3J
 /HF/6QuK2v9Ho0aIpLHgnjGX60nT3ZhMu3vODE0vpFcLM++oVDoaTZDb8jAer6dpqi4A
 kWHau41n4oAOOlQfKbSvGItMa2z5ZN0Ii/zudizkO2lsrc3vLjPMAwgxLUPjpIzzH60J
 6ufzYuJByPyuOR79BCLrRo6zSnhvlDpzX344Z1e1opnzCIlWsNwK6gV0+3cJXMAigDRa
 VjIsdPo0pNmWyRHyL0MIGDn98D95wVfGm1XSimz+IXrG2FSEsXn3d9jH4+wlZFHshG5S
 M5zw==
X-Gm-Message-State: APjAAAXd4ofvSKX0/IlAlGGlOE1SPE621u0DPUUfkN1Xye32TIVqIQEZ
 G6lIZbx/GjGoWNDR5Cus/oc=
X-Google-Smtp-Source: APXvYqy8kYUW9mr/ch5OjVPjV06NuBilSfe0/jyqoJrb7sbx78SClO5YxjFBeSTwhgfKm1/BOgq8Lg==
X-Received: by 2002:a17:902:f215:: with SMTP id
 gn21mr83730448plb.194.1558447656890; 
 Tue, 21 May 2019 07:07:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:710a:4b60:ca77:51f2:1492:8f9a])
 by smtp.googlemail.com with ESMTPSA id
 d15sm65675655pfm.186.2019.05.21.07.07.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 07:07:36 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8192u: ieee80211: Replace function names in
 strings with "%s", __func__
Date: Tue, 21 May 2019 19:37:11 +0530
Message-Id: <20190521140711.20905-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use "%s", __func__ in place of strings which contain function names.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index 7cac668bfb0b..59d179ae7ad2 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -51,7 +51,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 				if (SN_EQUAL(pReorderEntry->SeqNum, pRxTs->rx_indicate_seq))
 					pRxTs->rx_indicate_seq = (pRxTs->rx_indicate_seq + 1) % 4096;
 
-				IEEE80211_DEBUG(IEEE80211_DL_REORDER, "RxPktPendingTimeout(): IndicateSeq: %d\n", pReorderEntry->SeqNum);
+				IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s: IndicateSeq: %d\n", __func__, pReorderEntry->SeqNum);
 				ieee->stats_IndicateArray[index] = pReorderEntry->prxb;
 				index++;
 
@@ -97,7 +97,7 @@ static void TsAddBaProcess(struct timer_list *t)
 	struct ieee80211_device *ieee = container_of(pTxTs, struct ieee80211_device, TxTsRecord[num]);
 
 	TsInitAddBA(ieee, pTxTs, BA_POLICY_IMMEDIATE, false);
-	IEEE80211_DEBUG(IEEE80211_DL_BA, "TsAddBaProcess(): ADDBA Req is started!! \n");
+	IEEE80211_DEBUG(IEEE80211_DL_BA, "%s: ADDBA Req is started!! \n", __func__);
 }
 
 
@@ -456,7 +456,7 @@ void RemovePeerTS(struct ieee80211_device *ieee, u8 *Addr)
 {
 	struct ts_common_info	*pTS, *pTmpTS;
 
-	printk("===========>RemovePeerTS,%pM\n", Addr);
+	printk("===========>%s,%pM\n", __func__, Addr);
 	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Pending_List, list) {
 		if (memcmp(pTS->addr, Addr, 6) == 0) {
 			RemoveTsEntry(ieee, pTS, TX_DIR);
@@ -525,11 +525,11 @@ void TsStartAddBaProcess(struct ieee80211_device *ieee, struct tx_ts_record *pTx
 	if (!pTxTS->add_ba_req_in_progress) {
 		pTxTS->add_ba_req_in_progress = true;
 		if (pTxTS->add_ba_req_delayed)	{
-			IEEE80211_DEBUG(IEEE80211_DL_BA, "TsStartAddBaProcess(): Delayed Start ADDBA after 60 sec!!\n");
+			IEEE80211_DEBUG(IEEE80211_DL_BA, "%s: Delayed Start ADDBA after 60 sec!!\n", __func__);
 			mod_timer(&pTxTS->ts_add_ba_timer,
 				  jiffies + msecs_to_jiffies(TS_ADDBA_DELAY));
 		} else {
-			IEEE80211_DEBUG(IEEE80211_DL_BA, "TsStartAddBaProcess(): Immediately Start ADDBA now!!\n");
+			IEEE80211_DEBUG(IEEE80211_DL_BA, "%s: Immediately Start ADDBA now!!\n", __func__);
 			mod_timer(&pTxTS->ts_add_ba_timer, jiffies+10); //set 10 ticks
 		}
 	} else {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
