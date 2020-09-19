Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C072D270EC5
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 17:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F109F871FB;
	Sat, 19 Sep 2020 15:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsBfwSxrcPyR; Sat, 19 Sep 2020 15:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1638870FC;
	Sat, 19 Sep 2020 15:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 951101BF4D7
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9246086CE4
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJwIfbVZZ_Q1 for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 15:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DAB1F8544C
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 15:12:33 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id c18so8124132qtw.5
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZTmbpiZJZ36QTZI1/cVqn9PbMiis6W52fV5OuJ825Kw=;
 b=dWqubfN9cccD9q6YpZj9CS3JE+GznVFJzH3/CCpl/ixmcEbKGtIY1WrlZTMX6abAXh
 +/Gd46Ut4Ne/xXXbAKRpWQo3YTxu+75eCwfzr2FkvZT6ndDmjlk9xgB3Gt+N01UTQgZR
 Tg5yugJSK1zSxTefb3/lPJft8a8eMdeF89lBSo1S7LqRa+kHOkBRr28xEDWCiPOpBLLU
 MgOKu+KOC/r1QlFU0H0SneOsXQ4niw7TXL/0u9/aqAokiTO4Q275Mvwtpi10qDf4O+sH
 a/rWaz/OfluUTed1/3ug6cmTNCfG8HVYlCemADDzDgOiJnN438fnOL+BFC944qa+lmiY
 Tv+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZTmbpiZJZ36QTZI1/cVqn9PbMiis6W52fV5OuJ825Kw=;
 b=c43b2PYovV6gdDp7pEhjj3UurSasWMhej5+OhzwzWoUr7D8fvOoTazrGR2n/VvTkjT
 4zkUKVgMWLupxWKZr8hQuyfKZPqbWEZGtcF2fuLRvCp0T7PcvhgDGOlYtcmxzmvXnB3c
 H3j0YfnPQRXdxaKvNd84iRSHHE3LABDqE3Ky2rfLyM2u/xb2sYvZ22u23+V4RwqkqvHa
 KcrxH0C5OgFMf6tFtfoflI26ABHo/CGG5hJBjJsqSfXucr2HIAsACz3Ej6ZhPNKlm8Bw
 p0cYhZ5XJkglf6XnzsDqCl32V8OqHD4vOrQQHKr6O/DuRokn76SHyuo8nmfMfklSRdp9
 bCbw==
X-Gm-Message-State: AOAM5337gJLYWfYcWIycqEXa4O/NssLxHtPBaWjx8Sc+/WzD01nziYX1
 +mB0CF6yWRrxmskUcr/R5pY=
X-Google-Smtp-Source: ABdhPJyDkj+15hjnJwPM+dcN3G2ilevN87ZCVWpyw8C8MQtMPz/AaoCpHTdtQ2FGsZhqO8+LYLTi/g==
X-Received: by 2002:aed:2be2:: with SMTP id e89mr38518720qtd.298.1600528352916; 
 Sat, 19 Sep 2020 08:12:32 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-206.092.073.pools.vodafone-ip.de. [92.73.54.206])
 by smtp.gmail.com with ESMTPSA id z3sm4513222qkj.0.2020.09.19.08.12.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 08:12:32 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8192u: clean up comparsions to NULL
Date: Sat, 19 Sep 2020 17:08:23 +0200
Message-Id: <20200919150823.16923-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200919150823.16923-1-straube.linux@gmail.com>
References: <20200919150823.16923-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up comparsions to NULL reported by checkpatch.
if (x == NULL) -> if (!x)
if (x != NULL) -> if (x)

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c     | 6 +++---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 4 ++--
 drivers/staging/rtl8192u/r819xU_phy.c    | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 1d1685d2e908..d853586705fc 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -250,7 +250,7 @@ static int rtl8180_wx_get_range(struct net_device *dev,
 	/* range->old_num_channels; */
 	/* range->old_num_frequency; */
 	/* range->old_freq[6]; */ /* Filler to keep "version" at the same offset */
-	if (priv->rf_set_sens != NULL)
+	if (priv->rf_set_sens)
 		range->sensitivity = priv->max_sens;	/* signal level threshold range */
 
 	range->max_qual.qual = 100;
@@ -666,7 +666,7 @@ static int r8192_wx_get_sens(struct net_device *dev,
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-	if (priv->rf_set_sens == NULL)
+	if (!priv->rf_set_sens)
 		return -1; /* we have not this support for this radio */
 	wrqu->sens.value = priv->sens;
 	return 0;
@@ -680,7 +680,7 @@ static int r8192_wx_set_sens(struct net_device *dev,
 	short err = 0;
 
 	mutex_lock(&priv->wx_mutex);
-	if (priv->rf_set_sens == NULL) {
+	if (!priv->rf_set_sens) {
 		err = -1; /* we have not this support for this radio */
 		goto exit;
 	}
diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index c58c9cac2599..4cece40a92f6 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -430,7 +430,7 @@ static void cmpk_handle_tx_rate_history(struct net_device *dev, u8 *pmsg)
 
 	ptxrate = (cmpk_tx_rahis_t *)pmsg;
 
-	if (ptxrate == NULL)
+	if (!ptxrate)
 		return;
 
 	for (i = 0; i < 16; i++) {
@@ -479,7 +479,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 	/* 0. Check inpt arguments. It is a command queue message or
 	 * pointer is null.
 	 */
-	if (pstats == NULL)
+	if (!pstats)
 		return 0;	/* This is not a command packet. */
 
 	/* 1. Read received command packet message length from RFD. */
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index aa71ea97a179..eef751d2b12e 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1150,7 +1150,7 @@ static u8 rtl8192_phy_SetSwChnlCmdArray(struct sw_chnl_cmd *CmdTable, u32 CmdTab
 {
 	struct sw_chnl_cmd *pCmd;
 
-	if (CmdTable == NULL) {
+	if (!CmdTable) {
 		RT_TRACE(COMP_ERR, "%s(): CmdTable cannot be NULL\n", __func__);
 		return false;
 	}
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
