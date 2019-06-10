Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A4F3AFE5
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3B4785797;
	Mon, 10 Jun 2019 07:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vW3wNsLXlTxM; Mon, 10 Jun 2019 07:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 439EF85313;
	Mon, 10 Jun 2019 07:47:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 658E51BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62E9885308
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zA0LO3OP5G2x for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F10698502B
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:34 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 20so4588336pgr.4
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kiz/R/GSCkVZsIg979zQukd2TqCceb8uzlXxAem6GMo=;
 b=t0RF046QMsLxAm1HCZZcv0+ewcTUUCtV3r2grYb+t4eN3hQbUaHzOV3vSlXccRNOMg
 +lK0UmHfi7PlisPvoQkmwlCIXT1hmz9jUyiDE5zDFW1Wnp6EOGQOvdlug1HHqYQeUpKq
 fSa8uTYRtdzqKHbn9OFuhFKONmcm3HC6Nft2fQoqH8HZIZvBcDu7n2fbXhlyDAqIwjap
 NdPVGsQW9NPzLc5fBCdwvcHgyVeZOZSI2ETT4A6LrhLQw1o/wrwSs2kjBcKwAIH768o1
 MS32z4SH28tEspGdSYkhfZm7ua6riGV6dZonxxctEitVAhsaGtSl5/w3qE75HjZy1YDm
 1JYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kiz/R/GSCkVZsIg979zQukd2TqCceb8uzlXxAem6GMo=;
 b=VPn67szJgu59rdoq03P7yaoncgAPx7guOwckAuKIKVcSD2GnMA54B9Z8HdXJ9DQuSS
 SSgdcfONdT9UK0r1d78pFF66QgNVkeRFRar2XvGOWmqd5jezEaAU320NkX++fQF4h3lo
 ScqN4tP/NMPj5y1JsMbszsP+AbWa9mLnnJuTy0s+lMbfkNzvmOBgiA30dIg9tM9ORB/M
 B5UgdTY//EXPszn3oD1BF/KxnzpUFUIVryHxCSIcHVDZJfMUP9wh0/vSlo2k/GlPuB8J
 QKJA1qHv4mI0r4h9f3f8mTUj1YTO0pF2oVD5LJFb3WL4M40I+VJ4xkD5JGEBtCrw4jiw
 BcYw==
X-Gm-Message-State: APjAAAWUTpLO7JUXr3B9B4oVZs2Wej0CGJSBEwYEJwGK5PE+Atz5BfOQ
 CLSqUcrIeFxLMXKMLvKWgPI=
X-Google-Smtp-Source: APXvYqxK/UKn09n+wr80rds6XLA/ovDTUbNIgCzZXEZk/xNTZ1KtiglAnPtqeREio0bgBsH0Uu3nhQ==
X-Received: by 2002:a65:44c8:: with SMTP id g8mr14474142pgs.443.1560152854204; 
 Mon, 10 Jun 2019 00:47:34 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 07/10] staging: rtl8723bs: hal: rtl8723b_cmd.c: Remove
 variables
Date: Mon, 10 Jun 2019 13:17:07 +0530
Message-Id: <20190610074710.15677-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variables that are declared and initialised but never used.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of patch series.

 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index fe3891106a6d..e001d302b34c 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -674,10 +674,6 @@ static void ConstructProbeReq(struct adapter *padapter, u8 *pframe, u32 *pLength
 	u32 pktlen;
 	unsigned char *mac;
 	unsigned char bssrate[NumRates];
-	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	int bssrate_len = 0;
 	u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
@@ -1288,8 +1284,6 @@ static void rtl8723b_set_FwAOACGlobalInfo_Cmd(struct adapter *padapter,  u8 grou
 static void rtl8723b_set_FwScanOffloadInfo_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc, u8 enable)
 {
 	u8 u1H2CScanOffloadInfoParm[H2C_SCAN_OFFLOAD_CTRL_LEN] = {0};
-	u8 res = 0, count = 0;
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 
 	DBG_871X("%s: loc_probe_packet:%d, loc_scan_info: %d loc_ssid_info:%d\n",
 		__func__, rsvdpageloc->LocProbePacket, rsvdpageloc->LocScanInfo, rsvdpageloc->LocSSIDInfo);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
