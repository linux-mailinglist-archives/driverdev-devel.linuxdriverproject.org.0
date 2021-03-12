Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C12338764
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF0E16FA78;
	Fri, 12 Mar 2021 08:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vRuncjhdWr92; Fri, 12 Mar 2021 08:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0613C6F593;
	Fri, 12 Mar 2021 08:31:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF5461BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEA374ED4E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3bM9Yiqmhyt for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1CE04ED4D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id g20so3254955wmk.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DmIYAOSiaecbD99RCrcWKAhkMfAVuW9cIetu/J3pfIc=;
 b=Yova+FIXHhw9jdqNiMf310Dqc07TqSJZtoGiiiDaMXL5mP8wyr9W4eF5zIDarJVG1q
 HsgsWVpJtTGsrgZ4DbxXZzNQZ4OmKq2JC+8X8XsSu02hodO6ITCoYgJuvAffDSAkQK7y
 Gh9wGgO1IvK1Ko7++Tu/QVtJRGEsKeOfB9/TAshpLWm2w7vepxp6792JbwuHoD/liN+g
 Bmp4IvFkAMYHSbbiuWdgOJFllbyPbY7tXHiSsSxZd4Tz8CUUT04GDP7daNSnt3VTINKt
 RrsVQu7wUaunUcU2lBcvYkkKQfVq81K2xma9TA5Bi/wF3r6DRJS4NftNM++Mxa/zIgcL
 8RtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DmIYAOSiaecbD99RCrcWKAhkMfAVuW9cIetu/J3pfIc=;
 b=GiLmqK4z+NAeq0CSYFd2jDkfXm+iTIkVrHWk4jbcnL7KfgitT6I6Yic8aycTlzwRaQ
 V3jwq77r7idCrnp1sJnnLrKMD+28bP1F0fOpvJVyXGW3S42UTZRq9YkWuwCU75EDBzxB
 TiEcA0jYg8QDdj/bBT279bqFmwt73FV789UWupT6U1BQNSpCU3XsP7HAsDkiLRENnuLo
 JPW/GPmmyGFvDm7anyY2YxijL+BoBUa5CUy7ch2Vb6ItTrooRPMq65QRNPgHAZLTWOgk
 /zFfGCCCKWpHFUMYtxSG7NRYUOszvz/gKxOmMtBM3UaI3MZ1VpB5LsKCse+M8HPXDYuf
 tn/w==
X-Gm-Message-State: AOAM530+Kl34yzx1VZyvM/dJY6u6EsAnUOh04yEe19o0cYB9y4Jv47lT
 XGvaRj2KiKa9sZLTy1KUkoI=
X-Google-Smtp-Source: ABdhPJxN3zeTRzzzfjtwrtR1gyPVJ1s2b0f1HtEJMxJGq7/bx+ejJDZKaovYq/DTnDEiseRGzZ51vQ==
X-Received: by 2002:a05:600c:22d9:: with SMTP id
 25mr11738308wmg.108.1615537625163; 
 Fri, 12 Mar 2021 00:27:05 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:05 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 26/33] staging: rtl8723bs: remove typedefs in ieee80211.h
Date: Fri, 12 Mar 2021 09:26:31 +0100
Message-Id: <20210312082638.25512-27-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #128: FILE: include/ieee80211.h:128:
    +typedef enum _RATEID_IDX_ {

    WARNING: do not add new typedefs
    #142: FILE: include/ieee80211.h:142:
    +typedef enum _RATR_TABLE_MODE {

    WARNING: do not add new typedefs
    #986: FILE: include/ieee80211.h:986:
    +typedef enum { ParseOK = 0, ParseUnknown = 1, ParseFailed = -1 } ParseRes;

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c |  2 +-
 drivers/staging/rtl8723bs/include/ieee80211.h  | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index be4cffce4f5d..a2a97826197a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -958,7 +958,7 @@ static int rtw_ieee802_11_parse_vendor_specific(u8 *pos, uint elen,
  * @show_errors: Whether to show parsing errors in debug log
  * Returns: Parsing result
  */
-ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
+enum ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 				struct rtw_ieee802_11_elems *elems,
 				int show_errors)
 {
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index f80db2c984a4..10b599f835bb 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -125,7 +125,7 @@ extern u8 RSN_CIPHER_SUITE_CCMP[];
 extern u8 RSN_CIPHER_SUITE_WEP104[];
 
 
-typedef enum _RATEID_IDX_ {
+enum RATEID_IDX {
 	RATEID_IDX_BGN_40M_2SS = 0,
 	RATEID_IDX_BGN_40M_1SS = 1,
 	RATEID_IDX_BGN_20M_2SS_BN = 2,
@@ -137,9 +137,9 @@ typedef enum _RATEID_IDX_ {
 	RATEID_IDX_B = 8,
 	RATEID_IDX_VHT_2SS = 9,
 	RATEID_IDX_VHT_1SS = 10,
-} RATEID_IDX, *PRATEID_IDX;
+};
 
-typedef enum _RATR_TABLE_MODE {
+enum RATR_TABLE_MODE {
 	RATR_INX_WIRELESS_NGB = 0,	/*  BGN 40 Mhz 2SS 1SS */
 	RATR_INX_WIRELESS_NG = 1,		/*  GN or N */
 	RATR_INX_WIRELESS_NB = 2,		/*  BGN 20 Mhz 2SS 1SS  or BN */
@@ -149,7 +149,7 @@ typedef enum _RATR_TABLE_MODE {
 	RATR_INX_WIRELESS_B = 6,
 	RATR_INX_WIRELESS_MC = 7,
 	RATR_INX_WIRELESS_AC_N = 8,
-} RATR_TABLE_MODE, *PRATR_TABLE_MODE;
+};
 
 
 enum NETWORK_TYPE {
@@ -983,9 +983,9 @@ struct rtw_ieee802_11_elems {
 	u8 vht_op_mode_notify_len;
 };
 
-typedef enum { ParseOK = 0, ParseUnknown = 1, ParseFailed = -1 } ParseRes;
+enum ParseRes { ParseOK = 0, ParseUnknown = 1, ParseFailed = -1 };
 
-ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
+enum ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 				struct rtw_ieee802_11_elems *elems,
 				int show_errors);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
