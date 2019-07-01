Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D035B48F
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 08:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5AAD086497;
	Mon,  1 Jul 2019 06:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAIIdBOpqbFm; Mon,  1 Jul 2019 06:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBE96863DE;
	Mon,  1 Jul 2019 06:19:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9F161BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E302A86404
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g1c-Qp5EBtlI for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 513F8863DE
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:19:16 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id w24so6765186plp.2
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5KjkpMzjHParsm97nuRz3pIwoqzGfrrVT80seQFb0yg=;
 b=Lnjj0r7cLuKnCz48z6MV5kV4vQxIgPrQVfMRi1w1vYGbek9mt3hbMesVx4sp8fFTCX
 IRYkn1CEhGg4qv/71WGMtUGf+DWobAtdiLC+h4VPJNjWlEBLHkc5RVGu3mAvQw3ALlZ/
 tg0kDJXRIU+FekK3nwqvOm3tSIDVRocGhjI7nj9HVwYOllOrx+YXxexbUSn8qOJI2lJk
 FaR+j+7V+fQ3L8eEVWIJORTPY1gChraJQ32A8LFJw9g4WbzlIjTOk4zUPx/wpCmmMJO9
 rHmVsqnG61ymuBb2M8pYFeaM+JKV43h3TofcOMXQckgk2klJUiePFFcYEwrDm7kn7C/o
 vxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5KjkpMzjHParsm97nuRz3pIwoqzGfrrVT80seQFb0yg=;
 b=qcA/xt3pC45kN38PCSgqZxjiCe8zjTgvBRfCb0O33AP2R0IWBaiW4olZ2XkpntvnKs
 vpykGQ3Of1s46OvYeyfaYNOQTJw5KDM3YQLEOBFqJ6Zp3nP49JoEP6BxwwSJrDxWcG4J
 AFt+/5NQxC5ly9HOhUYhO2W/t9M6wvQWonuXSlFQX/ddlYh1lSsnsS0jM3jPaR5NF/0G
 0r6y2owGvhYixN4UKfBazaXHHmmr8ntpbGAJj65dt1uHYuBP/enSZpBAjTjua41bFLxh
 TavvCTjroVzioBxDQg2Me+kJ/yIJIiM6nYk5/xvXegBMz20zIjEYPo2FAMdRGQ1WqL1E
 oJBg==
X-Gm-Message-State: APjAAAUq991I6ancDSR630+xcmNLUfqkGP1ZTguF/aRqQp7VFtVTP/Hl
 rrOqm5OnNyLFZqkEWJVEpYg=
X-Google-Smtp-Source: APXvYqy08BY9xejOJOEiYHkfSbhYHLvlnRasIcQ2JIMZ+2ibutK4yxJusRd1w3iZKpWXUgSiMViCsg==
X-Received: by 2002:a17:902:d20a:: with SMTP id
 t10mr26405728ply.52.1561961956011; 
 Sun, 30 Jun 2019 23:19:16 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id q1sm13874143pfg.84.2019.06.30.23.19.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:19:15 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192u: Replace function rtl8192_rx_enable()
Date: Mon,  1 Jul 2019 11:49:02 +0530
Message-Id: <20190701061902.2371-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function rtl8192_rx_enable as all it does is call
rtl8192_rx_initiate.
Rename rtl8192_rx_initiate to rtl8192_rx_enable and change its type from
static to non-static to maintain compatibility with call sites of
rtl8192_rx_enable.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index e78806fef79f..9125c490bb37 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -713,7 +713,8 @@ static u32 get_rxpacket_shiftbytes_819xusb(struct ieee80211_rx_stats *pstats)
 		+ pstats->RxBufShift);
 }
 
-static void rtl8192_rx_initiate(struct net_device *dev)
+/* wait to be removed */
+void rtl8192_rx_enable(struct net_device *dev)
 {
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct urb *entry;
@@ -808,12 +809,6 @@ void rtl8192_set_rxconf(struct net_device *dev)
 	write_nic_dword(dev, RCR, rxconf);
 }
 
-/* wait to be removed */
-void rtl8192_rx_enable(struct net_device *dev)
-{
-	rtl8192_rx_initiate(dev);
-}
-
 void rtl8192_rtx_disable(struct net_device *dev)
 {
 	u8 cmd;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
