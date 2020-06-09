Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353781F479F
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 21:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEE1888927;
	Tue,  9 Jun 2020 19:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjQj9YXh-LE6; Tue,  9 Jun 2020 19:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3A81888F5;
	Tue,  9 Jun 2020 19:56:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 071111BF34D
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 19:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED7E3228BA
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 19:56:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sg9A8bgaGZ1c for <devel@linuxdriverproject.org>;
 Tue,  9 Jun 2020 19:56:40 +0000 (UTC)
X-Greylist: delayed 00:07:39 by SQLgrey-1.7.6
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by silver.osuosl.org (Postfix) with ESMTPS id A536F20457
 for <devel@driverdev.osuosl.org>; Tue,  9 Jun 2020 19:56:39 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id g72so53433qke.18
 for <devel@driverdev.osuosl.org>; Tue, 09 Jun 2020 12:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3Lrztpl+l5GPOEEk6GdUyY1/gPjfiEmXyyquZ3L5f98=;
 b=AZq/vw+wMVUdnHq3j4V/Qqt1GpdgF3vGTj14i2s43H4syUGwFPrfR4+3KHh9K6ufxR
 B+vliVDaheaVkm7t1QwYqtGjUL2WWin5FzLBUD+Y4FmzZ1x/V70cJ/LOjXju57wndNNQ
 /MyCSILfqlDGN0zjX7euuv9xtiMLYHDFz1+q4yPszmLhv8Z13DC/8WVV0JsscNq13K3J
 bq7r1Ow6witHAhrb5fS/rR4FLtBlCf/KWkx5FT0tBDvFf6EP+VVVgdmPGUBjgabVVApE
 HSGtIfrRA+YPeAJdCzm4J/hVDYEVlBoZLaGiZ74VG+T6UbKx/AwNAHJ5Ci/zphWUbBAO
 41Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3Lrztpl+l5GPOEEk6GdUyY1/gPjfiEmXyyquZ3L5f98=;
 b=Mmb3FhtH4Ie9rQYlBKpw0xub2yA5jN06/EPAqu9OWs0Z1EpCI4T6Bc+gMYhd/M72dW
 ntBJOzW9U8x4STD2dKjECfAf3QMBgmUYqXt5zv4C+P/GpV6A4P+3lmUu+BiGH45VKNQs
 rSTWnImgIkDAHFG36lGPSi7GEhtArtMriHIEJkS+idy+zTYQuzPv2tS7wUXHxvO2AV9i
 jpF2WK6NdiHJ2UzAZqR0myI5T2TnrfrDfeB2aBqwqb6Ut+7zCTR+rKVYx6lMmFjvc5ev
 KWIFBxZRY+V7qy9dop6BlE351tm5hSWJeOCa2+abWC14N33krYhqPNiS+g9+Py9Zq01Y
 dkVA==
X-Gm-Message-State: AOAM531vm3EDsEvvs91URB7Pzmd2O5vHD8wgwZpJL4Cgy1Mpy1RFtYZy
 reeABybV3+4rGCOyr19VcZ4dw4Li8Xkg
X-Google-Smtp-Source: ABdhPJy9583qsW2+WFPLg/qFVFlBGYMbwYidBm727PgmFP9HL4EFXgqho4cf0q4axsUMke4QXGJp6j4MYrK4
X-Received: by 2002:a05:6214:108d:: with SMTP id
 o13mr5671768qvr.58.1591732138825; 
 Tue, 09 Jun 2020 12:48:58 -0700 (PDT)
Date: Tue,  9 Jun 2020 20:48:48 +0100
In-Reply-To: <CAANdO=KBPh81Jaxhta8k3ipnwWbr5xdhTuRW6GNEZsTTpyMjXQ@mail.gmail.com>
Message-Id: <20200609194848.166130-1-pterjan@google.com>
Mime-Version: 1.0
References: <CAANdO=KBPh81Jaxhta8k3ipnwWbr5xdhTuRW6GNEZsTTpyMjXQ@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v2] staging: rtl8712: switch to common ieee80211 headers
From: Pascal Terjan <pterjan@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
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
Cc: Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch switches to <linux/ieee80211.h> and <net/cfg80211.h> and
deletes a lot of duplicate definitions plus many unused ones.

Non obvious changes:
- struct ieee80211_ht_cap is different enough that I preferred to keep
  (and rename) it for now.
- mcs_rate in translate_scan was not read after being set, so I deleted
  that part rather than using the renamed struct
- WLAN_CAPABILITY_BSS is replaced with WLAN_CAPABILITY_ESS which is the
  corresponding one with same value

Signed-off-by: Pascal Terjan <pterjan@google.com>
---
v2: Added missing depends on CFG80211 in Kconfig

 drivers/staging/rtl8712/Kconfig               |   2 +-
 drivers/staging/rtl8712/ieee80211.h           | 584 +-----------------
 drivers/staging/rtl8712/rtl8712_recv.c        |   7 +-
 drivers/staging/rtl8712/rtl871x_ht.h          |   2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  13 +-
 drivers/staging/rtl8712/rtl871x_mlme.c        |  14 +-
 drivers/staging/rtl8712/rtl871x_recv.c        |   7 +-
 drivers/staging/rtl8712/rtl871x_recv.h        |   2 -
 drivers/staging/rtl8712/rtl871x_xmit.c        |   2 +-
 drivers/staging/rtl8712/wifi.h                |  21 +-
 10 files changed, 21 insertions(+), 633 deletions(-)

diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
index c62747c90968..8de26425225b 100644
--- a/drivers/staging/rtl8712/Kconfig
+++ b/drivers/staging/rtl8712/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 config R8712U
 	tristate "RealTek RTL8712U (RTL8192SU) Wireless LAN NIC driver"
-	depends on WLAN && USB
+	depends on WLAN && USB && CFG80211
 	select WIRELESS_EXT
 	select WEXT_PRIV
 	select FW_LOADER
diff --git a/drivers/staging/rtl8712/ieee80211.h b/drivers/staging/rtl8712/ieee80211.h
index dabaa8fd34fb..61eff7c5746b 100644
--- a/drivers/staging/rtl8712/ieee80211.h
+++ b/drivers/staging/rtl8712/ieee80211.h
@@ -14,14 +14,8 @@
 #ifndef __IEEE80211_H
 #define __IEEE80211_H
 
-#include "osdep_service.h"
-#include "drv_types.h"
-#include "wifi.h"
-#include <linux/compiler.h>
-#include <linux/wireless.h>
+#include <linux/ieee80211.h>
 
-#define MGMT_QUEUE_NUM 5
-#define ETH_ALEN	6
 #define IEEE_CMD_SET_WPA_PARAM			1
 #define IEEE_CMD_SET_WPA_IE			2
 #define IEEE_CMD_SET_ENCRYPTION			3
@@ -102,162 +96,11 @@ struct ieee_param {
 	} u;
 };
 
-#define IEEE80211_DATA_LEN		2304
-/* Maximum size for the MA-UNITDATA primitive, 802.11 standard section
- * 6.2.1.1.2.
- *
- * The figure in section 7.1.2 suggests a body size of up to 2312
- * bytes is allowed, which is a bit confusing, I suspect this
- * represents the 2304 bytes of real data, plus a possible 8 bytes of
- * WEP IV and ICV. (this interpretation suggested by Ramiro Barreiro)
- */
-
-#define IEEE80211_HLEN			30
-#define IEEE80211_FRAME_LEN		(IEEE80211_DATA_LEN + IEEE80211_HLEN)
-
-/* this is stolen from ipw2200 driver */
-#define IEEE_IBSS_MAC_HASH_SIZE 31
-
-struct ieee_ibss_seq {
-	u8 mac[ETH_ALEN];
-	u16 seq_num;
-	u16 frag_num;
-	unsigned long packet_time;
-	struct list_head list;
-};
-
-struct ieee80211_hdr {
-	__le16 frame_ctl;
-	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN];
-	u8 addr3[ETH_ALEN];
-	__le16 seq_ctl;
-	u8 addr4[ETH_ALEN];
-}  __packed __aligned(2);
-
-struct ieee80211_hdr_3addr {
-	__le16 frame_ctl;
-	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN];
-	u8 addr3[ETH_ALEN];
-	__le16 seq_ctl;
-}  __packed __aligned(2);
-
-struct	ieee80211_hdr_qos {
-	__le16 frame_ctl;
-	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN];
-	u8 addr3[ETH_ALEN];
-	__le16 seq_ctl;
-	u8 addr4[ETH_ALEN];
-	__le16	qc;
-}   __packed __aligned(2);
-
-struct  ieee80211_hdr_3addr_qos {
-	__le16 frame_ctl;
-	__le16 duration_id;
-	u8  addr1[ETH_ALEN];
-	u8  addr2[ETH_ALEN];
-	u8  addr3[ETH_ALEN];
-	__le16 seq_ctl;
-	__le16 qc;
-}  __packed;
-
-struct eapol {
-	u8 snap[6];
-	__be16 ethertype;
-	u8 version;
-	u8 type;
-	__le16 length;
-} __packed;
-
-enum eap_type {
-	EAP_PACKET = 0,
-	EAPOL_START,
-	EAPOL_LOGOFF,
-	EAPOL_KEY,
-	EAPOL_ENCAP_ASF_ALERT
-};
-
-#define IEEE80211_3ADDR_LEN 24
-#define IEEE80211_4ADDR_LEN 30
-#define IEEE80211_FCS_LEN    4
-
 #define MIN_FRAG_THRESHOLD     256U
 #define	MAX_FRAG_THRESHOLD     2346U
 
