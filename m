Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 752B233FB07
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:24:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18FAA84169;
	Wed, 17 Mar 2021 22:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V96Yohm3PQYh; Wed, 17 Mar 2021 22:24:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AD378336D;
	Wed, 17 Mar 2021 22:24:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4491BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D2404EDE7
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WeF-xqJ01ZTv for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06A554EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id w3so816142ejc.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Vv6MzJruLf6ENKWL6Nv2TxOA4CubhM0DXh/btYVmB8c=;
 b=stREO5MNrbWPisdP6UpM44VFp9FWregBTu0z5yX4Asn7U8piQZfKRwJmKsIcIBCK2z
 jkBuBcvwMuBR5snX7zqKaDoD+6Hsdy9KeZ/k6v/I+cuboldraaztOctUs0yOJB32eRGv
 XMH8s37baZ6Ojk4VvhHrk/JsbwDNkLG6B+esiUjw3kWUckQXfb8v0Dq2lr2Rm7Vf3rgS
 x04bm4GiDE38DHLBDclO+Cw+31Ie5Kwci6N6oFvssFqSAhQn+0INg+abN8aV2UnXnd6o
 nNqJggcgQI5cyHYzPUN2jbVaxOnlzeEn4wORS+o7upkKQKf2F/yFKbOAvLcgY1JBxs/v
 9gUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vv6MzJruLf6ENKWL6Nv2TxOA4CubhM0DXh/btYVmB8c=;
 b=aWIt0phV4ABl9jQimHLwxgJZE0skibdVv4GmCgFMvAEKQVwB1IwuVkcMz7uHDq2rj4
 JeeO5y8iBjSnYpvVx/VLVvQfwzvuNTAbzOPQo/FS5mgjQBhSDiY0yHXeKpydD3DmB0cR
 WcPVOAQCPG4TYUmzQWO+h6pgWR0+R33LV5+mU+ZROKsJ3TDkuQOUOxrfqZYWnGC/7J4F
 Zrjr7Hp6nUpPc+0g0c8BmS/ZNKxPlbPQdabOxPEl5fXK8rVu4FbYwDJGuHRObPq8Feum
 H2py9qqUbCOngDUeriyIPxsCfHKjg2GVbmxgojS46ygcT9htC5/N5u2BCEwVfieM4xUe
 ulhg==
X-Gm-Message-State: AOAM533UD28OJJWInYhu6fxf0r5tO8u3xt5IruRxt4XSlzxHxNUps3z+
 h9DSUqkCzSgUWWmjgONAXoQ=
X-Google-Smtp-Source: ABdhPJym1OXsEwG+K2m3xGr/bDwU5DeAOasYyKUIFQ17m7hbk04pLCp6eG1T6stxVLM615SnwLgm+w==
X-Received: by 2002:a17:906:154f:: with SMTP id
 c15mr36915263ejd.142.1616019690270; 
 Wed, 17 Mar 2021 15:21:30 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:30 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 17/43] Staging: rtl8723bs: fix names in wifi.h
