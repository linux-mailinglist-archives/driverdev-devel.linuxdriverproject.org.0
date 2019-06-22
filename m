Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C774F66D
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 17:15:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23AE98768C;
	Sat, 22 Jun 2019 15:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HPTY3s5VszES; Sat, 22 Jun 2019 15:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D17DA875DC;
	Sat, 22 Jun 2019 15:15:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2B7B1BF301
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF8E087A2F
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbLNRAW6xQj1 for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 15:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 170A787924
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 15:14:59 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k11so9368144wrl.1
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 08:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GfBi8EfFM0kdy6LN/pUSdo1EwlShROfv4a9we6saYeo=;
 b=X0sidvWUWWQqRq0eSjJL99cNcG56y3R9742cvNj5qWJl6QdEDtLUBPOtYWw02i3i19
 NBiupLMrC/Kn0RZJmheBZ2UmdGfwbMLPQ2VVhsiLW/XZAtOqYBGyxTvGAJ7Od7KhJeqH
 jcDGcWJf1sw8Z9SqiSDb1bbS1ZoYKQfZ0X+bDfJ15zBofdWbCoKFyL5Gbn/S1p+cc9g5
 6lucuUvjEGcpZ1XZS36PN+DqaCGFcE60ZLfJeicoGtf9UIZq05MUWS0mE59P22Xstgnu
 ShedeaUFMvxgyRXOF2PwxNIp7rGGAX+kBcJGOQ/hTvZk8k3q98CBsxb4BcUwlHSSB1Us
 sS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GfBi8EfFM0kdy6LN/pUSdo1EwlShROfv4a9we6saYeo=;
 b=JoOyMqLbG1azwptiVL1442S2duvRaWunnrgSmLLcMy3/db8bwyT+W1hvBm5DuDH/1v
 DdAqkyh8JfFhDwFA+maMOmDB3pGmtihH+BR6bFuG1+CqmMfEiivxSn5vmHOAcDgjTR3m
 djh1qXN1IcLse5iTVriAd0FduYRTTA5wvBv3HxoXoYLjRzYq2ELL1XtAOzKloBRW6mEW
 6b71My2SmofPrgtpe3WS9/QYOtnbYZtxOZ8WBQni1tHOud6S5d6bkpFaQgneR2SoMEeT
 J0qVr6AdoiOKxowBJxLZHsatbf0pg2l5KH+Fy1pvW4XlLzz9dw+fQnWYz5WKZxXzJQEo
 zh+w==
X-Gm-Message-State: APjAAAWXRZad2qcmlKT0n35LNHQ7i/0rFEKfmyjBIK3n/IUcj6d0HTha
 aBJX7V3HncQiiXErw4CBe2E=
X-Google-Smtp-Source: APXvYqwTD9bh2HXTD+nm7yp3Im0xb+/Nc4c+Wkr0M5w5PgHnM0k/EqVCFiybiLEgRoql9EQ04KOvCw==
X-Received: by 2002:a05:6000:11cc:: with SMTP id
 i12mr3600173wrx.243.1561216497768; 
 Sat, 22 Jun 2019 08:14:57 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id o126sm7099847wmo.1.2019.06.22.08.14.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 22 Jun 2019 08:14:57 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: remove hal_init_macaddr()
Date: Sat, 22 Jun 2019 17:14:49 +0200
Message-Id: <20190622151449.32095-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190622151449.32095-1-straube.linux@gmail.com>
References: <20190622151449.32095-1-straube.linux@gmail.com>
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

Function hal_init_macaddr() just calls rtw_hal_set_hwreg().
Use rtw_hal_set_hwreg() directly and remove hal_init_macaddr().

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/hal_com.c     | 6 ------
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 3 ++-
 drivers/staging/rtl8188eu/include/hal_com.h | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal_com.c b/drivers/staging/rtl8188eu/hal/hal_com.c
index ff481fbd074c..95f1b1431373 100644
--- a/drivers/staging/rtl8188eu/hal/hal_com.c
+++ b/drivers/staging/rtl8188eu/hal/hal_com.c
@@ -283,9 +283,3 @@ bool hal_mapping_out_pipe(struct adapter *adapter, u8 numoutpipe)
 	}
 	return result;
 }
-
-void hal_init_macaddr(struct adapter *adapter)
-{
-	rtw_hal_set_hwreg(adapter, HW_VAR_MAC_ADDR,
-			  adapter->eeprompriv.mac_addr);
-}
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 69008accb015..ac5552050752 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -746,7 +746,8 @@ u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	_InitDriverInfoSize(Adapter, DRVINFO_SZ);
 
 	_InitInterrupt(Adapter);
-	hal_init_macaddr(Adapter);/* set mac_address */
+	rtw_hal_set_hwreg(Adapter, HW_VAR_MAC_ADDR,
+			  Adapter->eeprompriv.mac_addr);
 	_InitNetworkType(Adapter);/* set msr */
 	_InitWMACSetting(Adapter);
 	_InitAdaptiveCtrl(Adapter);
diff --git a/drivers/staging/rtl8188eu/include/hal_com.h b/drivers/staging/rtl8188eu/include/hal_com.h
index 2f7bdade40a5..93cbbe7ba1fd 100644
--- a/drivers/staging/rtl8188eu/include/hal_com.h
+++ b/drivers/staging/rtl8188eu/include/hal_com.h
@@ -148,5 +148,4 @@ void hal_set_brate_cfg(u8 *brates, u16 *rate_cfg);
 
 bool hal_mapping_out_pipe(struct adapter *adapter, u8 numoutpipe);
 
-void hal_init_macaddr(struct adapter *adapter);
 #endif /* __HAL_COMMON_H__ */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