-/* Frame control field constants */
-#define IEEE80211_FCTL_VERS		0x0002
-#define IEEE80211_FCTL_FTYPE		0x000c
-#define IEEE80211_FCTL_STYPE		0x00f0
-#define IEEE80211_FCTL_TODS		0x0100
-#define IEEE80211_FCTL_FROMDS		0x0200
-#define IEEE80211_FCTL_MOREFRAGS	0x0400
-#define IEEE80211_FCTL_RETRY		0x0800
-#define IEEE80211_FCTL_PM		0x1000
-#define IEEE80211_FCTL_MOREDATA	0x2000
-#define IEEE80211_FCTL_WEP		0x4000
-#define IEEE80211_FCTL_ORDER		0x8000
-
-#define IEEE80211_FTYPE_MGMT		0x0000
-#define IEEE80211_FTYPE_CTL		0x0004
-#define IEEE80211_FTYPE_DATA		0x0008
-
-/* management */
-#define IEEE80211_STYPE_ASSOC_REQ	0x0000
-#define IEEE80211_STYPE_ASSOC_RESP	0x0010
-#define IEEE80211_STYPE_REASSOC_REQ	0x0020
-#define IEEE80211_STYPE_REASSOC_RESP	0x0030
-#define IEEE80211_STYPE_PROBE_REQ	0x0040
-#define IEEE80211_STYPE_PROBE_RESP	0x0050
-#define IEEE80211_STYPE_BEACON		0x0080
-#define IEEE80211_STYPE_ATIM		0x0090
-#define IEEE80211_STYPE_DISASSOC	0x00A0
-#define IEEE80211_STYPE_AUTH		0x00B0
-#define IEEE80211_STYPE_DEAUTH		0x00C0
-
-/* control */
-#define IEEE80211_STYPE_PSPOLL		0x00A0
-#define IEEE80211_STYPE_RTS		0x00B0
-#define IEEE80211_STYPE_CTS		0x00C0
-#define IEEE80211_STYPE_ACK		0x00D0
-#define IEEE80211_STYPE_CFEND		0x00E0
-#define IEEE80211_STYPE_CFENDACK	0x00F0
-
-/* data */
-#define IEEE80211_STYPE_DATA		0x0000
-#define IEEE80211_STYPE_DATA_CFACK	0x0010
-#define IEEE80211_STYPE_DATA_CFPOLL	0x0020
-#define IEEE80211_STYPE_DATA_CFACKPOLL	0x0030
-#define IEEE80211_STYPE_NULLFUNC	0x0040
-#define IEEE80211_STYPE_CFACK		0x0050
-#define IEEE80211_STYPE_CFPOLL		0x0060
-#define IEEE80211_STYPE_CFACKPOLL	0x0070
-#define IEEE80211_QOS_DATAGRP		0x0080
-
-#define IEEE80211_SCTL_FRAG		0x000F
-#define IEEE80211_SCTL_SEQ		0xFFF0
-
 /* QoS,QOS */
 #define NORMAL_ACK			0
-#define NO_ACK				1
-#define NON_EXPLICIT_ACK	2
-#define BLOCK_ACK			3
-
-#ifndef ETH_P_PAE
-#define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */
-#endif /* ETH_P_PAE */
-
-#define ETH_P_PREAUTH 0x88C7 /* IEEE 802.11i pre-authentication */
-
-#define ETH_P_ECONET	0x0018
-
-#ifndef ETH_P_80211_RAW
-#define ETH_P_80211_RAW (ETH_P_ECONET + 1)
-#endif
 
 /* IEEE 802.11 defines */
 
