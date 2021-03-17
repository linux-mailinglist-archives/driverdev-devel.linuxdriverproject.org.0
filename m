Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE5E33FB21
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF38F43284;
	Wed, 17 Mar 2021 22:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMm3OTHqZu4u; Wed, 17 Mar 2021 22:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EE704309B;
	Wed, 17 Mar 2021 22:28:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CB0B1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 094DE430A8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpQZJ9dnP3LP for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6196D4309B
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:47 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id w3so817003ejc.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CfQs9HeLIohlbNnEbmhBFOf8S0wSZmx3RCQwtEb8b60=;
 b=dPLv+omxNaSUCaWbpCMbEONZU4goWrNX2hOAkNJA54fXmNJSieI16fvcEA4H+fzcjp
 o0KTpi4CiOl5R4yR4ET2JOx+tUhNs+uMEaqGbnQo9PDXwdzylGhZQIK4ZjvvTwZWmvZp
 XurRJgMkMN3jbvCi9IF7U8t363aB/T54wCbazir/iiPedX0aRGmuUcZzxxqIfcf+K6i0
 0jveq8OyciX/e/3L6faIcYiXmBMLeUPRu1nSHVcje3bOzyprO07ioRJNAKg47Jk9G8ht
 gSq0ynNd17098h9VIu/ik3tpE3ULmqTXo7l3M4TpLJNvOaIe57b0MxVO9GfSCQRPKoLK
 UulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CfQs9HeLIohlbNnEbmhBFOf8S0wSZmx3RCQwtEb8b60=;
 b=CjMsHKubojObZY++Y9t/D4SA+ff53kV7gkw7yOh8pAOVrDdE0enD+lACuA/maDQpnr
 87+f+6yQjKVd4z0CAo2GbodJnrVfYYVdVTfzKaAgdolHEjPIk4bimgMmpv2oRliHST9f
 cJyuLpi45WnZLud26ERjp5HC/qx8rh/hucHU4BtVNlttDSMr031C/3jjok02aEcdnzLX
 beJnhE9lLJX+at8lN8SVoMP614VQpn+zvu13mnnmdWIo3ZexymPIVLfPxIVjoOA8RP3f
 xI3e+qnE+CmzLDxpvzc51ShoI+wFJHSXwvrGMzowcoUsIygHVOoymeyQS+0/hEc6sxWu
 sCPA==
X-Gm-Message-State: AOAM5330Ksk/yehiQxfiM3PfDVBlWKShpaezgnc2fMikEpsn4Ak+sGFe
 ZpasyLniMP62OVSyrWFqNT8=
X-Google-Smtp-Source: ABdhPJzCdFa+OhmUIV+dprsa0d8TPT03Kka0t7Y+iR8ct8vSOs1X+BUrwV0MUHYXoOXgv3TRVLhSXg==
X-Received: by 2002:a17:906:558:: with SMTP id
 k24mr38016833eja.387.1616019705622; 
 Wed, 17 Mar 2021 15:21:45 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:45 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 37/43] Staging: rtl8723bs: fix names in hal_btcoex.c
Date: Wed, 17 Mar 2021 23:21:24 +0100
Message-Id: <20210317222130.29528-38-marcocesati@gmail.com>
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
in hal/hal_btcoex.c from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index e718120457e7..d42cc24c7535 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -20,22 +20,22 @@ static u8 GLBtcWiFiInIQKState;
 u32 GLBtcDbgType[BTC_MSG_MAX];
 static u8 GLBtcDbgBuf[BT_TMP_BUF_SIZE];
 
-struct BTCDBGINFO { /* _btcoexdbginfo */
+struct btcdbginfo { /* _btcoexdbginfo */
 	u8 *info;
 	u32 size; /*  buffer total size */
 	u32 len; /*  now used length */
 };
 
-static struct BTCDBGINFO GLBtcDbgInfo;
+static struct btcdbginfo GLBtcDbgInfo;
 
 #define	BT_Operation(Adapter)						false
 
-static void DBG_BT_INFO_INIT(struct BTCDBGINFO *pinfo, u8 *pbuf, u32 size)
+static void DBG_BT_INFO_INIT(struct btcdbginfo *pinfo, u8 *pbuf, u32 size)
 {
 	if (!pinfo)
 		return;
 
-	memset(pinfo, 0, sizeof(struct BTCDBGINFO));
+	memset(pinfo, 0, sizeof(struct btcdbginfo));
 
 	if (pbuf && size) {
 		pinfo->info = pbuf;
@@ -45,7 +45,7 @@ static void DBG_BT_INFO_INIT(struct BTCDBGINFO *pinfo, u8 *pbuf, u32 size)
 
 void DBG_BT_INFO(u8 *dbgmsg)
 {
-	struct BTCDBGINFO *pinfo;
+	struct btcdbginfo *pinfo;
 	u32 msglen;
 	u8 *pbuf;
 
@@ -1490,7 +1490,7 @@ void hal_btcoex_RecordPwrMode(struct adapter *padapter, u8 *pCmdBuf, u8 cmdLen)
 
 void hal_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
 {
-	struct BTCDBGINFO *pinfo;
+	struct btcdbginfo *pinfo;
 
 
 	pinfo = &GLBtcDbgInfo;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
