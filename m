Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF9C33FB0F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:25:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBADF8416D;
	Wed, 17 Mar 2021 22:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oeKdozt8w8uo; Wed, 17 Mar 2021 22:25:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C44EA84167;
	Wed, 17 Mar 2021 22:25:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEFC51BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AAB5A84150
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzkWX-nSjJRO for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D594840FE
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:36 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id a7so819467ejs.3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=vYKH2sDZU6+oV1GZMjwo+uF+z70EHasZAP4OlUrYLTU=;
 b=YgtNjzYB4hNoq4Mh/VOT/GRWDnfb5M4MFKM/CDIiabk4/ybVH9vKPUPcbXk+Fgc6yN
 K55w3Gi+DTFGHQS1KqRNAvpS2jU8Kc4w9UkvCrPnNu7STM8Ldgp2EDRt/gnpTrN9jsyJ
 onCz8hoItuaK7DYzmUoUyIrJcMQLjSyvwbVdqAf6+EYcRPqPe5WCzieHtorxV2qoS+NK
 d00cSK9X2J67w1tPu0/tD3rKMbPpbPKDB5pF9eyuaK8wh54YvKlM8jiheID+h7b/Z/3z
 EEBDgOEvgXlYqwSKldQ4EgZyJ3RlawJdpU6QbMzFoBdLpCxE9ODZH5I7X4a7srgCIQ73
 8Ajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vYKH2sDZU6+oV1GZMjwo+uF+z70EHasZAP4OlUrYLTU=;
 b=WMORluSiqAecyU4hY2QvMWZI6wdpaUxfZqRbBNg6NU5BXuY/d4JL9qoHXmXhPelA5Y
 Z26hZm/jL2BNgmOHynlOf0Jt0UX10lC1qORhH2P3K4+YxWrt/HT22CVKkRlrpmtqMY3b
 V9wnWWpKjYyly4rI7eVCs5OKQEJndPMJ+ETtMfxQRcnwDeZMa7vmsFzjJV6aHdGF4izf
 ayKFyLekiBXyZXqNzunDfuze+fUGcThFl7Sk1D10XOK3vTQ0v5cx/E5YudLcotKVOKwA
 ODkQOZ7NJfaQEIJj1JL1kUG7RJkIhjBvJXRyKShr2YceMAsetOV6SPIKnQDkWPzyRKxa
 AISQ==
X-Gm-Message-State: AOAM530PQvevtLorJ5coAkkWNyEK9SMRfA7zS8Mhm0NRzPSw6mFxE5So
 DS8ifKmLIhaH5p3jdVYml8I=
X-Google-Smtp-Source: ABdhPJyhkMHdG3VHJzYTKrZX4G0GF6gWZwMXv99mjjpCrUN4EjJkla1SDATCTVH95+d70HdMlhITzg==
X-Received: by 2002:a17:906:8614:: with SMTP id
 o20mr36677111ejx.386.1616019694908; 
 Wed, 17 Mar 2021 15:21:34 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:34 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 23/43] Staging: rtl8723bs: fix names in HalPwrSeqCmd.h
Date: Wed, 17 Mar 2021 23:21:10 +0100
Message-Id: <20210317222130.29528-24-marcocesati@gmail.com>
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
in include/HalPwrSeqCmd.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c  |  4 ++--
 drivers/staging/rtl8723bs/hal/hal_pwr_seq.c   | 22 +++++++++----------
 .../staging/rtl8723bs/include/HalPwrSeqCmd.h  |  6 ++---
 .../staging/rtl8723bs/include/hal_pwr_seq.h   | 22 +++++++++----------
 4 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