@@ -272,58 +115,6 @@ struct ieee80211_snap_hdr {
 
 #define SNAP_SIZE sizeof(struct ieee80211_snap_hdr)
 
-#define WLAN_FC_GET_TYPE(fc) ((fc) & IEEE80211_FCTL_FTYPE)
-#define WLAN_FC_GET_STYPE(fc) ((fc) & IEEE80211_FCTL_STYPE)
-
-#define WLAN_QC_GET_TID(qc) ((qc) & 0x0f)
-
-#define WLAN_GET_SEQ_FRAG(seq) ((seq) & IEEE80211_SCTL_FRAG)
-#define WLAN_GET_SEQ_SEQ(seq)  ((seq) & IEEE80211_SCTL_SEQ)
-
-/* Authentication algorithms */
-#define WLAN_AUTH_OPEN 0
-#define WLAN_AUTH_SHARED_KEY 1
-
-#define WLAN_AUTH_CHALLENGE_LEN 128
-
-#define WLAN_CAPABILITY_BSS BIT(0)
-#define WLAN_CAPABILITY_IBSS BIT(1)
-#define WLAN_CAPABILITY_CF_POLLABLE BIT(2)
-#define WLAN_CAPABILITY_CF_POLL_REQUEST BIT(3)
-#define WLAN_CAPABILITY_PRIVACY BIT(4)
-#define WLAN_CAPABILITY_SHORT_PREAMBLE BIT(5)
-#define WLAN_CAPABILITY_PBCC BIT(6)
-#define WLAN_CAPABILITY_CHANNEL_AGILITY BIT(7)
-#define WLAN_CAPABILITY_SHORT_SLOT BIT(10)
-
-/* Information Element IDs */
-#define WLAN_EID_SSID 0
-#define WLAN_EID_SUPP_RATES 1
-#define WLAN_EID_FH_PARAMS 2
-#define WLAN_EID_DS_PARAMS 3
-#define WLAN_EID_CF_PARAMS 4
-#define WLAN_EID_TIM 5
-#define WLAN_EID_IBSS_PARAMS 6
-#define WLAN_EID_CHALLENGE 16
-#define WLAN_EID_RSN 48
-#define WLAN_EID_GENERIC 221
-
-#define IEEE80211_MGMT_HDR_LEN 24
-#define IEEE80211_DATA_HDR3_LEN 24
-#define IEEE80211_DATA_HDR4_LEN 30
-
-#define IEEE80211_STATMASK_SIGNAL BIT(0)
-#define IEEE80211_STATMASK_RSSI BIT(1)
-#define IEEE80211_STATMASK_NOISE BIT(2)
-#define IEEE80211_STATMASK_RATE BIT(3)
-#define IEEE80211_STATMASK_WEMASK 0x7
-
-#define IEEE80211_CCK_MODULATION    BIT(0)
-#define IEEE80211_OFDM_MODULATION   BIT(1)
-
-#define IEEE80211_24GHZ_BAND     BIT(0)
-#define IEEE80211_52GHZ_BAND     BIT(1)
-
 #define IEEE80211_CCK_RATE_LEN			4
 #define IEEE80211_NUM_OFDM_RATESLEN	8
 
@@ -331,7 +122,6 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_CCK_RATE_2MB		        0x04
 #define IEEE80211_CCK_RATE_5MB		        0x0B
 #define IEEE80211_CCK_RATE_11MB		        0x16
-#define IEEE80211_OFDM_RATE_LEN			8
 #define IEEE80211_OFDM_RATE_6MB		        0x0C
 #define IEEE80211_OFDM_RATE_9MB		        0x12
 #define IEEE80211_OFDM_RATE_12MB		0x18
@@ -342,388 +132,16 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_OFDM_RATE_54MB		0x6C
 #define IEEE80211_BASIC_RATE_MASK		0x80
 
-#define IEEE80211_CCK_RATE_1MB_MASK		BIT(0)
-#define IEEE80211_CCK_RATE_2MB_MASK		BIT(1)
-#define IEEE80211_CCK_RATE_5MB_MASK		BIT(2)
-#define IEEE80211_CCK_RATE_11MB_MASK		BIT(3)
-#define IEEE80211_OFDM_RATE_6MB_MASK		BIT(4)
-#define IEEE80211_OFDM_RATE_9MB_MASK		BIT(5)
-#define IEEE80211_OFDM_RATE_12MB_MASK		BIT(6)
-#define IEEE80211_OFDM_RATE_18MB_MASK		BIT(7)
-#define IEEE80211_OFDM_RATE_24MB_MASK		BIT(8)
-#define IEEE80211_OFDM_RATE_36MB_MASK		BIT(9)
-#define IEEE80211_OFDM_RATE_48MB_MASK		BIT(10)
-#define IEEE80211_OFDM_RATE_54MB_MASK		BIT(11)
-
-#define IEEE80211_CCK_RATES_MASK	        0x0000000F
-#define IEEE80211_CCK_BASIC_RATES_MASK		(IEEE80211_CCK_RATE_1MB_MASK | \
-	IEEE80211_CCK_RATE_2MB_MASK)
-#define IEEE80211_CCK_DEFAULT_RATES_MASK   (IEEE80211_CCK_BASIC_RATES_MASK | \
-					   IEEE80211_CCK_RATE_5MB_MASK | \
-					   IEEE80211_CCK_RATE_11MB_MASK)
-
-#define IEEE80211_OFDM_RATES_MASK		0x00000FF0
-#define IEEE80211_OFDM_BASIC_RATES_MASK	(IEEE80211_OFDM_RATE_6MB_MASK | \
-	IEEE80211_OFDM_RATE_12MB_MASK | \
-	IEEE80211_OFDM_RATE_24MB_MASK)
-#define IEEE80211_OFDM_DEFAULT_RATES_MASK  (IEEE80211_OFDM_BASIC_RATES_MASK | \
-					   IEEE80211_OFDM_RATE_9MB_MASK  | \
-					   IEEE80211_OFDM_RATE_18MB_MASK | \
-					   IEEE80211_OFDM_RATE_36MB_MASK | \
-					   IEEE80211_OFDM_RATE_48MB_MASK | \
-					   IEEE80211_OFDM_RATE_54MB_MASK)
-#define IEEE80211_DEFAULT_RATES_MASK (IEEE80211_OFDM_DEFAULT_RATES_MASK | \
-				     IEEE80211_CCK_DEFAULT_RATES_MASK)
-
-#define IEEE80211_NUM_OFDM_RATES	    8
-#define IEEE80211_NUM_CCK_RATES	            4
-#define IEEE80211_OFDM_SHIFT_MASK_A         4
-
-/* NOTE: This data is for statistical purposes; not all hardware provides this
- *       information for frames received.  Not setting these will not cause
- *       any adverse affects.
- */
-struct ieee80211_rx_stats {
-	s8 rssi;
-	u8 signal;
-	u8 noise;
-	u8 received_channel;
-	u16 rate; /* in 100 kbps */
-	u8 mask;
-	u8 freq;
-	u16 len;
-};
-
-/* IEEE 802.11 requires that STA supports concurrent reception of at least
- * three fragmented frames. This define can be increased to support more
- * concurrent frames, but it should be noted that each entry can consume about
- * 2 kB of RAM and increasing cache size will slow down frame reassembly.
- */
-#define IEEE80211_FRAG_CACHE_LEN 4
-
-struct ieee80211_frag_entry {
-	u32 first_frag_time;
-	uint seq;
-	uint last_frag;
-	uint qos;   /*jackson*/
-	uint tid;	/*jackson*/
-	struct sk_buff *skb;
-	u8 src_addr[ETH_ALEN];
-	u8 dst_addr[ETH_ALEN];
-};
-
-struct ieee80211_stats {
-	uint tx_unicast_frames;
-	uint tx_multicast_frames;
-	uint tx_fragments;
-	uint tx_unicast_octets;
-	uint tx_multicast_octets;
-	uint tx_deferred_transmissions;
-	uint tx_single_retry_frames;
-	uint tx_multiple_retry_frames;
-	uint tx_retry_limit_exceeded;
-	uint tx_discards;
-	uint rx_unicast_frames;
-	uint rx_multicast_frames;
-	uint rx_fragments;
-	uint rx_unicast_octets;
-	uint rx_multicast_octets;
-	uint rx_fcs_errors;
-	uint rx_discards_no_buffer;
-	uint tx_discards_wrong_sa;
-	uint rx_discards_undecryptable;
-	uint rx_message_in_msg_fragments;
-	uint rx_message_in_bad_msg_fragments;
-};
-
-struct ieee80211_softmac_stats {
-	uint rx_ass_ok;
-	uint rx_ass_err;
-	uint rx_probe_rq;
-	uint tx_probe_rs;
-	uint tx_beacons;
-	uint rx_auth_rq;
-	uint rx_auth_rs_ok;
-	uint rx_auth_rs_err;
-	uint tx_auth_rq;
-	uint no_auth_rs;
-	uint no_ass_rs;
-	uint tx_ass_rq;
-	uint rx_ass_rq;
-	uint tx_probe_rq;
-	uint reassoc;
-	uint swtxstop;
-	uint swtxawake;
-};
-
-#define SEC_KEY_1         BIT(0)
-#define SEC_KEY_2         BIT(1)
-#define SEC_KEY_3         BIT(2)
-#define SEC_KEY_4         BIT(3)
-#define SEC_ACTIVE_KEY    BIT(4)
-#define SEC_AUTH_MODE     BIT(5)
-#define SEC_UNICAST_GROUP BIT(6)
-#define SEC_LEVEL         BIT(7)
-#define SEC_ENABLED       BIT(8)
-
-#define SEC_LEVEL_0      0 /* None */
-#define SEC_LEVEL_1      1 /* WEP 40 and 104 bit */
-#define SEC_LEVEL_2      2 /* Level 1 + TKIP */
-#define SEC_LEVEL_2_CKIP 3 /* Level 1 + CKIP */
-#define SEC_LEVEL_3      4 /* Level 2 + CCMP */
-
 #define WEP_KEYS 4
