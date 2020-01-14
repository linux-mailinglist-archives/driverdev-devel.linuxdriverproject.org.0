Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB7513AB4F
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 14:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32A9E86C03;
	Tue, 14 Jan 2020 13:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5pBgeEngu3w; Tue, 14 Jan 2020 13:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 708B386887;
	Tue, 14 Jan 2020 13:45:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7E031BF873
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C465486A9B
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i29-rfa8Zz7b for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 13:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1FEF486961
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 13:45:05 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p17so13816123wmb.0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 05:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PpKakralIPyvjPHv3rr4wf+iVlH8zSAYqzWrW+Kshes=;
 b=ISQZSrrGkbWtthPuq5EXri0f1KOLLV/BeWZpoy/BykwWcpzPK56O3gTLPt/x3kdZLs
 Wbmm6XzK67LpCPohaORl38IxsJJJ/nPb+qUNbjqVy31UAD1gB1/l5boCQZZJByZJNNPn
 S9XpbLsJvhyYGxD9vyQnp9lob0oc7fOq12dgTgde0h13a1E64MZHNvb/bad/9wHLMcAY
 WcQuG0KMjvXAslqWKEz2qXoLYl5XNukti3RZ1Qn/yjRNfWd02TkwOX/bxopNyqLynUGO
 CFQ1NqNhVAhxPVI0kdx40nBxrUfMD2me1T4+AuqUxKpVvdwljdqqkIzNSC8d/Pi/DZvY
 bEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PpKakralIPyvjPHv3rr4wf+iVlH8zSAYqzWrW+Kshes=;
 b=Qt0tB2rP8ahYmudl2ZwNLGgnE87pHmYv02O27MD69jZMwDRix6V9bQfOCQsRpTVjJv
 9+xPpSbvDwpCYRcKY9a9ClbttdJjgLv/pwO6sNx6mj6MUFlnHwC8SppMGa4r17nrSlwX
 DJW1YgRJSkSSJvlp41rSpu/fYdfXr/Ecs733el4c9sG1nB3c8ryH9ne4qHZanJR9O8uD
 vWQUtzJwXmtVOYgMYwOKBHHycxSnMcFSdML8rWLS1WX8HrjNAW+yWmihvcABZySsMHx1
 uzyg2BpS3/+7hDMl3KGbNWeaL3KN2RgqDTXV/l1xaKMKGWxwEg6Da/NOsEJwutcUkDeN
 hYKw==
X-Gm-Message-State: APjAAAXlTQI7G1qR80vrcUnASvH0gBTQZoi9FuDMBD+ZDaFUdxQH77A6
 5lMbB/lWhNIDtThO3O2og4k=
X-Google-Smtp-Source: APXvYqzXJi1OywHPvz/UMGQbpSIhXCL7uUUems5xyXTvK/MdRQDk1mu/9KgoWuVT+ivz4zR2MUon5w==
X-Received: by 2002:a1c:f008:: with SMTP id a8mr26781571wmb.81.1579009503329; 
 Tue, 14 Jan 2020 05:45:03 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-164.088.070.pools.vodafone-ip.de. [88.70.28.164])
 by smtp.gmail.com with ESMTPSA id x10sm19361333wrp.58.2020.01.14.05.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:45:02 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: rtl8188eu: refactor
 rtw_hal_antdiv_before_linked()
Date: Tue, 14 Jan 2020 14:44:18 +0100
Message-Id: <20200114134422.13598-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
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

Refactor rtw_hal_antdiv_before_linked() to clear checkpatch warnings.

WARNING: line over 80 characters
WARNING: else is not generally useful after a break or return

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 545d6a6102f1..0aa5e9346787 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -197,15 +197,16 @@ u8 rtw_hal_antdiv_before_linked(struct adapter *Adapter)
 	if (check_fwstate(pmlmepriv, _FW_LINKED))
 		return false;
 
-	if (dm_swat_tbl->SWAS_NoLink_State == 0) {
-		/* switch channel */
-		dm_swat_tbl->SWAS_NoLink_State = 1;
-		dm_swat_tbl->CurAntenna = (dm_swat_tbl->CurAntenna == Antenna_A) ? Antenna_B : Antenna_A;
-
-		rtw_antenna_select_cmd(Adapter, dm_swat_tbl->CurAntenna, false);
-		return true;
-	} else {
+	if (dm_swat_tbl->SWAS_NoLink_State != 0) {
 		dm_swat_tbl->SWAS_NoLink_State = 0;
 		return false;
 	}
+
+	/* switch channel */
+	dm_swat_tbl->SWAS_NoLink_State = 1;
+	dm_swat_tbl->CurAntenna = (dm_swat_tbl->CurAntenna == Antenna_A) ?
+				  Antenna_B : Antenna_A;
+
+	rtw_antenna_select_cmd(Adapter, dm_swat_tbl->CurAntenna, false);
+	return true;
 }
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
