Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF3B20B4BC
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2ED0287EC3;
	Fri, 26 Jun 2020 15:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thsiPqLQs7yQ; Fri, 26 Jun 2020 15:37:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 332AD84DDC;
	Fri, 26 Jun 2020 15:37:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6BD1BF295
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39AC08601E
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:36:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5wCn6USkHrG for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A85884DDC
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:36:58 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id z2so7775220qts.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 08:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zaM022Y/HvL/3x+amPYr1/2gQ3yZjNK4i4/X4H7UZdk=;
 b=WxPlucknbvIlw82ivwskuCV0wvNkaalfBfcDCcbd+cseAq8sIU2Nf8tk8TYqU7H5/C
 LbAKIyK1F3Nl/7gxztG1lqvGgJO9QSDnB8aUtAsoAdzF8IAANwm1UkUQVa+wJM6LAJlw
 Qe6hHoBvfy7efICEbxgBY3QcBwHjwY/sdXJKXMI0DafjErqbNgUrjk5aTEbOS/YXlafp
 +7KvtbsZupKjTaMdlbywLi6kMpZYOMD0kmos1u1+w29FZjyx8tcxgrzJn4hy7o8Qxdlb
 rAAx+yu4utQ1qDCAW+lXr0zal/pHGU2mlMb5OlbzEvt4c7GMg2Yx2K/DIBykb4F4bHZH
 faOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zaM022Y/HvL/3x+amPYr1/2gQ3yZjNK4i4/X4H7UZdk=;
 b=rDgT2f00AVks0aacVV6CKGgjJ2izpe3ccF9KPehHaodnOwSSwcbz30Ozy2XeRqqB3G
 6e5bjUs10oSJTU5NjL7WON/ld0f7yTsctQoWlX7AcN/sxB/1SAWnpHqqwanbk6OCRJYI
 sCEPDMxKp16b2b/v+vsccodCRUyOG11qqusQ715X+J4m56ZeMr0xvJyFu/QYbzFo17hy
 /HvRCM05CjODNTsCVa6YjnoJrDcs7hyOzWERS2I/96Yz52MAPg1bzPbnC0k9bDr4FXla
 2Wv8gjsWvWePsntbGWSBcXPoE4wRDRcDFgN9CAf9xxjTJAKCSRibIpmkS/7PRKsclKQL
 pusQ==
X-Gm-Message-State: AOAM533BvgsfsT4PPOPjNrQq95tPGSGigFHWz+nMDpx8ItTm9LVELWde
 Zhf7okz0I5h6EBafptqIc7g=
X-Google-Smtp-Source: ABdhPJyM6dmcoDMp76/DN0TKwYW3uYo931Fm5ycZytXYuV+SwzaN6MBvNHHnynyfoAh20xBIT1lWfg==
X-Received: by 2002:ac8:1907:: with SMTP id t7mr3326757qtj.160.1593185817581; 
 Fri, 26 Jun 2020 08:36:57 -0700 (PDT)
Received: from mooncell.myfiosgateway.com
 (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
 by smtp.gmail.com with ESMTPSA id y40sm9719918qtc.29.2020.06.26.08.36.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 08:36:56 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, colin.king@canonical.com
Subject: [PATCH 1/4] staging: rtl8188eu: Fix comment formatting
Date: Fri, 26 Jun 2020 11:36:36 -0400
Message-Id: <20200626153639.8097-1-brookebasile@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Brooke Basile <brookebasile@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch warnings:
	WARNING: Block comments use * on subsequent lines
	WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
 .../staging/rtl8188eu/core/rtw_ieee80211.c    | 26 ++++++++++++-------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index caf600eba03b..a27dce7f30b3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -139,9 +139,11 @@ u8 *rtw_set_ie
 	return pbuf + len + 2;
 }
 
-/*----------------------------------------------------------------------------
-index: the information element id index, limit is the limit for search
------------------------------------------------------------------------------*/
+/*
+ * ----------------------------------------------------------------------------
+ * index: the information element id index, limit is the limit for search
+ * ----------------------------------------------------------------------------
+ */
 u8 *rtw_get_ie(u8 *pbuf, int index, uint *len, int limit)
 {
 	int tmp, i;
@@ -680,9 +682,11 @@ static int rtw_ieee802_11_parse_vendor_specific(u8 *pos, uint elen,
 {
 	unsigned int oui;
 
-	/* first 3 bytes in vendor specific information element are the IEEE
+	/*
+	 * first 3 bytes in vendor specific information element are the IEEE
 	 * OUI of the vendor. The following byte is used a vendor specific
-	 * sub-type. */
+	 * sub-type.
+	 */
 	if (elen < 4) {
 		if (show_errors) {
 			DBG_88E("short vendor specific information element ignored (len=%lu)\n",
@@ -694,12 +698,16 @@ static int rtw_ieee802_11_parse_vendor_specific(u8 *pos, uint elen,
 	oui = RTW_GET_BE24(pos);
 	switch (oui) {
 	case OUI_MICROSOFT:
-		/* Microsoft/Wi-Fi information elements are further typed and
-		 * subtyped */
+		/*
+		 * Microsoft/Wi-Fi information elements are further typed and
+		 * subtyped
+		 */
 		switch (pos[3]) {
 		case 1:
-			/* Microsoft OUI (00:50:F2) with OUI Type 1:
-			 * real WPA information element */
+			/*
+			 * Microsoft OUI (00:50:F2) with OUI Type 1:
+			 * real WPA information element
+			 */
 			elems->wpa_ie = pos;
 			elems->wpa_ie_len = elen;
 			break;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