-#define WEP_KEY_LEN 13
-
-struct ieee80211_security {
-	u16 active_key:2,
-	    enabled:1,
-	    auth_mode:2,
-	    auth_algo:4,
-	    unicast_uses_group:1;
-	u8 key_sizes[WEP_KEYS];
-	u8 keys[WEP_KEYS][WEP_KEY_LEN];
-	u8 level;
-	u16 flags;
-} __packed;
-
-/*
- *
- * 802.11 data frame from AP
- *
- *       ,-------------------------------------------------------------------.
- * Bytes |  2   |  2   |    6    |    6    |    6    |  2   | 0..2312 |   4  |
- *       |------|------|---------|---------|---------|------|---------|------|
- * Desc. | ctrl | dura |  DA/RA  |   TA    |    SA   | Sequ |  frame  |  fcs |
- *       |      | tion | (BSSID) |         |         | ence |  data   |      |
- *       `-------------------------------------------------------------------'
- *
- * Total: 28-2340 bytes
- *
- */
-
-struct ieee80211_header_data {
-	__le16 frame_ctl;
-	__le16 duration_id;
-	u8 addr1[6];
-	u8 addr2[6];
-	u8 addr3[6];
-	__le16 seq_ctrl;
-} __packed __aligned(2);
 
-#define BEACON_PROBE_SSID_ID_POSITION 12
-
-/* Management Frame Information Element Types */
-#define MFIE_TYPE_SSID       0
-#define MFIE_TYPE_RATES      1
-#define MFIE_TYPE_FH_SET     2
-#define MFIE_TYPE_DS_SET     3
-#define MFIE_TYPE_CF_SET     4
-#define MFIE_TYPE_TIM        5
-#define MFIE_TYPE_IBSS_SET   6
-#define MFIE_TYPE_CHALLENGE  16
-#define MFIE_TYPE_ERP        42
-#define MFIE_TYPE_RSN	     48
-#define MFIE_TYPE_RATES_EX   50
-#define MFIE_TYPE_GENERIC    221
-
-struct ieee80211_info_element_hdr {
-	u8 id;
-	u8 len;
-} __packed;
-
-struct ieee80211_info_element {
-	u8 id;
-	u8 len;
-	u8 data[];
-} __packed;
-
-/*
- * These are the data types that can make up management packets
- *
-	__le16 auth_algorithm;
-	__le16 auth_sequence;
-	__le16 beacon_interval;
-	__le16 capability;
-	u8 current_ap[ETH_ALEN];
-	__le16 listen_interval;
-	struct {
-		u16 association_id:14, reserved:2;
-	} __packed;
-	__le32 time_stamp[2];
-	__le16 reason;
-	__le16 status;
-*/
-
-#define IEEE80211_DEFAULT_TX_ESSID "Penguin"
-#define IEEE80211_DEFAULT_BASIC_RATE 10
-
-struct ieee80211_authentication {
-	struct ieee80211_header_data header;
-	__le16 algorithm;
-	__le16 transaction;
-	__le16 status;
-} __packed;
-
-struct ieee80211_probe_response {
-	struct ieee80211_header_data header;
-	__le32 time_stamp[2];
-	__le16 beacon_interval;
-	__le16 capability;
-	struct ieee80211_info_element info_element;
-} __packed;
-
-struct ieee80211_probe_request {
-	struct ieee80211_header_data header;
-} __packed;
-
-struct ieee80211_assoc_request_frame {
-	struct ieee80211_hdr_3addr header;
-	__le16 capability;
-	__le16 listen_interval;
-	struct ieee80211_info_element_hdr info_element;
-} __packed;
-
-struct ieee80211_assoc_response_frame {
-	struct ieee80211_hdr_3addr header;
-	__le16 capability;
-	__le16 status;
-	__le16 aid;
-} __packed;
-
-struct ieee80211_txb {
-	u8 nr_frags;
-	u8 encrypted;
-	u16 reserved;
-	u16 frag_size;
-	u16 payload_size;
-	struct sk_buff *fragments[];
-};
-
-/* SWEEP TABLE ENTRIES NUMBER*/
-#define MAX_SWEEP_TAB_ENTRIES		  42
-#define MAX_SWEEP_TAB_ENTRIES_PER_PACKET  7
 /* MAX_RATES_LENGTH needs to be 12.  The spec says 8, and many APs
  * only use 8, and then use extended rates for the remaining supported
  * rates.  Other APs, however, stick all of their supported rates on the
  * main rates information element...
  */
 #define MAX_RATES_LENGTH                  ((u8)12)
