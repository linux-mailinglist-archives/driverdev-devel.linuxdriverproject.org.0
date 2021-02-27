Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE685326F23
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 23:24:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B2204F0CA;
	Sat, 27 Feb 2021 22:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ggn3U10CUS_8; Sat, 27 Feb 2021 22:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6135E4ED58;
	Sat, 27 Feb 2021 22:24:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36CCD1BF41C
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 274518409A
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LbEGUjnRzppE for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 22:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36E9F8405E
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 22:23:16 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id 18so10856158lff.6
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 14:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ozW0+8qA2DIjT5bEaDvlYuNWLmMF22eQ+KNwcfhxuPY=;
 b=WZ4St4F+fM1VySf0eqYvV6nJpYexsRX6zklULGnv/CZwolPqW6GZWE3GSoBgGP51JP
 xCyL/B5aFCuo1BV5kZR+2Ltupf0XsMvOuHCLcMrXoaDhQWSBCvLQhppoFCL9+32b2rfd
 A5ArKhwYTQjK0yEr7zmYMQ6SPy9aunRWYklio2GT416P26hUUPLuy5Qj38ycbHg1UL8P
 MBM5VWhLzHr/LO1o6qwvpztBEmjim+8maAACpN6bTNtY6xXdKF/cRUalGRkUP4+cR7ET
 EVa1d/YQ/pP3ufr+fN1JyHXL1S9Z84ktwv6cge2qjruGOLgKbNd5HKGW+KS0MHdBxI1n
 9l9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ozW0+8qA2DIjT5bEaDvlYuNWLmMF22eQ+KNwcfhxuPY=;
 b=UjA/3MCbUoCAwFwfltJlo+m9j0BsxY2dwOzx8RZ1Tc7WQnnPIwnZiC0Fcm3LYpBhX3
 inAl+YN9bHUAel9N0uUjHXGCj0A59QHWQQ7pQsTvE/ovysIClrYb7M1Dq0X1ziGCyA7i
 qXRPLrH9TMrWpfn3p0hBkNBsd8oC3FFwAJY9NZ8Oc7Bs1RdgaImbwbjldDHaaPaJ4Exr
 QmMcPtyew1VA5Obs0AKG2EYnIZ84L4u0cgwb2lncecLSpQ2wUEBZ16L0BJvRyUfQcX52
 0dznSAqfo59fb0E0XQejkXyXruOOBH+pH9VRV61sgsnulnC4WokPKAQd2OXcaR9AewTi
 BglQ==
X-Gm-Message-State: AOAM531n3Sae6J98voXhjY8ZuipRb2mR86ky7vIBf3dLJyUYftF2VyOm
 om1U4nUGU0/Y40sMkDJUej8=
X-Google-Smtp-Source: ABdhPJxIFH0gc0K15t5f/1/h+siZifHT49n8hZvr/hDqlU93HKnZ8fPXG7cdByJ4JLTf0vWFKjWEAg==
X-Received: by 2002:a05:6512:694:: with SMTP id
 t20mr5360053lfe.151.1614464593995; 
 Sat, 27 Feb 2021 14:23:13 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id d7sm1811970lfg.303.2021.02.27.14.23.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 14:23:13 -0800 (PST)
Received: (nullmailer pid 581547 invoked by uid 1000);
 Sat, 27 Feb 2021 22:23:09 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/4] staging:rtl8712: remove unused definitions from wifi.h
Date: Sun, 28 Feb 2021 01:22:35 +0300
Message-Id: <20210227222236.581490-3-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210227222236.581490-1-insafonov@gmail.com>
References: <20210227222236.581490-1-insafonov@gmail.com>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 linux-kernel@vger.kernel.org, Pascal Terjan <pterjan@google.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These definitions are not used and will not be useful in the future.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 74 ----------------------------------
 1 file changed, 74 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 5de0e67b1876..11fba6f9e721 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -16,22 +16,8 @@
 
 #include <linux/compiler.h>
 
-#define WLAN_IEEE_OUI_LEN	3
-#define WLAN_CRC_LEN		4
-#define WLAN_BSSID_LEN		6
-#define WLAN_BSS_TS_LEN		8
 #define WLAN_HDR_A3_LEN		24
-#define WLAN_HDR_A4_LEN		30
 #define WLAN_HDR_A3_QOS_LEN	26
-#define WLAN_HDR_A4_QOS_LEN	32
-#define WLAN_SSID_MAXLEN	32
-#define WLAN_DATA_MAXLEN	2312
-
-#define WLAN_A3_PN_OFFSET	24
-#define WLAN_A4_PN_OFFSET	30
-
-#define WLAN_MIN_ETHFRM_LEN	60
-#define WLAN_MAX_ETHFRM_LEN	1514
 
 #define P80211CAPTURE_VERSION	0x80211001
 
