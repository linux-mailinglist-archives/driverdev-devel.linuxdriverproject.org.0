Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E43833C354
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:07:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB96147CA5;
	Mon, 15 Mar 2021 17:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dmlpIU66rGrV; Mon, 15 Mar 2021 17:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0547B4E578;
	Mon, 15 Mar 2021 17:07:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A312B1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92DAD430EF
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OkveD2e97cn9 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDF4E430FB
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id si25so11804856ejb.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=EGB6NoFbZSVkxPNaWdvv0jv/Cf+njNsxZnoG8bmeSCg=;
 b=lT/dQr6hDYNs5lhnHeyqDg83vrAzzzr1w+mkiESkx3syODBcMDTxMFsy6pMvxIwOyi
 oX7c0Th7iK+N07UIhqj7TmIU+IRyGYQTv7+BMEQFDwCuWGl8hkXBSytAV4rvSWPs29pz
 R8rCutNk17Q4LAxW76Twe0W8vlJAtG1dGuMkxHIoY5mD88OxfgDthkiDJUhaMtkmY+j7
 wMau/tnZRf62+m74OShupyFSSgg3e/YqmDb4V0FdzgokZFonjRBn0JHyoXbo6wvu3wz4
 ZRHtw7A8HG5Xb0fJl9JAARtOK7zZVD/7Bi9ihidRHMa13sYP4mXsJfboFAlLdSjhr8z3
 +nUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EGB6NoFbZSVkxPNaWdvv0jv/Cf+njNsxZnoG8bmeSCg=;
 b=FXzFYYWEaNnaQDt7UeXU5tuhLNZ27QSnrlXoOxYkdH4gyIFDA/VUB/KsSDY7Te6POn
 xGVF2YqWcGoPaOa4iXH0ynVyQZAzC/1rJrQ8HcVTWCcycqHF23NPT8AaRmY18451U++w
 +rIvdX2PZGJJUKXeO+/Zm4ko60zEy5cVADy152TKK5qLyc6FqHDbLE3z4FikpzvdFQIx
 o0GLO2FG+OPER0yUaZ4NnIrO+StwiK2Pk5Zcl0rl9GUIYtPTkg+zToIJ7gUPiqOzkX5b
 RNtsYk8WLOQ6FJxRnQxk/8SVkovxiRXuHAH8aDxHQQa0kaIPy0Tac3Ck4eVy7D106aXE
 r1VQ==
X-Gm-Message-State: AOAM532aG2oELAszCt9cw8Q/SF5S47OPESn4snH1jWAYOwr1Q4w05X5h
 I4B54/mciyS/iUvaDB5o2a4=
X-Google-Smtp-Source: ABdhPJxj5tiRSHB6PV0RUZTZlSNX56z34j7mFLXbSZRWhw3cL/V4rcMEVl2L/J2zk7adHH9fDZJpPQ==
X-Received: by 2002:a17:906:3395:: with SMTP id
 v21mr24736873eja.322.1615827972004; 
 Mon, 15 Mar 2021 10:06:12 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:11 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 05/57] Staging: rtl8723bs: fix spaces in HalBtc8723b2Ant.h
Date: Mon, 15 Mar 2021 18:05:26 +0100
Message-Id: <20210315170618.2566-6-marcocesati@gmail.com>
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
    #132: FILE: ./hal/HalBtc8723b2Ant.h:132:
    +void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #133: FILE: ./hal/HalBtc8723b2Ant.h:133:
    +void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #134: FILE: ./hal/HalBtc8723b2Ant.h:134:
    +void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #135: FILE: ./hal/HalBtc8723b2Ant.h:135:
    +void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #136: FILE: ./hal/HalBtc8723b2Ant.h:136:
    +void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #137: FILE: ./hal/HalBtc8723b2Ant.h:137:
    +void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #138: FILE: ./hal/HalBtc8723b2Ant.h:138:
    +void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #139: FILE: ./hal/HalBtc8723b2Ant.h:139:
    +void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #140: FILE: ./hal/HalBtc8723b2Ant.h:140:
    +void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #142: FILE: ./hal/HalBtc8723b2Ant.h:142:
    +	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #144: FILE: ./hal/HalBtc8723b2Ant.h:144:
    +void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #145: FILE: ./hal/HalBtc8723b2Ant.h:145:
    +void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #146: FILE: ./hal/HalBtc8723b2Ant.h:146:
    +void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST * pBtCoexist);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #147: FILE: ./hal/HalBtc8723b2Ant.h:147:
    +void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.h   | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
index 6375acede94c..f9a885f4ab89 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.h
@@ -129,19 +129,19 @@ struct COEX_STA_8723B_2ANT {
 /*  */
 /*  The following is interface which will notify coex module. */
 /*  */
-void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly);
-void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
-void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly);
+void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
+void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type);
 void EXhalbtc8723b2ant_BtInfoNotify(
-	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length
+	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
 );
-void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState);
-void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST * pBtCoexist);
-void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist);
+void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState);
+void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST *pBtCoexist);
+void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
