Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD8B19EAB8
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 13:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6BDE82050D;
	Sun,  5 Apr 2020 11:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnRLdtnSfEyc; Sun,  5 Apr 2020 11:24:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A79A720334;
	Sun,  5 Apr 2020 11:24:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC26F1BF3F6
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 11:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C882C84E8C
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 11:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYJ9CYq7GbsS for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 11:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F387684E88
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 11:24:13 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c195so5671710wme.1
 for <devel@driverdev.osuosl.org>; Sun, 05 Apr 2020 04:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+SXrfjedrBYDlYytIqTbgN8ZqV8Q1N0fqqOl62QOS4Y=;
 b=toTm0ALbeEoKhLTH3MjSXrfmu+PMNqosEk7uOGmgAQstwGDY6LJpSZmpNrEiyyYSkL
 YGs+3evi0ON75+9vuRhTdbQvpUp8pxv2ENfg3X4V0oJg8VIweg52W3InQPMEG8e0I45o
 bA9zzI+cRL8+NGJVL41uO2oDM6+eTWp/UamDGDMp93VH4nMnk52cYX6QdIlQmqdkyKjb
 qoaHmdPb/D1vl6IgENO3LV/qxgTyaxZhWTwp50wcxGDwqRMPB8YW9Xecw36CUpOhff+s
 HGujmeHaDp9I7McqLyUgy6wupcCFhqfkOuFRftV6efAEypwP5pYOzXMceG0BZ13g7gvY
 mTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+SXrfjedrBYDlYytIqTbgN8ZqV8Q1N0fqqOl62QOS4Y=;
 b=YSoEB611Du8lhd6mUJywiStVRKxSiQpNdt1Ul0T2tvueokTOvSk7XPsT58QoaYoUkV
 CRuLrXslyNwpZbbPhYEY2srp1sGFU8osgNyiRgiWkg3XGt21WWKd/BdeVB3wPritZQlF
 Zx+mc3GvbjRo074EX4ziLYBo3caphQclCZOoWPRo+eKRQLLvQTb06jZyo2nP0T8GShdv
 StwNNf3VTM4UXc/HmH1UVPSkLp0Umd2Le9sXzEBN9ViSH4+5MV8etsmD+R1T69+ngKsQ
 LnuRkUKQzWQFEajWC1O7SNlprYpC+LbDEnCREf0skmmCoHuVUCmTFDG2cFx7HL7u5qlx
 ypKg==
X-Gm-Message-State: AGi0PubFmFI9dfq9aQtiAD3BkaZMZISHikRogtnCXQ3QkkPRfObQgg0V
 uOu/N+DM77BERJEH/lAGyZE=
X-Google-Smtp-Source: APiQypK6AC/PctIX6tMyVU4FpT2zQjW+xLA6DSL/lKKxnGpzVZz8EIZ8mONdHmfyV5warNb46JCNFQ==
X-Received: by 2002:a05:600c:2106:: with SMTP id
 u6mr18681932wml.161.1586085852274; 
 Sun, 05 Apr 2020 04:24:12 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-158.002.204.pools.vodafone-ip.de. [2.204.143.158])
 by smtp.gmail.com with ESMTPSA id b15sm20365012wru.70.2020.04.05.04.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 04:24:11 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: remove unnecessary asignment
Date: Sun,  5 Apr 2020 13:22:29 +0200
Message-Id: <20200405112230.31975-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
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

Remove unnecessary asignment in SwLedBlink1(). The code path with the
asignment 'pLed->BlinkTimes = 0' is only executed when
'pLed->BlinkTimes' is already zero and the value is not changed between
the test 'if (pLed->BlinkTimes == 0)' and the asignment.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_led.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index d1406cc99768..91b0029d1179 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -188,7 +188,6 @@ static void SwLedBlink1(struct LED_871x *pLed)
 					  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
 				RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
 			}
-			pLed->BlinkTimes = 0;
 			pLed->bLedBlinkInProgress = false;
 		} else {
 			if (pLed->bLedOn)
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