@@ -74,33 +60,6 @@ enum WIFI_FRAME_SUBTYPE {
 	WIFI_CF_ACKPOLL     = (BIT(6) | BIT(5) | BIT(4) | WIFI_DATA_TYPE),
 };
 
-enum WIFI_REASON_CODE	{
-	_RSON_RESERVED_			= 0,
-	_RSON_UNSPECIFIED_		= 1,
-	_RSON_AUTH_NO_LONGER_VALID_	= 2,
-	_RSON_DEAUTH_STA_LEAVING_	= 3,
-	_RSON_INACTIVITY_		= 4,
-	_RSON_UNABLE_HANDLE_		= 5,
-	_RSON_CLS2_			= 6,
-	_RSON_CLS3_			= 7,
-	_RSON_DISAOC_STA_LEAVING_	= 8,
-	_RSON_ASOC_NOT_AUTH_		= 9,
-	/* WPA reason */
-	_RSON_INVALID_IE_		= 13,
-	_RSON_MIC_FAILURE_		= 14,
-	_RSON_4WAY_HNDSHK_TIMEOUT_	= 15,
-	_RSON_GROUP_KEY_UPDATE_TIMEOUT_	= 16,
-	_RSON_DIFF_IE_			= 17,
-	_RSON_MLTCST_CIPHER_NOT_VALID_	= 18,
-	_RSON_UNICST_CIPHER_NOT_VALID_	= 19,
-	_RSON_AKMP_NOT_VALID_		= 20,
-	_RSON_UNSUPPORT_RSNE_VER_	= 21,
-	_RSON_INVALID_RSNE_CAP_		= 22,
-	_RSON_IEEE_802DOT1X_AUTH_FAIL_	= 23,
-	/* below are Realtek definitions */
-	_RSON_PMK_NOT_AVAILABLE_	= 24,
-};
-
 enum WIFI_REG_DOMAIN {
 	DOMAIN_FCC	= 1,
 	DOMAIN_IC	= 2,
@@ -234,11 +193,6 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 	0x000f) | (0xfff0 & (num << 4))); \
 })
 
-#define SetDuration(pbuf, dur) ({ \
-	*(__le16 *)((addr_t)(pbuf) + 2) |= \
-	cpu_to_le16(0xffff & (dur)); \
-})
-
 #define SetPriority(pbuf, tid) ({ \
 	*(__le16 *)(pbuf) |= cpu_to_le16(tid & 0xf); \
 })
@@ -253,9 +207,6 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 
 #define GetAMsdu(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 7) & 0x1)
 
-#define GetAid(pbuf)	(cpu_to_le16(*(__le16 *)((addr_t)(pbuf) + 2)) \
-			& 0x3fff)
-
 #define GetAddr1Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 4))
 
 #define GetAddr2Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 10))
@@ -290,19 +241,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
  *		Below is for the security related definition
  *-----------------------------------------------------------------------------
  */
-#define _RESERVED_FRAME_TYPE_	0
-#define _SKB_FRAME_TYPE_	2
-#define _PRE_ALLOCMEM_		1
-#define _PRE_ALLOCHDR_		3
-#define _PRE_ALLOCLLCHDR_	4
-#define _PRE_ALLOCICVHDR_	5
-#define _PRE_ALLOCMICHDR_	6
-
-#define _SIFSTIME_		((priv->pmib->BssType.net_work_type & \
-				WIRELESS_11A) ? 16 : 10)
-#define _ACKCTSLNG_		14	/*14 bytes long, including crclng */
-#define _CRCLNG_		4
-
 #define _ASOCREQ_IE_OFFSET_	4	/* excluding wlan_hdr */
 #define	_ASOCRSP_IE_OFFSET_	6
 #define _REASOCREQ_IE_OFFSET_	10
@@ -348,10 +286,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define AUTH_ODD_TO				0
 #define AUTH_EVEN_TO			1
 
-#define WLAN_ETHCONV_ENCAP		1
-#define WLAN_ETHCONV_RFC1042	2
-#define WLAN_ETHCONV_8021h		3
-
 #define cap_ESS BIT(0)
 #define cap_IBSS BIT(1)
 #define cap_CFPollable BIT(2)
@@ -371,20 +305,12 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
  *------------------------------------------------------------------------------
  */
 #define _WMM_IE_Length_				7  /* for WMM STA */
-#define _WMM_Para_Element_Length_		24
 
 /*-----------------------------------------------------------------------------
  *			Below is the definition for 802.11n
  *------------------------------------------------------------------------------
  */
 
-#define SetOrderBit(pbuf) ({ \
-	*(__le16 *)(pbuf) |= cpu_to_le16(_ORDER_); \
-})
-
-#define GetOrderBit(pbuf)	(((*(__le16 *)(pbuf)) & \
-				le16_to_cpu(_ORDER_)) != 0)
-
 /*
  * struct rtl_ieee80211_ht_cap - HT capabilities
  *
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
