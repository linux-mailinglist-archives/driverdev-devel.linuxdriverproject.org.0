Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEEC33C360
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:07:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F294C835A9;
	Mon, 15 Mar 2021 17:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOoqYzyVmrOE; Mon, 15 Mar 2021 17:07:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1346834B6;
	Mon, 15 Mar 2021 17:07:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D86B1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5AFB8430CA
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NPTOzJZt_3fp for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83D95430C7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:14 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id p7so56189580eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=GDNEK5x1mtWLUMWnyta8Aq9cXjB3ZNZfmICI7ibtDp0=;
 b=X6MXT6ANGW0riL8FXl1buEbwS0VyXwOGkQvlhjn6sa14uzhkAHKNsgWbWGIv5pNy+f
 Lkgqtd8PQIHc4ysYrsqn5nmsFvPNHsLoVa5PB60YNHNpVLSm6YbrD3aBtTM5lY90hcU4
 FTOsX3nqoQvzXAb88alYFFHGYa+iDhbgI/z20NV3nCtYx0/QQ4/d6cDMoxeD4iI+8rgo
 Xlit3wSDqpXpB6uXtg0rxuHm9DxU1ry+SBNdMygtz2NyH9WgyRv3v5WczosPTS9Io4IN
 sh3Z6xNnfxWSHShM4W7OU02emmM6urMrHb1S1ngGzwAfCiphuzaiP54e28sRS8fAeETe
 +ajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GDNEK5x1mtWLUMWnyta8Aq9cXjB3ZNZfmICI7ibtDp0=;
 b=NfFvFEOZN9ELUSeqQDrP/F6cfh/GtVvaH+e9lTBjf2fzQnjkoSoYLgasW9RorxcHKi
 bt4vMfkxOhh4E4F+x9UvD0x4MWbR70yz+bxlUtnoyBPn7vqHxcbn3t7zrcs45BhOsIjK
 pkqaNzMxINdD5rdXZ2rKQxyioANcFcvIJ0IjBwJ3envkSrIOLChMvJvbUkDx1Wz9B3Vt
 cDX1eh0HTPKH7qaPGLRqEMo9y2U/GXeyPreQZbM4nZI9zb7Tq/uwgPxttK49zPVVTdon
 sT1lnbYfDoBcXPRnp6RS0UjGvxlfnZYGVhFfuPlNftLfRvwNiUKttag6l/1WsZMM18eX
 iIlQ==
X-Gm-Message-State: AOAM531deUdEett7mN/qF4HC2bIKSyusmBg54RSwAoxue0Pv2v25rWAB
 muVwVzhpGuEB7Mripc+BoD8=
X-Google-Smtp-Source: ABdhPJzA9WqCR52ygkfEHP+QqN6SUshLoPE/77ZgEEGJH9c1nhPiEwRIDOjcFwPlNWjmtqd3e5p/AA==
X-Received: by 2002:a17:906:130c:: with SMTP id
 w12mr24695298ejb.253.1615827972782; 
 Mon, 15 Mar 2021 10:06:12 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:12 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 06/57] Staging: rtl8723bs: fix spaces in HalBtcOutSrc.h
Date: Mon, 15 Mar 2021 18:05:27 +0100
Message-Id: <20210315170618.2566-7-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #535: FILE: ./hal/HalBtcOutSrc.h:535:
    +void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #536: FILE: ./hal/HalBtcOutSrc.h:536:
    +void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST * pBtCoexist, u8 bWifiOnly);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #537: FILE: ./hal/HalBtcOutSrc.h:537:
    +void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #538: FILE: ./hal/HalBtcOutSrc.h:538:
    +void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #539: FILE: ./hal/HalBtcOutSrc.h:539:
    +void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #540: FILE: ./hal/HalBtcOutSrc.h:540:
    +void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #541: FILE: ./hal/HalBtcOutSrc.h:541:
    +void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #543: FILE: ./hal/HalBtcOutSrc.h:543:
    +	struct BTC_COEXIST * pBtCoexist, enum RT_MEDIA_STATUS mediaStatus

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #545: FILE: ./hal/HalBtcOutSrc.h:545:
    +void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 pktType);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #547: FILE: ./hal/HalBtcOutSrc.h:547:
    +	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #549: FILE: ./hal/HalBtcOutSrc.h:549:
    +void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #550: FILE: ./hal/HalBtcOutSrc.h:550:
    +void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #551: FILE: ./hal/HalBtcOutSrc.h:551:
    +void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #555: FILE: ./hal/HalBtcOutSrc.h:555:
    +void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST * pBtCoexist);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h | 28 ++++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index 6d60ad11588f..c38baf2bc412 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -532,26 +532,26 @@ struct BTC_COEXIST {
 
 extern struct BTC_COEXIST GLBtCoexist;
 
-void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST * pBtCoexist, u8 bWifiOnly);
-void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 action);
+void EXhalbtcoutsrc_PowerOnSetting(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtcoutsrc_InitHwConfig(struct BTC_COEXIST *pBtCoexist, u8 bWifiOnly);
+void EXhalbtcoutsrc_InitCoexDm(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtcoutsrc_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtcoutsrc_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtcoutsrc_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtcoutsrc_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 action);
 void EXhalbtcoutsrc_MediaStatusNotify(
-	struct BTC_COEXIST * pBtCoexist, enum RT_MEDIA_STATUS mediaStatus
+	struct BTC_COEXIST *pBtCoexist, enum RT_MEDIA_STATUS mediaStatus
 );
-void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 pktType);
+void EXhalbtcoutsrc_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 pktType);
 void EXhalbtcoutsrc_BtInfoNotify(
-	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length
+	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
 );
-void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState);
-void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST * pBtCoexist);
+void EXhalbtcoutsrc_HaltNotify(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtcoutsrc_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState);
+void EXhalbtcoutsrc_Periodical(struct BTC_COEXIST *pBtCoexist);
 void EXhalbtcoutsrc_SetChipType(u8 chipType);
 void EXhalbtcoutsrc_SetAntNum(u8 type, u8 antNum);
 void EXhalbtcoutsrc_SetSingleAntPath(u8 singleAntPath);
-void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST * pBtCoexist);
+void EXhalbtcoutsrc_DisplayBtCoexInfo(struct BTC_COEXIST *pBtCoexist);
 
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
