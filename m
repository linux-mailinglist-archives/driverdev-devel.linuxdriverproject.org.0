Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0021C4B803
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 14:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 303E42076E;
	Wed, 19 Jun 2019 12:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIIs1jIXfZjq; Wed, 19 Jun 2019 12:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8DAF920554;
	Wed, 19 Jun 2019 12:19:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A50D1BF299
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 12:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 522D520532
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 12:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5l4jarn1GA7B for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 12:19:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 3EDC52052C
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 12:19:25 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z23so1603980wma.4
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 05:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n4OeT4QB9PU6VWYqnBOpEAKI0qOoaWHvz6HpjRQkiqU=;
 b=m9YyBNc8i5EA+3R/Dtqu49+173j3ZLWpLEmWJ5shrDWjBSS22iX6e3Ugqf2SZ9MnDN
 +303RkVSGZz6Ncll5Tzk/lYAgdeGoya1cd1PSaN4UWYhIMpMceV23xl48t7nAeUID5TW
 LF7DfgO793v3Ppt9W8P6w+hKVWORCcEdcccDYg6/W0e2GsGJamEwCoTf1S7gVX6FhTbq
 A+jv1Avn4jUQMm9oZgAp07qqUM4W0w8kvACwcSH9qWQLNzPX3YLoe9mkki4NTYP/IoDN
 nZetjUkNs4EQUoeek1nSqmAcfcWdMiKxb6Ng8rqIQfPhIe8RF1ELZQmeOjCqpKvlQDLg
 HO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n4OeT4QB9PU6VWYqnBOpEAKI0qOoaWHvz6HpjRQkiqU=;
 b=SQ1o4B9acoID4hQZXdpM1ol59k66AuW30ph7Df9aqvXTUMjIQPm8rBVpQpsK4mih2k
 L5y8eAivU6gt8xEUHleqiTs4FS8N2g4xuVNxPW0N9N2dPRaDKoL6LAEY+0EXgUUsgAS9
 xAMf2UjYEnAoa5hO+dcWFvdDglQZo29ynY/3o9CRKPEFdF1XGvbeoa3TeFcsJWpLl4ZI
 k+fRWId9xZ6mmLsaRXpjjwvYwrcur8oFBkyIrbD63gRtYRN5ymENfuSu6zJosC9XJful
 wKWR1mxWzB0VXmpjKhHahd2Jl4rSPDQEvyyV455UoiMZeVos2N+Kv8BQ75zyFb+nxz1D
 waog==
X-Gm-Message-State: APjAAAUus5Md43bBXYvjRvcqK5BYK3l8r0HOpswM3PW1l4XYCoyn7ypJ
 48UudMOYL99lUXu9ORRraYk=
X-Google-Smtp-Source: APXvYqzV+tD7OpfSIAGNCnmAiTHpfs1hqjUA9hPfSI4NsweDqVTtGYwKvjEZMP6QtXtraUf5+9p/hA==
X-Received: by 2002:a1c:6154:: with SMTP id v81mr7986066wmb.92.1560946763708; 
 Wed, 19 Jun 2019 05:19:23 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id h90sm34887858wrh.15.2019.06.19.05.19.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 05:19:22 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unused code
Date: Wed, 19 Jun 2019 14:19:08 +0200
Message-Id: <20190619121908.9203-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused and/or commented code from rtw_wlan_util.c.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index f404370d6631..d1e99885c8f5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -27,9 +27,6 @@ static const u8 EPIGRAM_OUI[] = {0x00, 0x90, 0x4c};
 
 u8 REALTEK_96B_IE[] = {0x00, 0xe0, 0x4c, 0x02, 0x01, 0x20};
 
-#define R2T_PHY_DELAY	(0)
-
-/* define WAIT_FOR_BCN_TO_M	(3000) */
 #define WAIT_FOR_BCN_TO_MIN	(6000)
 #define WAIT_FOR_BCN_TO_MAX	(20000)
 
@@ -1041,7 +1038,6 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 
 		switch (pIE->ElementID) {
 		case _HT_EXTRA_INFO_IE_:	/* HT info */
-			/* HT_info_handler(padapter, pIE); */
 			bwmode_update_check(padapter, pIE);
 			break;
 		case _ERPINFO_IE_:
@@ -1346,8 +1342,6 @@ void update_IOT_info(struct adapter *padapter)
 			       false);
 		break;
 	case HT_IOT_PEER_REALTEK:
-		/* rtw_write16(padapter, 0x4cc, 0xffff); */
-		/* rtw_write16(padapter, 0x546, 0x01c0); */
 		/* disable high power */
 		Switch_DM_Func(padapter, (u32)(~DYNAMIC_BB_DYNAMIC_TXPWR),
 			       false);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
