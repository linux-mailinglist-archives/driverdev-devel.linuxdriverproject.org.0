Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D20C33FB13
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:26:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADD8B8410F;
	Wed, 17 Mar 2021 22:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c_V0ojGkKbHU; Wed, 17 Mar 2021 22:26:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D91A484119;
	Wed, 17 Mar 2021 22:26:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 901071BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F4C64EDE8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPRSPMQS1sc5 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91EA44EDCC
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:39 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id u9so820310ejj.7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Q2DSPyiQf9rErzwikkDpUoxFdCBTQ32+GL0bWeNiLfg=;
 b=JRLBjg7IVA6tDIcXQvsMuibKC6rJJECnffTIoKvpmOsALrpuyNNp/lBi4imOBcvYmi
 aj1QSJyGvCEmuSeHQZfX7dcfVvtN0HXcpG0WG2KfvXQ+9tl+sCUBuq0U2OAtdtMzaJ0f
 xJ8tvW6440yMZYtwbEo2DszB3mmNjMPTEkTjUtvesNFuusA/CKSaRcPT/MXrTjNXmkgL
 W5vNShBdrSYQ3FMJ5uSLs4tlyjCpo/By8+os4xWxLsrwcwFeGAuSUWKgwt3rjaUkbVJd
 kt0Nl7v1+uClmfdu+xt69GsliGLANadk761c5SsUN462MtFx4vABHNS0ZuuMqdzV85Fa
 wuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q2DSPyiQf9rErzwikkDpUoxFdCBTQ32+GL0bWeNiLfg=;
 b=hm3bcTbfGIUEF0kRwvWv3tTMH7EtSOw4QCJ8BwshGLsCJYARdBSZUtGNWBQUbvffw7
 aK5kVU54gq4wTH5HuK8Iq6K4UGbtEgB/KtcyFSpK3LMAn0ERfJpUaIxzuWwy2iUH3FOB
 xy99AGrLWve7Rxj5/qzGrMIj4OFpmPeD3SK1ghpE+/se8fvBYVeelK9rqUCcQJLqS2hF
 MeVMgwL57TsGwg1sAnnSvT+hJf9kn3qsEwGV81o2kAhWSP8Fb78W9LlvC/uM2dCbGB1e
 DEYRiG6qDJ+kw1izdzw6TeJozWNmG7q8b5yk+R8ZH3Re9iGJeBsQjBwl5W/ScYkinEYz
 +FYg==
X-Gm-Message-State: AOAM531FLiGchR4S62KK4EjZvfP029i819gL5R8L/VOdG+8nIOdqzUsg
 H+LBDoIk62FcEJsVgSD4T+8=
X-Google-Smtp-Source: ABdhPJzBIV6xW6ZqWZoy/7f4T3nL/NjLJnnjrhuyMcYGibWmZh0/Ljeu+wtpXx+AU4nAruRTH2CBAQ==
X-Received: by 2002:a17:906:8308:: with SMTP id
 j8mr36834438ejx.339.1616019697860; 
 Wed, 17 Mar 2021 15:21:37 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:37 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 27/43] Staging: rtl8723bs: fix names in ieee80211.h
Date: Wed, 17 Mar 2021 23:21:14 +0100
Message-Id: <20210317222130.29528-28-marcocesati@gmail.com>
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
in include/ieee80211.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/ieee80211.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 1c671b778c57..a7cbd04059f8 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -125,7 +125,7 @@ extern u8 RSN_CIPHER_SUITE_CCMP[];
 extern u8 RSN_CIPHER_SUITE_WEP104[];
 
 
-enum RATEID_IDX {
+enum rateid_idx {
 	RATEID_IDX_BGN_40M_2SS = 0,
 	RATEID_IDX_BGN_40M_1SS = 1,
 	RATEID_IDX_BGN_20M_2SS_BN = 2,
@@ -139,7 +139,7 @@ enum RATEID_IDX {
 	RATEID_IDX_VHT_1SS = 10,
 };
 
-enum RATR_TABLE_MODE {
+enum ratr_table_mode {
 	RATR_INX_WIRELESS_NGB = 0,	/*  BGN 40 Mhz 2SS 1SS */
 	RATR_INX_WIRELESS_NG = 1,		/*  GN or N */
 	RATR_INX_WIRELESS_NB = 2,		/*  BGN 20 Mhz 2SS 1SS  or BN */
@@ -152,7 +152,7 @@ enum RATR_TABLE_MODE {
 };
 
 
-enum NETWORK_TYPE {
+enum network_type {
 	WIRELESS_INVALID = 0,
 	/* Sub-Element */
 	WIRELESS_11B = BIT(0), /*  tx: cck only , rx: cck only, hw: cck */
@@ -423,7 +423,7 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_OFDM_SHIFT_MASK_A         4
 
 
-enum MGN_RATE {
+enum mgn_rate {
 	MGN_1M		= 0x02,
 	MGN_2M		= 0x04,
 	MGN_5_5M	= 0x0B,
@@ -799,7 +799,7 @@ enum rtw_ieee80211_category {
 	RTW_WLAN_CATEGORY_P2P = 0x7f,/* P2P action frames */
 };
 
-enum _PUBLIC_ACTION {
+enum _public_action {
 	ACT_PUBLIC_BSSCOEXIST = 0, /*  20/40 BSS Coexistence */
 	ACT_PUBLIC_DSE_ENABLE = 1,
 	ACT_PUBLIC_DSE_DEENABLE = 2,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
