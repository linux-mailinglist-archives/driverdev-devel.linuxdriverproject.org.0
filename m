Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6715733FB11
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:25:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 154C8840FE;
	Wed, 17 Mar 2021 22:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kFyhSTJHH2z1; Wed, 17 Mar 2021 22:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3598B83E75;
	Wed, 17 Mar 2021 22:25:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B90A21BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A77836F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FU1DS9pTPWdK for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D446260636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:38 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id bx7so4179184edb.12
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=PO+v1AhAjBTJ99WdMxNUvMq7Tk5KnW+pESEcWT+2fOo=;
 b=FONU/b+0S2dxoGlz1ZYUVERAZzxZ1+RiPkrPB9QD/O86YtinjJkduUzWSYnV6gqZZH
 xdxUSsqAYDpk9UCDEFp6jQKc04YUFlhfxCpmoh5Mx1yHClyP44hvCUcn5VlIn9VC4VUF
 CsvV+njN78+whLsG86rx5yNcNeQQC7agrYKOUjerCD0Ky8YIoy6gdsiltyGQj/1HBV8f
 ZZaNDZTFNY3hmIcZvVyK75iTW6qsbzjp5CMb5jvTUm416WtNnQ0zc9EhBkSe71Zx597C
 rn/Z5CdHfSLePCS8G2dJHIBU+VS1qss8Hx8VFn4/1DxVFQt/8MVVrVRpD5+n7SWSh435
 sAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PO+v1AhAjBTJ99WdMxNUvMq7Tk5KnW+pESEcWT+2fOo=;
 b=ev0MsIiBZ4gtmO0CC9QVSYOvHZTqymE5Owmf4LgPxRAHGIC4Tmh7MLsj8h0J2l3wYz
 asmhYZi/2yBbrAaDpy4KvtlLeWth0JGoPPs+k+PahtGJHtbrEjrCtf4itc02e61LZNSD
 2WflwTTp6+6C8ikGFf7FdY7Gj30tEAmpIEXXu6TNjYC/HugqyP2aCwHIHdL3gEHIYffC
 giHxpgq862+ZULv6bFsMgQuuEfYFKcw+ff0pFD7KEvzrf0a2kJxBU/btqE0wl/qF4H8J
 q8XJUaLL/U25XW8QCs3FxXnr1wxqhRlgmYanO9ffXaDLv++p7f4C2la+SAffIyRtk296
 A2Ag==
X-Gm-Message-State: AOAM531E2k2WgvvG3usxN8RFR4KUOUgO0JSN/OHIAyjJx290nKPlv7Kg
 o1v6AuELRmSs4Tv1UkjdU5Q=
X-Google-Smtp-Source: ABdhPJz5Gu28p4FatWb+r4Pdmng9PFdEgFOBgMjWRORNDyG0GNhABhFG0Y/Jd+MhBQ2H//9A8f9S3Q==
X-Received: by 2002:aa7:d917:: with SMTP id a23mr44809872edr.122.1616019697109; 
 Wed, 17 Mar 2021 15:21:37 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:36 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 26/43] Staging: rtl8723bs: fix names in hal_data.h
Date: Wed, 17 Mar 2021 23:21:13 +0100
Message-Id: <20210317222130.29528-27-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/hal_data.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_data.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 83a538e5120b..89943217fb42 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -15,7 +15,7 @@
 /*  */
 /*  <Roger_Notes> For RTL8723 WiFi/BT/GPS multi-function configuration. 2010.10.06. */
 /*  */
-enum RT_MULTI_FUNC {
+enum rt_multi_func {
 	RT_MULTI_FUNC_NONE	= 0x00,
 	RT_MULTI_FUNC_WIFI	= 0x01,
 	RT_MULTI_FUNC_BT		= 0x02,
@@ -24,18 +24,18 @@ enum RT_MULTI_FUNC {
 /*  */
 /*  <Roger_Notes> For RTL8723 WiFi PDn/GPIO polarity control configuration. 2010.10.08. */
 /*  */
-enum RT_POLARITY_CTL {
+enum rt_polarity_ctl {
 	RT_POLARITY_LOW_ACT	= 0,
 	RT_POLARITY_HIGH_ACT	= 1,
 };
 
 /*  For RTL8723 regulator mode. by tynli. 2011.01.14. */
-enum RT_REGULATOR_MODE {
+enum rt_regulator_mode {
 	RT_SWITCHING_REGULATOR	= 0,
 	RT_LDO_REGULATOR	= 1,
 };
 
-enum RT_AMPDU_BURST {
+enum rt_ampdu_burst {
 	RT_AMPDU_BURST_NONE	= 0,
 	RT_AMPDU_BURST_92D	= 1,
 	RT_AMPDU_BURST_88E	= 2,
@@ -177,9 +177,9 @@ struct dm_priv {
 
 struct hal_com_data {
 	struct hal_version VersionID;
-	enum RT_MULTI_FUNC MultiFunc; /*  For multi-function consideration. */
-	enum RT_POLARITY_CTL PolarityCtl; /*  For Wifi PDn Polarity control. */
-	enum RT_REGULATOR_MODE	RegulatorMode; /*  switching regulator or LDO */
+	enum rt_multi_func MultiFunc; /*  For multi-function consideration. */
+	enum rt_polarity_ctl PolarityCtl; /*  For Wifi PDn Polarity control. */
+	enum rt_regulator_mode	RegulatorMode; /*  switching regulator or LDO */
 
 	u16 FirmwareVersion;
 	u16 FirmwareVersionRev;
@@ -411,7 +411,7 @@ struct hal_com_data {
 	u8 RegIQKFWOffload;
 	struct submit_ctx	iqk_sctx;
 
-	enum RT_AMPDU_BURST	AMPDUBurstMode; /* 92C maybe not use, but for compile successfully */
+	enum rt_ampdu_burst	AMPDUBurstMode; /* 92C maybe not use, but for compile successfully */
 
 	u32 		sdio_himr;
 	u32 		sdio_hisr;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