index c1c9914d9b49..932b31fda6ad 100644
--- a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
+++ b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
@@ -39,10 +39,10 @@ u8 HalPwrSeqCmdParsing(
 	u8 CutVersion,
 	u8 FabVersion,
 	u8 InterfaceType,
-	struct WLAN_PWR_CFG PwrSeqCmd[]
+	struct wlan_pwr_cfg PwrSeqCmd[]
 )
 {
-	struct WLAN_PWR_CFG PwrCfgCmd;
+	struct wlan_pwr_cfg PwrCfgCmd;
 	u8 bPollingBit = false;
 	u32 AryIdx = 0;
 	u8 value = 0;
diff --git a/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c b/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c
index 2a80da26f572..fba67a7c069c 100644
--- a/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c
+++ b/drivers/staging/rtl8723bs/hal/hal_pwr_seq.c
@@ -21,7 +21,7 @@ Major Change History:
 
 /* drivers should parse below arrays and do the corresponding actions */
 /* 3 Power on  Array */
-struct WLAN_PWR_CFG rtl8723B_power_on_flow[
+struct wlan_pwr_cfg rtl8723B_power_on_flow[
 	RTL8723B_TRANS_CARDEMU_TO_ACT_STEPS+
 	RTL8723B_TRANS_END_STEPS
 ] = {
@@ -30,7 +30,7 @@ struct WLAN_PWR_CFG rtl8723B_power_on_flow[
 };
 
 /* 3Radio off GPIO Array */
-struct WLAN_PWR_CFG rtl8723B_radio_off_flow[
+struct wlan_pwr_cfg rtl8723B_radio_off_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_END_STEPS
 ] = {
@@ -39,7 +39,7 @@ struct WLAN_PWR_CFG rtl8723B_radio_off_flow[
 };
 
 /* 3Card Disable Array */
-struct WLAN_PWR_CFG rtl8723B_card_disable_flow[
+struct wlan_pwr_cfg rtl8723B_card_disable_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -50,7 +50,7 @@ struct WLAN_PWR_CFG rtl8723B_card_disable_flow[
 };
 
 /* 3 Card Enable Array */
-struct WLAN_PWR_CFG rtl8723B_card_enable_flow[
+struct wlan_pwr_cfg rtl8723B_card_enable_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -61,7 +61,7 @@ struct WLAN_PWR_CFG rtl8723B_card_enable_flow[
 };
 
 /* 3Suspend Array */
-struct WLAN_PWR_CFG rtl8723B_suspend_flow[
+struct wlan_pwr_cfg rtl8723B_suspend_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -72,7 +72,7 @@ struct WLAN_PWR_CFG rtl8723B_suspend_flow[
 };
 
 /* 3 Resume Array */
-struct WLAN_PWR_CFG rtl8723B_resume_flow[
+struct wlan_pwr_cfg rtl8723B_resume_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -83,7 +83,7 @@ struct WLAN_PWR_CFG rtl8723B_resume_flow[
 };
 
 /* 3HWPDN Array */
-struct WLAN_PWR_CFG rtl8723B_hwpdn_flow[
+struct wlan_pwr_cfg rtl8723B_hwpdn_flow[
 	RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+
 	RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+
 	RTL8723B_TRANS_END_STEPS
@@ -94,7 +94,7 @@ struct WLAN_PWR_CFG rtl8723B_hwpdn_flow[
 };
 
 /* 3 Enter LPS */
-struct WLAN_PWR_CFG rtl8723B_enter_lps_flow[
+struct wlan_pwr_cfg rtl8723B_enter_lps_flow[
 	RTL8723B_TRANS_ACT_TO_LPS_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* FW behavior */
@@ -103,7 +103,7 @@ struct WLAN_PWR_CFG rtl8723B_enter_lps_flow[
 };
 
 /* 3 Leave LPS */
-struct WLAN_PWR_CFG rtl8723B_leave_lps_flow[
+struct wlan_pwr_cfg rtl8723B_leave_lps_flow[
 	RTL8723B_TRANS_LPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* FW behavior */
@@ -112,7 +112,7 @@ struct WLAN_PWR_CFG rtl8723B_leave_lps_flow[
 };
 
 /* 3 Enter SW LPS */
-struct WLAN_PWR_CFG rtl8723B_enter_swlps_flow[
+struct wlan_pwr_cfg rtl8723B_enter_swlps_flow[
 	RTL8723B_TRANS_ACT_TO_SWLPS_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* SW behavior */
@@ -121,7 +121,7 @@ struct WLAN_PWR_CFG rtl8723B_enter_swlps_flow[
 };
 
 /* 3 Leave SW LPS */
-struct WLAN_PWR_CFG rtl8723B_leave_swlps_flow[
+struct wlan_pwr_cfg rtl8723B_leave_swlps_flow[
 	RTL8723B_TRANS_SWLPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS
 ] = {
 	/* SW behavior */
diff --git a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
index 7e8c2e511d0b..ba9b033685ec 100644
--- a/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
+++ b/drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h
@@ -82,12 +82,12 @@
 #define	PWR_CUT_ALL_MSK			0xFF
 
 
-enum PWRSEQ_CMD_DELAY_UNIT {
+enum pwrseq_cmd_delay_unit {
 	PWRSEQ_DELAY_US,
 	PWRSEQ_DELAY_MS,
 };
 
-struct WLAN_PWR_CFG {
+struct wlan_pwr_cfg {
 	u16 offset;
 	u8 cut_msk;
 	u8 fab_msk:4;
@@ -117,6 +117,6 @@ u8 HalPwrSeqCmdParsing(
 	u8 		CutVersion,
 	u8 		FabVersion,
 	u8 		InterfaceType,
-	struct WLAN_PWR_CFG	PwrCfgCmd[]);
+	struct wlan_pwr_cfg	PwrCfgCmd[]);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/include/hal_pwr_seq.h b/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
index 7c5fbf0b9736..0837506b6be8 100644
--- a/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
+++ b/drivers/staging/rtl8723bs/include/hal_pwr_seq.h
@@ -219,15 +219,15 @@
 	{0xFFFF, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_ALL_MSK, 0, PWR_CMD_END, 0, 0}, 
 
 
-extern struct WLAN_PWR_CFG rtl8723B_power_on_flow[RTL8723B_TRANS_CARDEMU_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_radio_off_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_card_disable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_card_enable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_suspend_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_resume_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_hwpdn_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_enter_lps_flow[RTL8723B_TRANS_ACT_TO_LPS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_leave_lps_flow[RTL8723B_TRANS_LPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_enter_swlps_flow[RTL8723B_TRANS_ACT_TO_SWLPS_STEPS+RTL8723B_TRANS_END_STEPS];
-extern struct WLAN_PWR_CFG rtl8723B_leave_swlps_flow[RTL8723B_TRANS_SWLPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_power_on_flow[RTL8723B_TRANS_CARDEMU_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_radio_off_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_card_disable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_card_enable_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_suspend_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_resume_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_SUS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_hwpdn_flow[RTL8723B_TRANS_ACT_TO_CARDEMU_STEPS+RTL8723B_TRANS_CARDEMU_TO_PDN_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_enter_lps_flow[RTL8723B_TRANS_ACT_TO_LPS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_leave_lps_flow[RTL8723B_TRANS_LPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_enter_swlps_flow[RTL8723B_TRANS_ACT_TO_SWLPS_STEPS+RTL8723B_TRANS_END_STEPS];
+extern struct wlan_pwr_cfg rtl8723B_leave_swlps_flow[RTL8723B_TRANS_SWLPS_TO_ACT_STEPS+RTL8723B_TRANS_END_STEPS];
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