-#define MAX_RATES_EX_LENGTH               ((u8)16)
-#define MAX_NETWORK_COUNT                  128
-#define MAX_CHANNEL_NUMBER                 161
-#define IEEE80211_SOFTMAC_SCAN_TIME	  400
-/*(HZ / 2)*/
-#define IEEE80211_SOFTMAC_ASSOC_RETRY_TIME (HZ * 2)
-
-#define CRC_LENGTH                 4U
-
 #define MAX_WPA_IE_LEN 128
 
-#define NETWORK_EMPTY_ESSID BIT(0)
-#define NETWORK_HAS_OFDM    BIT(1)
-#define NETWORK_HAS_CCK     BIT(2)
-
-#define IEEE80211_DTIM_MBCAST 4
-#define IEEE80211_DTIM_UCAST 2
-#define IEEE80211_DTIM_VALID 1
-#define IEEE80211_DTIM_INVALID 0
-
-#define IEEE80211_PS_DISABLED 0
-#define IEEE80211_PS_UNICAST IEEE80211_DTIM_UCAST
-#define IEEE80211_PS_MBCAST IEEE80211_DTIM_MBCAST
-#define IW_ESSID_MAX_SIZE 32
-/*
- * join_res:
- * -1: authentication fail
- * -2: association fail
- * > 0: TID
- */
-
-enum ieee80211_state {
-	/* the card is not linked at all */
-	IEEE80211_NOLINK = 0,
-	/* IEEE80211_ASSOCIATING* are for BSS client mode
-	 * the driver shall not perform RX filtering unless
-	 * the state is LINKED.
-	 * The driver shall just check for the state LINKED and
-	 * defaults to NOLINK for ALL the other states (including
-	 * LINKED_SCANNING)
-	 */
-	/* the association procedure will start (wq scheduling)*/
-	IEEE80211_ASSOCIATING,
-	IEEE80211_ASSOCIATING_RETRY,
-	/* the association procedure is sending AUTH request*/
-	IEEE80211_ASSOCIATING_AUTHENTICATING,
-	/* the association procedure has successfully authenticated
-	 * and is sending association request
-	 */
-	IEEE80211_ASSOCIATING_AUTHENTICATED,
-	/* the link is ok. the card associated to a BSS or linked
-	 * to a ibss cell or acting as an AP and creating the bss
-	 */
-	IEEE80211_LINKED,
-	/* same as LINKED, but the driver shall apply RX filter
-	 * rules as we are in NO_LINK mode. As the card is still
-	 * logically linked, but it is doing a syncro site survey
-	 * then it will be back to LINKED state.
-	 */
-	IEEE80211_LINKED_SCANNING,
-};
-
-#define DEFAULT_MAX_SCAN_AGE (15 * HZ)
-#define DEFAULT_FTS 2346
-
-#define CFG_IEEE80211_RESERVE_FCS BIT(0)
-#define CFG_IEEE80211_COMPUTE_FCS BIT(1)
-
-#define MAXTID	16
-
-#define IEEE_A            BIT(0)
-#define IEEE_B            BIT(1)
-#define IEEE_G            BIT(2)
-#define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
-
-static inline int ieee80211_is_empty_essid(const char *essid, int essid_len)
-{
-	/* Single white space is for Linksys APs */
-	if (essid_len == 1 && essid[0] == ' ')
-		return 1;
-	/* Otherwise, if the entire essid is 0, we assume it is hidden */
-	while (essid_len) {
-		essid_len--;
-		if (essid[essid_len] != '\0')
-			return 0;
-	}
-	return 1;
-}
-
-static inline int ieee80211_get_hdrlen(u16 fc)
-{
-	int hdrlen = 24;
-
-	switch (WLAN_FC_GET_TYPE(fc)) {
-	case IEEE80211_FTYPE_DATA:
-		if (fc & IEEE80211_QOS_DATAGRP)
-			hdrlen += 2;
-		if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
-			hdrlen += 6; /* Addr4 */
-		break;
-	case IEEE80211_FTYPE_CTL:
-		switch (WLAN_FC_GET_STYPE(fc)) {
-		case IEEE80211_STYPE_CTS:
-		case IEEE80211_STYPE_ACK:
-			hdrlen = 10;
-			break;
-		default:
-			hdrlen = 16;
-			break;
-		}
-		break;
-	}
-	return hdrlen;
-}
-
 struct registry_priv;
 
 u8 *r8712_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 116773943a2e..fe6694f4d5e4 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -18,6 +18,7 @@
 
 #include <linux/if_ether.h>
 #include <linux/ip.h>
