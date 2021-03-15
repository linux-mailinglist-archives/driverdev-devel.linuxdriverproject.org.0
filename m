Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C9533C352
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:06:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0C146F558;
	Mon, 15 Mar 2021 17:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7UZ0Hiwwr-J8; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B13D36F549;
	Mon, 15 Mar 2021 17:06:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B81E1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27099430E8
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MSGkD2mkYDr0 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AB2D40170
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:12 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id ci14so67355722ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TdM9S19GpwHZ3fHhLr6flgMCXVQQGHKKMw+/T627UDQ=;
 b=VuA0EXt0bdIVcKkxVOQaSe9k7LRkiivCKbSZ4qGN1KBLexLpekb7FxAbd11oCAhnuH
 RJu3bcQuy22a7+ao/mIClKLVKAcfqTqeoi2vtX3HkelzXiviR/tWpe4M80maQZ7iTGDj
 c+t648g0OYU2KKWSquv7G4g0RQqc99fOpjafvIG2+T0WuyB6Z6xbnhg/n9ODfHlPshZi
 IJx+eMhHfQ0nJBWFglZJvYgGu2HAiLvEo2edsshQ39tkEe/B6ePvZT2ndUqVWCJfgmC1
 fO+SksC7wBnZyiul4duziaXX9EKD2Eds04+A5UqpgZ+yaL26Fvl9523IflkeXxI1v+Vn
 0j+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TdM9S19GpwHZ3fHhLr6flgMCXVQQGHKKMw+/T627UDQ=;
 b=U7mBCaY2ga/jvqL/veDzGsMDMVXNlhHOkM1p8JUGrpfYwzNwMtFw3AgyfbaacnbjhT
 1IMyDQ6kXvVxUIdYGnlZBc3PQ/PIBP10jvm9fpmpPm043rP+Ag4/RK7h7/J1rWXHSM+v
 jpyra6xdpddIMcA+Tg4YAQzBfq/buuvFUnMSuBIKNKMVQBM8lGhOVY9Qz1LKS0XuVWmn
 NHKrxTFzkQxcw68ZjBA8ZLBpnYTp0b5+7xuGpCHfljyTIVkRF69I6Cwn+wooN1qdzqQG
 h+iYn4dfnUphkyHbIYw+s54gjo/RsxHvjV8MaaHVfJA3z21+XAQvGaV2JGajJgb2+doB
 4/2w==
X-Gm-Message-State: AOAM533zVDU6s9d9uCvxqMzY+gk5+rWn9/+PgTRnXw6uR6+875/mqfo7
 0odhKflyqya6ucpmHhOlm04=
X-Google-Smtp-Source: ABdhPJzV6xsk9EuoYieNXUq5Sn+Pa725MaNqcsjh4u3yCiKgp3wpIivfhAG7fe20QjLSOXwOEsTl6Q==
X-Received: by 2002:a17:906:9501:: with SMTP id
 u1mr25151263ejx.324.1615827969890; 
 Mon, 15 Mar 2021 10:06:09 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:09 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 03/57] Staging: rtl8723bs: fix spaces in HalBtc8723b1Ant.h
Date: Mon, 15 Mar 2021 18:05:24 +0100
Message-Id: <20210315170618.2566-4-marcocesati@gmail.com>
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
    #170: FILE: ./hal/HalBtc8723b1Ant.h:170:
    +void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #171: FILE: ./hal/HalBtc8723b1Ant.h:171:
    +void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #172: FILE: ./hal/HalBtc8723b1Ant.h:172:
    +void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #173: FILE: ./hal/HalBtc8723b1Ant.h:173:
    +void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #174: FILE: ./hal/HalBtc8723b1Ant.h:174:
    +void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #175: FILE: ./hal/HalBtc8723b1Ant.h:175:
    +void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #176: FILE: ./hal/HalBtc8723b1Ant.h:176:
    +void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #177: FILE: ./hal/HalBtc8723b1Ant.h:177:
    +void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #178: FILE: ./hal/HalBtc8723b1Ant.h:178:
    +void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #180: FILE: ./hal/HalBtc8723b1Ant.h:180:
    +	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #182: FILE: ./hal/HalBtc8723b1Ant.h:182:
    +void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #183: FILE: ./hal/HalBtc8723b1Ant.h:183:
    +void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #184: FILE: ./hal/HalBtc8723b1Ant.h:184:
    +void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #185: FILE: ./hal/HalBtc8723b1Ant.h:185:
    +void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.h   | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
index a104d138eb63..b26a169e5088 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
@@ -167,19 +167,19 @@ struct COEX_STA_8723B_1ANT {
 /*  */
 /*  The following is interface which will notify coex module. */
 /*  */
-void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly);
-void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b1ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly);
+void EXhalbtc8723b1ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b1ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b1ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
 void EXhalbtc8723b1ant_BtInfoNotify(
-	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length
+	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
 );
-void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState);
-void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist);
+void EXhalbtc8723b1ant_HaltNotify(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b1ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState);
+void EXhalbtc8723b1ant_Periodical(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b1ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
