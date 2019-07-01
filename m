Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F365B7C2
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21F39879EF;
	Mon,  1 Jul 2019 09:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbBPPBgDrZCc; Mon,  1 Jul 2019 09:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A61D787919;
	Mon,  1 Jul 2019 09:16:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB2451BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A81FB864E0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4oG-xIxLsrcC for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:16:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0985886457
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:16:07 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id cl9so7008927plb.10
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A0fheYy3Py3qPL/6IBnAPunQIXO0JhJnURjKmpbdSEM=;
 b=IyqLac6r1tHcjqtc29egQCxWcPAQkEcBXXXC7Idc39U4sSZSPzaft/HIbl6w/sGCMO
 H+WIcppOTvQIihM4IFZgOV74MgI3+i/xTp0LBHjfh7n9bQRaN8p2N9LIVrwMd0leOvN0
 UfyGyheesVD6MeHHvl4AY4vq/BCPtHYGSL87nGHsaedSan1OMWqtBIXTynFq1HoabAU+
 QFSRijcZPAqmDaVuTgf1sadnNVux4EY7VOe5b+Lq/h19FP4JKJ+0Cmtx2boA6W14T32+
 AF76Li47j2R7HG+HCorOvplT5wVB5w729HRJ9OP5z61Ar0Rw2hReQfk/irvhKGr9eYWp
 llrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A0fheYy3Py3qPL/6IBnAPunQIXO0JhJnURjKmpbdSEM=;
 b=Xg67clcB5yq0zg1zsDn2wwyoPbtX3IU4dMuJHKVzng8+l1yyFLZEMG2l9UqjUvYq1a
 48snqpLojegZmymCKbabCHMuvdcGsDvQKwov46QCGDk9rielGNNKfje5PIfOdglW1+Yh
 Zpk83K73tThBiLBlwd9vlJ0gVn3tuFOmpg1KkPsu6mObdGMxYdxSL1FTizkhRTcd/qV+
 hYpm9UJm7rGg+83s0WTiEv04dho2K1oaLMqWSc8DM/Fo7M9Vnf0g7qYY+SyrKMeRZGVQ
 PWdw/QO3+03pxgx63bzzoyM5k+Hm4i/WTiXH9qQpSPdNdMnwMPxTGrm1W1HeZKaqUNQG
 ey3g==
X-Gm-Message-State: APjAAAUJluPOPb+wXejiLMJeUOW7IzcMo/GjyUBPhzpP2qB+flthBttX
 PgiV+LZScay7re9lWgd7T1A=
X-Google-Smtp-Source: APXvYqxL/ZDkKSy3rQvnfDUqNjSYpEGH3nA+elUcmz8vmhCXQqX2DVMNKMpIrUiG6tLt1O8aPJ4pWA==
X-Received: by 2002:a17:902:b7c1:: with SMTP id
 v1mr27846223plz.85.1561972566756; 
 Mon, 01 Jul 2019 02:16:06 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id o15sm9091233pgj.18.2019.07.01.02.16.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:16:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: rtl8192u: Replace function rtl8192_rx_enable()
Date: Mon,  1 Jul 2019 14:45:52 +0530
Message-Id: <20190701091552.12696-1-nishkadg.linux@gmail.com>
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
Changes in v2:
- Remove comment.

 drivers/staging/rtl8192u/r8192U_core.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index e78806fef79f..fe1f279ca368 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -713,7 +713,7 @@ static u32 get_rxpacket_shiftbytes_819xusb(struct ieee80211_rx_stats *pstats)
 		+ pstats->RxBufShift);
 }
 
-static void rtl8192_rx_initiate(struct net_device *dev)
+void rtl8192_rx_enable(struct net_device *dev)
 {
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct urb *entry;
@@ -808,12 +808,6 @@ void rtl8192_set_rxconf(struct net_device *dev)
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
