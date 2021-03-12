Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A06338756
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:29:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D57DB43262;
	Fri, 12 Mar 2021 08:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9fsnkmgdJ0VM; Fri, 12 Mar 2021 08:29:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 106B742C27;
	Fri, 12 Mar 2021 08:29:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5771BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6972984535
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVfHqGiSrxsU for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29E178451D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so15242777wmy.5
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=C3gUkDOi+Q8MW7Z2MY1SA5DiZa+NSzuT6jz76lowyJI=;
 b=CqV0nsDENUTl0AbamsKd6OHil91X408JBl9eOMYVEXLIPq8IppLWpHR/EkHcYSxS5p
 8UVsK2tGdpPDpW6U/M6Dk8zJhxab1SwWtjCGttTa6ijyaC8UCenXrzfoA6DxSey4UCLN
 YhOKJON/zjf7Z2K9J/tbqMNRCWPdGFeWLRiSanIiePCn5sj1U0Epuh/by+ekvan7y8uh
 2vHYGwS7WD8QZn3WdzugqHnzpzcosxdj9riCnMWg0d/R38X/b+idDF/KH2bN4uvwDsAV
 7xKN4CsNQsRIX033IGs1+9+d53LuzcwAxlyNRC9asYo+K6kz77V/YsY9ZSdubaK16LFr
 W2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C3gUkDOi+Q8MW7Z2MY1SA5DiZa+NSzuT6jz76lowyJI=;
 b=BviJ3/4nDKrj+odhU5TaxCK4HSXL3GA0X4SPWUunMi/cickGfFf+iESs6p8FzBvzlq
 m5n88L8/HxI1RK+8z52KN8SApaeXOmnoFDgRmVbBFKnk4UsA4bl8HbblOwXTKugsZiXo
 CMqCTFbZ5I4U1dD+TEA6pTDQqmbXRU4ipZsuxNDtqRimxYlpZg9YuJnQbQem173gpilL
 ohlz+dK2qCGrhQcXZMbi/bvV0bd8O/nSChUQkOgLWNb05FrBeeH75bZr4sx4LNaeJlpT
 xCbgclf3kXjhaEwDVGvdcpS1ec10t0ydxR1NUr4dVDvnKX4EQL6/gidD2yEToJYkqkVP
 tfFg==
X-Gm-Message-State: AOAM532IG8dnJZQCxMzw5SSUMq4c6JpidrYVdDJSWmKKiiApcHSQmSt+
 eRcXrwmyp+CIJZEdBnIKB+0=
X-Google-Smtp-Source: ABdhPJxA1WJ6B2wlOrxmNzxZUk818u+W7oQGgLv+kZET+FpB0KC9B/JCMK/Q/qpheLOPli5X+kJi/w==
X-Received: by 2002:a1c:c904:: with SMTP id f4mr12102445wmb.14.1615537617357; 
 Fri, 12 Mar 2021 00:26:57 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:57 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 15/33] staging: rtl8723bs: remove typedefs in wlan_bssdef.h
Date: Fri, 12 Mar 2021 09:26:20 +0100
Message-Id: <20210312082638.25512-16-marco.cesati@gmail.com>
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
    #130: FILE: include/wlan_bssdef.h:130:
    +typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION {

    WARNING: do not add new typedefs
    #148: FILE: include/wlan_bssdef.h:148:
    +typedef struct _NDIS_802_11_KEY {

    WARNING: do not add new typedefs
    #157: FILE: include/wlan_bssdef.h:157:
    +typedef struct _NDIS_802_11_REMOVE_KEY {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/wlan_bssdef.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wlan_bssdef.h b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
index 27cd2c5d90af..b9bc8ba21914 100644
--- a/drivers/staging/rtl8723bs/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
@@ -127,7 +127,7 @@ struct ndis_801_11_ai_resfi {
 	u16 AssociationId;
 };
 
-typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION {
+struct NDIS_802_11_ASSOCIATION_INFORMATION {
 	u32                   Length;
 	u16                  AvailableRequestFixedIEs;
 	struct ndis_802_11_ai_reqfi    RequestFixedIEs;
@@ -137,7 +137,7 @@ typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION {
 	struct ndis_801_11_ai_resfi    ResponseFixedIEs;
 	u32                   ResponseIELength;
 	u32                   OffsetResponseIEs;
-} NDIS_802_11_ASSOCIATION_INFORMATION, *PNDIS_802_11_ASSOCIATION_INFORMATION;
+};
 
 enum NDIS_802_11_RELOAD_DEFAULTS {
 	Ndis802_11ReloadWEPKeys
@@ -145,20 +145,20 @@ enum NDIS_802_11_RELOAD_DEFAULTS {
 
 
 /*  Key mapping keys require a BSSID */
-typedef struct _NDIS_802_11_KEY {
+struct NDIS_802_11_KEY {
 	u32           Length;             /*  Length of this structure */
 	u32           KeyIndex;
 	u32           KeyLength;          /*  length of key in bytes */
 	NDIS_802_11_MAC_ADDRESS BSSID;
 	unsigned long long KeyRSC;
 	u8           KeyMaterial[32];     /*  variable length depending on above field */
-} NDIS_802_11_KEY, *PNDIS_802_11_KEY;
+};
 
-typedef struct _NDIS_802_11_REMOVE_KEY {
+struct NDIS_802_11_REMOVE_KEY {
 	u32                   Length;        /*  Length of this structure */
 	u32                   KeyIndex;
 	NDIS_802_11_MAC_ADDRESS BSSID;
-} NDIS_802_11_REMOVE_KEY, *PNDIS_802_11_REMOVE_KEY;
+};
 
 struct ndis_802_11_wep {
 	u32 Length;        /*  Length of this structure */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
