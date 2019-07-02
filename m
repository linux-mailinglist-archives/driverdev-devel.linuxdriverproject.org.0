Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544F15C9BA
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0367A8782E;
	Tue,  2 Jul 2019 07:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SDOlJNjVD50U; Tue,  2 Jul 2019 07:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CF048707A;
	Tue,  2 Jul 2019 07:02:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 776561BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68B8A85F09
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LG8huetz5RHi for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:02:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7ACA85E7C
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:02:03 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g15so5316210pgi.4
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uGuA2PgUYffCMacAV6wy+JtINZ1OOIQolFITpUABx5w=;
 b=C6nXI+roYTHFTfFmt7wSx/fAjLi9t8qbNSn6cbp6UtN9dDqydu4jVg0QNe8alwXiAO
 q7801aib3ugnL137b/jVcDF4hcr/j0tkd03M7EcYNf2gFbKSbaLzzolZ/DYthbYgRvi3
 5MOD++Tq9m8+GyOE4nVPf0ZpmkErHNR9FoisRuPWmhZlBiGtUkVAyvvTsIiqQU8WY+9T
 TC6qxTHsr72YFy2ZAYq90Y759vr6FUUAOqMEsk9MqQL+KZMrkzGph3oMdPs7K/sG3OaR
 9GaXHiMkc6JbQ8/h68gl44y/NJxRHIL8WVzMjUI5l4EUd+M6BPJtbf86HxIOh8HfZc4B
 9T7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uGuA2PgUYffCMacAV6wy+JtINZ1OOIQolFITpUABx5w=;
 b=SWRrDMBPP/cfqAx4agvardGWNyeuHUW6aSbJ3ot2SfxCkHlIkt47N4zEZ/PnAG/SYX
 lolwo2d2Q0YcwQMrcGzfnb5uGtBCZMRwvbaDWDOScFsR+9UpZn77abF8pKYcP5fyGDA1
 LoyL4M84iPP69wl+h0Eyh+XOIBn76N4t/S1mZe9NF54mVjxe842QYFf8peOl8lNhKmkb
 UY/iMgc55KqjB+uUIBvUhjK3k3ErP+wTq9WDLvCFZl8T7B4uVRAoujj85kTbmekkA8jM
 a3nh6Z4coB1YRW0LkVBLipLzW5J+3FnRWMjEiaKbO5CUBZP3JFMFUgdizkjy1zkhAcqG
 bsZQ==
X-Gm-Message-State: APjAAAV66nNdiWQsx9/6uZSp6eiopua4Hg7fAUHVlCzFJ/GPo5fvGoi+
 osaSfTBPrkQQsZXquYfUU1o=
X-Google-Smtp-Source: APXvYqyeuvfLqdLu4GibgfGjqxbSVIwrf8Tpve/T2jZZg0uEPwQcp1oqb3U+EFT53VsLwc1G7SAyEg==
X-Received: by 2002:a63:b547:: with SMTP id u7mr29938046pgo.322.1562050923574; 
 Tue, 02 Jul 2019 00:02:03 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.02.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:02:03 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 9/9] staging: rtl8723bs: Change return type of
 hal_btcoex_IsBtDisabled()
Date: Tue,  2 Jul 2019 12:31:32 +0530
Message-Id: <20190702070132.6997-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190702070132.6997-1-nishkadg.linux@gmail.com>
References: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Change return type of hal_btcoex_IsBtDisabled from u8 to bool as the
only possible return values are true and false.
Where needed, modify accordingly the type of the variables used to store
this return value.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c     | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    | 2 +-
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 0c2a7543c72a..9fcf387916c4 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1347,7 +1347,7 @@ u8 hal_btcoex_IsBtExist(struct adapter *padapter)
 	return pHalData->bt_coexist.bBtExist;
 }
 
-u8 hal_btcoex_IsBtDisabled(struct adapter *padapter)
+bool hal_btcoex_IsBtDisabled(struct adapter *padapter)
 {
 	if (!hal_btcoex_IsBtExist(padapter))
 		return true;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 939cb3e6b009..c514cb735afd 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -173,7 +173,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 	if (hw_init_completed == true) {
 		u8 bLinked = false;
 		u8 bsta_state = false;
-		u8 bBtDisabled = true;
+		bool bBtDisabled = true;
 
 		if (rtw_linked_check(Adapter)) {
 			bLinked = true;
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index 10f44ed72c0a..6f7514be998f 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -23,7 +23,7 @@ void DBG_BT_INFO(u8 *dbgmsg);
 
 void hal_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist);
 u8 hal_btcoex_IsBtExist(struct adapter *padapter);
-u8 hal_btcoex_IsBtDisabled(struct adapter *);
+bool hal_btcoex_IsBtDisabled(struct adapter *);
 void hal_btcoex_SetChipType(struct adapter *padapter, u8 chipType);
 void hal_btcoex_SetPgAntNum(struct adapter *padapter, u8 antNum);
 void hal_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
