Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3E033C388
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:08:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04F61430C7;
	Mon, 15 Mar 2021 17:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xRpPTzexI3zE; Mon, 15 Mar 2021 17:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AFC340170;
	Mon, 15 Mar 2021 17:08:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68F651BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B7B64DF56
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-KnBj5DJT1k for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EA9C4D107
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:21 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id z1so18217562edb.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XOskWwR/GZOLH0IebcqGBP1sshy5H3CP03HCgW6SaRU=;
 b=CnOSDTlygwW7L96sC6+EX5pFUMfx6paUmhwbMg6H/tCQNgy6ZAOnkAUXPBWmldlrQI
 W5p/MGMYgy6ZKGBea43NppYeHFkpTmxy6Sm2RKpPT4mPy3U7a95om0RTSF0St2JQ8eGx
 F15qgWwSD+NPBCJ4Nnzu7jZ3XKObqei7eTXsYKfMC9jwtO2UFU/zharNg/nQaumgbNp2
 Tzh3goP4osOZRWsNOnJYp2FWLD/qQmF2dcSn8DUeoTbk9il6vmY/ALtCrwfLfKiTRKgk
 U4C/TjlO11yATspaoWXUEesZ5RCG0d9FVkv/IsjDx93ruq4RRVDc0Ffte2YMssh1F62S
 OxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XOskWwR/GZOLH0IebcqGBP1sshy5H3CP03HCgW6SaRU=;
 b=t+Byi0vUGB9JajS1NRItEZPD4mbS8QjlggOm5cAGtK2RwVtgp2aqdfwW3eu1VPDSvM
 DmLrdzbNdT49inkcs/EUR+NfNor0pDh98Q4Vffg2jqb8JTHu/coWQP6jf4Q0HiGO8rEY
 HfmoFEioSDcTc29DilYx0WMTnxF5NDJwgNjVBLqXYQKBzSkOZJBRnbEwjbLkgrGQclEO
 sHgmXLc2EIG4ot8nb3l+bRcaBFvsUkfUDO+qMhexIac2bY4FyDzR29NgYatjqYkfDeWY
 d6cgK76iPGVqY5N2kmDcXnBYt5MTKUZCZsFgHt64SrKXRmAkH0ZkvDlBGFQTPudaOvtx
 ey5Q==
X-Gm-Message-State: AOAM533Z7fM4ZsCLuWFx9UJ06+x/J//vFrqA7Zau6Fu4PvfMXQfHkM8P
 ASXm+yVgP9nh8hADW23CzNw=
X-Google-Smtp-Source: ABdhPJyIMDvbnevG1Q0rAhxdOxymmTD8im7RDktKi7a7KA7D3/m+omHcNlXozhzuL5+Xw9lX90FwRg==
X-Received: by 2002:aa7:db95:: with SMTP id u21mr30897354edt.152.1615827979433; 
 Mon, 15 Mar 2021 10:06:19 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:19 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 14/57] Staging: rtl8723bs: fix spaces in HalPhyRf.h
Date: Mon, 15 Mar 2021 18:05:35 +0100
Message-Id: <20210315170618.2566-15-marcocesati@gmail.com>
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
    #40: FILE: ./hal/HalPhyRf.h:40:
    +void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #40: FILE: ./hal/HalPhyRf.h:40:
    +void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #43: FILE: ./hal/HalPhyRf.h:43:
    +void ODM_ClearTxPowerTrackingState(struct DM_ODM_T * pDM_Odm);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.h b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
index 93659222d678..eaa5bd2811a1 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.h
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.h
@@ -37,10 +37,10 @@ struct TXPWRTRACK_CFG {
 	FuncSwing GetDeltaSwingTable;
 };
 
-void ConfigureTxpowerTrack(struct DM_ODM_T * pDM_Odm, struct TXPWRTRACK_CFG * pConfig);
+void ConfigureTxpowerTrack(struct DM_ODM_T *pDM_Odm, struct TXPWRTRACK_CFG *pConfig);
 
 
-void ODM_ClearTxPowerTrackingState(struct DM_ODM_T * pDM_Odm);
+void ODM_ClearTxPowerTrackingState(struct DM_ODM_T *pDM_Odm);
 
 void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
