Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D287744E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1ED6E86C59;
	Thu, 25 Jul 2019 05:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wIeAd6WC+iDO; Thu, 25 Jul 2019 05:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F03A86C24;
	Thu, 25 Jul 2019 05:27:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE2701BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB14C86151
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44dKcuZ5q_eN for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D68F8614A
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:08 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q10so22104370pff.9
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pg2P3F4gQPvPtwnZW3W/Xj3k78NE1JAIvb1d322aYpY=;
 b=JIdUsTkjXpYM5K8JaMWKtOkKg0TD9EdYbcDa2LY6tzbLXt0yN9L/vpJK+Z93dUX+j3
 yRZMAJfOLTrkV78WdQrfbAkO8Q0C9toGede6/ZXFVyBjYb+76CN9jhJSNDMNf5XPTMEM
 XEhNmL6EK35FCdBZ1rel8Ib2vlyN3tySDbJ5o22V28d/LU/Os2bmFZW16Y8iY0b3FiX3
 mMT7r12l+vL0zKVhr/++EYC7QWJYVud887ffvI8rWKaRNtQZt9w+r/0vnWBAOg25sVNa
 6g7jbREFxYcEpOjBPrtpXRSIYtNv4ItRkMCmSsb6Zk6RkFpWXmfpryzAURMDbTlfym1B
 cRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pg2P3F4gQPvPtwnZW3W/Xj3k78NE1JAIvb1d322aYpY=;
 b=fcoP3I/vCRuA8FRubfWdYJa6/n7btTMUdPpYGgOwTckU1Pmx6Yx1JT1FAAZVlmK3LQ
 lh+TS0Hm/6UQcvT7ngPjF/kvDR/GS2a6bu+hoWbOxUdtkdrK75PNriZsEmAGhYk6pV/w
 6ouSFEYcLDkRabssEDBIN6VldD5zrXu6MS4IQIF0crikxX76fVeFhIdJzf5dM5gXUoko
 CqWRILtpupzjxhrNctjc5SGMkm0gR+19mI2GlWxsVlYrdgZQo1wc9nhKDAbmz1hJoWQh
 GIrQ9wBtT7NCvWMwNOB9wk2R4elUyrskK9pDrr68s7TcwVGxIWtunv8gMz2yT1iddm9h
 h0kQ==
X-Gm-Message-State: APjAAAVnhXNL620wbTbCNl0mm0ZNSdD6gQ3bG/pgogccOKdxlxpFpu/L
 rz6nkPg/sugNGXO1zYGlhtI=
X-Google-Smtp-Source: APXvYqyRRE9J4TkgBjJNeQQ71EJxY3aTebVQruLols/3eAwljF9W1NaZxGZijDRSI90HUguw6qclbw==
X-Received: by 2002:a17:90a:dac3:: with SMTP id
 g3mr90728186pjx.45.1564032428089; 
 Wed, 24 Jul 2019 22:27:08 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:07 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 5/9] staging: rtl8723bs: hal: Replace function
 rtl8723b_set_ap_wowlan_cmd()
Date: Thu, 25 Jul 2019 10:56:41 +0530
Message-Id: <20190725052645.2372-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190725052645.2372-1-nishkadg.linux@gmail.com>
References: <20190725052645.2372-1-nishkadg.linux@gmail.com>
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

Remove function rtl8723b_set_ap_wowlan_cmd as all it does is call
rtl8723b_set_AP_FwWoWlanRelated_cmd.
Rename rtl8723b_set_AP_FwWoWlanRelated_cmd to
rtl8723b_set_ap_wowlan_cmd to maintain compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 0f2767c0454c..79c1e3edb189 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1393,7 +1393,7 @@ static void rtl8723b_set_Fw_AP_Offload_Cmd(struct adapter *padapter, u8 bFuncEn)
 			H2C_AP_OFFLOAD_LEN, u1H2CAPOffloadCtrlParm);
 }
 
-static void rtl8723b_set_AP_FwWoWlan_cmd(struct adapter *padapter, u8 enable)
+void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
 {
 	DBG_871X_LEVEL(_drv_always_, "+%s()+: enable =%d\n", __func__, enable);
 	if (enable) {
@@ -1408,11 +1408,6 @@ static void rtl8723b_set_AP_FwWoWlan_cmd(struct adapter *padapter, u8 enable)
 	DBG_871X_LEVEL(_drv_always_, "-%s()-\n", __func__);
 	return ;
 }
-
-void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
-{
-	rtl8723b_set_AP_FwWoWlan_cmd(padapter, enable);
-}
 #endif /* CONFIG_AP_WOWLAN */
 
 /*  */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