+#include <net/cfg80211.h>
 
 #include "osdep_service.h"
 #include "drv_types.h"
@@ -27,12 +28,6 @@
 #include "usb_ops.h"
 #include "wifi.h"
 
-/* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
-static u8 bridge_tunnel_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8};
-
-/* Ethernet-II snap header (RFC1042 for most EtherTypes) */
-static u8 rfc1042_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00};
-
 static void recv_tasklet(unsigned long priv);
 
 void r8712_init_recv_priv(struct recv_priv *precvpriv,
diff --git a/drivers/staging/rtl8712/rtl871x_ht.h b/drivers/staging/rtl8712/rtl871x_ht.h
index ebd78665775d..4bcf5591c44d 100644
--- a/drivers/staging/rtl8712/rtl871x_ht.h
+++ b/drivers/staging/rtl8712/rtl871x_ht.h
@@ -26,7 +26,7 @@ struct ht_priv {
 	unsigned int	rx_ampdu_maxlen; /* for rx reordering ctrl win_sz,
 					  * updated when join_callback.
 					  */
-	struct ieee80211_ht_cap ht_cap;
+	struct rtl_ieee80211_ht_cap ht_cap;
 };
 
 #endif	/*_RTL871X_HT_H_ */
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 363b82e3e7c6..36c89cde525d 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -211,11 +211,10 @@ static char *translate_scan(struct _adapter *padapter,
 			    char *start, char *stop)
 {
 	struct iw_event iwe;
-	struct ieee80211_ht_cap *pht_capie;
 	char *current_val;
 	s8 *p;
 	u32 i = 0, ht_ielen = 0;
-	u16	cap, ht_cap = false, mcs_rate;
+	u16	cap, ht_cap = false;
 	u8 rssi;
 
 	if ((pnetwork->network.Configuration.DSConfig < 1) ||
@@ -241,8 +240,6 @@ static char *translate_scan(struct _adapter *padapter,
 			 &ht_ielen, pnetwork->network.IELength - 12);
 	if (p && ht_ielen > 0) {
 		ht_cap = true;
-		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
-		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
 	}
 	/* Add the protocol name */
 	iwe.cmd = SIOCGIWNAME;
@@ -268,8 +265,8 @@ static char *translate_scan(struct _adapter *padapter,
 	memcpy((u8 *)&cap, r8712_get_capability_from_ie(pnetwork->network.IEs),
 		2);
 	le16_to_cpus(&cap);
-	if (cap & (WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_BSS)) {
-		if (cap & WLAN_CAPABILITY_BSS)
+	if (cap & (WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_ESS)) {
+		if (cap & WLAN_CAPABILITY_ESS)
 			iwe.u.mode = (u32)IW_MODE_MASTER;
 		else
 			iwe.u.mode = (u32)IW_MODE_ADHOC;
@@ -1395,7 +1392,7 @@ static int r8711_wx_get_rate(struct net_device *dev,
 	struct _adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
-	struct ieee80211_ht_cap *pht_capie;
+	struct rtl_ieee80211_ht_cap *pht_capie;
 	unsigned char rf_type = padapter->registrypriv.rf_config;
 	int i;
 	u8 *p;
@@ -1411,7 +1408,7 @@ static int r8711_wx_get_rate(struct net_device *dev,
 			 pcur_bss->IELength - 12);
 	if (p && ht_ielen > 0) {
 		ht_cap = true;
-		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
+		pht_capie = (struct rtl_ieee80211_ht_cap *)(p + 2);
 		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
 		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
 			    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index cabdb3549a5a..efd75add8e35 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -249,8 +249,8 @@ static int is_same_network(struct wlan_bssid_ex *src,
 			  src->Ssid.SsidLength))) &&
 			((s_cap & WLAN_CAPABILITY_IBSS) ==
 			(d_cap & WLAN_CAPABILITY_IBSS)) &&
-			((s_cap & WLAN_CAPABILITY_BSS) ==
-			(d_cap & WLAN_CAPABILITY_BSS));
+			((s_cap & WLAN_CAPABILITY_ESS) ==
+			(d_cap & WLAN_CAPABILITY_ESS));
 
 }
 
@@ -1643,7 +1643,7 @@ unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
 {
 	u32 ielen, out_len;
 	unsigned char *p;
-	struct ieee80211_ht_cap ht_capie;
+	struct rtl_ieee80211_ht_cap ht_capie;
 	unsigned char WMM_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x00, 0x01, 0x00};
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
@@ -1659,7 +1659,7 @@ unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
 			pqospriv->qos_option = 1;
 		}
 		out_len = *pout_len;
-		memset(&ht_capie, 0, sizeof(struct ieee80211_ht_cap));
+		memset(&ht_capie, 0, sizeof(struct rtl_ieee80211_ht_cap));
 		ht_capie.cap_info = cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH |
 				    IEEE80211_HT_CAP_SGI_20 |
 				    IEEE80211_HT_CAP_SGI_40 |
@@ -1669,7 +1669,7 @@ unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
 		ht_capie.ampdu_params_info = (IEEE80211_HT_CAP_AMPDU_FACTOR &
 				0x03) | (IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00);
 		r8712_set_ie(out_ie + out_len, _HT_CAPABILITY_IE_,
-			     sizeof(struct ieee80211_ht_cap),
+			     sizeof(struct rtl_ieee80211_ht_cap),
 			     (unsigned char *)&ht_capie, pout_len);
 		phtpriv->ht_option = 1;
 	}
@@ -1683,7 +1683,7 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 	int i;
 	uint len;
 	struct sta_info *bmc_sta, *psta;
-	struct ieee80211_ht_cap *pht_capie;
+	struct rtl_ieee80211_ht_cap *pht_capie;
 	struct recv_reorder_ctrl *preorder_ctrl;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
@@ -1703,7 +1703,7 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 				&len, ie_len -
 				sizeof(struct NDIS_802_11_FIXED_IEs));
 	if (p && len > 0) {
-		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
+		pht_capie = (struct rtl_ieee80211_ht_cap *)(p + 2);
 		max_ampdu_sz = (pht_capie->ampdu_params_info &
 				IEEE80211_HT_CAP_AMPDU_FACTOR);
 		/* max_ampdu_sz (kbytes); */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index e5092b6da4bd..c1bfd61824ef 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -21,6 +21,7 @@
 #include <linux/if_ether.h>
 #include <linux/kmemleak.h>
 #include <linux/etherdevice.h>
+#include <net/cfg80211.h>
 
 #include "osdep_service.h"
 #include "drv_types.h"
@@ -35,12 +36,6 @@ static const u8 SNAP_ETH_TYPE_IPX[2] = {0x81, 0x37};
 /* Datagram Delivery Protocol */
 static const u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
-/* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
-static const u8 bridge_tunnel_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8};
-
-/* Ethernet-II snap header (RFC1042 for most EtherTypes) */
-static const u8 rfc1042_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00};
-
 void _r8712_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
 {
 	memset((u8 *)psta_recvpriv, 0, sizeof(struct sta_recv_priv));
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e93f356ed2b0..e83c256e1474 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -12,8 +12,6 @@
 
 #define MAX_SUBFRAME_COUNT	64
 
-#define SNAP_SIZE sizeof(struct ieee80211_snap_hdr)
-
 /* for Rx reordering buffer control */
 struct recv_reorder_ctrl {
 	struct _adapter	*padapter;
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 2f0d0ffa6fae..8b88fd5dc9a1 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -476,7 +476,7 @@ static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 	struct ieee80211_hdr *pwlanhdr = (struct ieee80211_hdr *)hdr;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
-	__le16 *fctrl = &pwlanhdr->frame_ctl;
+	__le16 *fctrl = &pwlanhdr->frame_control;
 	u8 *bssid;
 
 	memset(hdr, 0, WLANHDR_OFFSET);
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 91b65731fcaa..befb2f9b40ad 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -451,33 +451,18 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define GetOrderBit(pbuf)	(((*(__le16 *)(pbuf)) & \
 				le16_to_cpu(_ORDER_)) != 0)
 
-/**
- * struct ieee80211_bar - HT Block Ack Request
- *
- * This structure refers to "HT BlockAckReq" as
- * described in 802.11n draft section 7.2.1.7.1
- */
-struct ieee80211_bar {
-	__le16 frame_control;
-	__le16 duration;
-	unsigned char ra[6];
-	unsigned char ta[6];
-	__le16 control;
-	__le16 start_seq_num;
-} __packed;
-
 /* 802.11 BAR control masks */
 #define IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL     0x0000
 #define IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA  0x0004
 
 /*
- * struct ieee80211_ht_cap - HT capabilities
+ * struct rtl_ieee80211_ht_cap - HT capabilities
  *
  * This structure refers to "HT capabilities element" as
  * described in 802.11n draft section 7.3.2.52
  */
 
-struct ieee80211_ht_cap {
+struct rtl_ieee80211_ht_cap {
 	__le16	cap_info;
 	unsigned char	ampdu_params_info;
 	unsigned char	supp_mcs_set[16];
@@ -487,7 +472,7 @@ struct ieee80211_ht_cap {
 } __packed;
 
 /**
- * struct ieee80211_ht_cap - HT additional information
+ * struct ieee80211_ht_addt_info - HT additional information
  *
  * This structure refers to "HT information element" as
  * described in 802.11n draft section 7.3.2.53
-- 
2.27.0.278.ge193c7cf3a9-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