Date: Wed, 17 Mar 2021 23:21:04 +0100
Message-Id: <20210317222130.29528-18-marcocesati@gmail.com>
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
in include/wifi.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mlme.h |  8 ++++----
 drivers/staging/rtl8723bs/include/wifi.h     | 14 +++++++-------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index ffcceb1fdde6..02d973a5aed2 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -230,9 +230,9 @@ struct wifidirect_info {
 	struct group_id_info 	groupid_info;	/* 	Store the group id information when doing the group negotiation handshake. */
 	struct scan_limit_info 	rx_invitereq_info;	/* 	Used for get the limit scan channel from the Invitation procedure */
 	struct scan_limit_info 	p2p_info;		/* 	Used for get the limit scan channel from the P2P negotiation handshake */
-	enum P2P_ROLE			role;
-	enum P2P_STATE			pre_p2p_state;
-	enum P2P_STATE			p2p_state;
+	enum p2p_role			role;
+	enum p2p_state			pre_p2p_state;
+	enum p2p_state			p2p_state;
 	u8 				device_addr[ETH_ALEN];	/* 	The device address should be the mac address of this device. */
 	u8 				interface_addr[ETH_ALEN];
 	u8 				social_chan[4];
@@ -275,7 +275,7 @@ struct wifidirect_info {
 														/* 	In this case, the driver can issue the tdls setup request frame */
 														/* 	even the current security is weak security. */
 
-	enum	P2P_WPSINFO		ui_got_wps_info;			/* 	This field will store the WPS value (PIN value or PBC) that UI had got from the user. */
+	enum	p2p_wpsinfo		ui_got_wps_info;			/* 	This field will store the WPS value (PIN value or PBC) that UI had got from the user. */
 	u16 					supported_wps_cm;			/* 	This field describes the WPS config method which this driver supported. */
 														/* 	The value should be the combination of config method defined in page104 of WPS v2.0 spec. */
 	u8 				external_uuid;				/*  UUID flag */
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 4080803d9b1b..f9815411321c 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -43,14 +43,14 @@
 /*  This test verifies the WLAN NIC can update the NAV through sending the CTS with large duration. */
 #define	WiFiNavUpperUs				30000	/*  30 ms */
 
-enum WIFI_FRAME_TYPE {
+enum wifi_frame_type {
 	WIFI_MGT_TYPE  =	(0),
 	WIFI_CTRL_TYPE =	(BIT(2)),
 	WIFI_DATA_TYPE =	(BIT(3)),
 	WIFI_QOS_DATA_TYPE	= (BIT(7)|BIT(3)),	/*  QoS Data */
 };
 
-enum WIFI_FRAME_SUBTYPE {
+enum wifi_frame_subtype {
 
     /*  below is for mgt frame */
     WIFI_ASSOCREQ       = (0 | WIFI_MGT_TYPE),
@@ -88,7 +88,7 @@ enum WIFI_FRAME_SUBTYPE {
     WIFI_QOS_DATA_NULL	= (BIT(6) | WIFI_QOS_DATA_TYPE),
 };
 
-enum WIFI_REG_DOMAIN {
+enum wifi_reg_domain {
 	DOMAIN_FCC		= 1,
 	DOMAIN_IC		= 2,
 	DOMAIN_ETSI		= 3,
@@ -751,14 +751,14 @@ struct ADDBA_request {
 #define	WPS_CM_SW_DISPLAY_PIN				0x2008
 #define	WPS_CM_LCD_DISPLAY_PIN				0x4008
 
-enum P2P_ROLE {
+enum p2p_role {
 	P2P_ROLE_DISABLE = 0,
 	P2P_ROLE_DEVICE = 1,
 	P2P_ROLE_CLIENT = 2,
 	P2P_ROLE_GO = 3
 };
 
-enum P2P_STATE {
+enum p2p_state {
 	P2P_STATE_NONE = 0,							/* 	P2P disable */
 	P2P_STATE_IDLE = 1,								/* 	P2P had enabled and do nothing */
 	P2P_STATE_LISTEN = 2,							/* 	In pure listen state */
@@ -784,7 +784,7 @@ enum P2P_STATE {
 	P2P_STATE_TX_INFOR_NOREADY = 22,			/*  sending p2p negotiation response with information is not available */
 };
 
-enum P2P_WPSINFO {
+enum p2p_wpsinfo {
 	P2P_NO_WPSINFO						= 0,
 	P2P_GOT_WPSINFO_PEER_DISPLAY_PIN	= 1,
 	P2P_GOT_WPSINFO_SELF_DISPLAY_PIN	= 2,
@@ -793,7 +793,7 @@ enum P2P_WPSINFO {
 
 #define	P2P_PRIVATE_IOCTL_SET_LEN		64
 
-enum P2P_PROTO_WK_ID {
+enum p2p_proto_wk_id {
 	P2P_FIND_PHASE_WK = 0,
 	P2P_RESTORE_STATE_WK = 1,
 	P2P_PRE_TX_PROVDISC_PROCESS_WK = 2,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
