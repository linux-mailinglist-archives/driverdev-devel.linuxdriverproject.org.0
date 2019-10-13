Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFC1D5799
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 21:10:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6CCA86940;
	Sun, 13 Oct 2019 19:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vP1HxRciQeDh; Sun, 13 Oct 2019 19:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD6738669E;
	Sun, 13 Oct 2019 19:10:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 687061BF2F6
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 19:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C62C8669E
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 19:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcV544q1I+Aa for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 19:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A559A846D3
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 19:10:46 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i32so8766124pgl.10
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 12:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
 b=Rnt3TaLC3t5HfsHxd7aOpUWt1ltyyk0x1kQ4RXg7fRL316JzXDZRbp2fDirHoNbT+p
 TkG0KrYAXKYZNnszzkD7/wFIkEvaGtbd6sfhQ9e1SXbZgrRjSeI1ZAOdRbbwp9vIhfgU
 iCEGzzxe/taIIbL0bD56GdvxKmVDDlcE1Vnjet4RvBSzT7GlQ3a+GswEBA7O057MD433
 sZzmLWGxZq9bfq5CEi4K3+GMVHY/tdb7BA11kXrydINEflM9jUm+rQRyrwdTux7LKIgh
 h/gqD6dw+6LHAe+ajJrvsqNJBYbke0Zs0T56BFwmnZGs7Hz0ldSo7y/uJhwQpGC8aFmR
 0o5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
 b=fCyanSsT+UKM7+oHsFKAWoYhcffeWxnfx+90xThd8LpA043OG6oHeOz67LuVmlGEHb
 RZo0hn5wlgxXQ8kfKBkf6V8UZBgGS2N9m9tOYtMl8YXA2KjiSYcWHEYW25Pz7D+2VRyo
 AZaKczQ0bc0/X319qOzxyznZRw5aJU/ajwuzPG0LqLzh3+x5plZcBufcogdTuQQV8iNx
 Wot/HdoYAU/3Asr/9ndUP6q4+kiSs7R/+ke2wxylwhNuy8aPbFWUn3V6tSNasdOs4j+c
 GaGPQsyORlCCfvczLOT8oAV4H9mj8ev33TaKSQsUImQWS85kS920qmPvlHB3k2v3+N6x
 uERA==
X-Gm-Message-State: APjAAAUpIImVUvFdhGlV0WV0W31anLnys+HrEdk6785JuOBmDR9P7Iev
 DIWOK1IdGYUcS2ll0U1n+7M=
X-Google-Smtp-Source: APXvYqxQzbjm7g/LJpdZWfeo4Uaggr8/CzxmLN7hdm1fYG9ceaKdu+4kP3AREI2KrAAK0x40piPAqg==
X-Received: by 2002:a17:90a:bc41:: with SMTP id
 t1mr31936123pjv.67.1570993846203; 
 Sun, 13 Oct 2019 12:10:46 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id m5sm15261216pgt.15.2019.10.13.12.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 12:10:45 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 22:10:27 +0300
Message-Id: <20191013191027.6470-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
to improve readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
Changes in v2:
  - Remove comment that explained previously used calculation.
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 87535a4c2e14..22931ab3a5fc 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4156,9 +4156,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 				break;
 			}
 
-			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
-			/*  is getting the upper integer. */
-			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
+			usNavUpper = DIV_ROUND_UP(usNavUpper,
+						  HAL_NAV_UPPER_UNIT_8723B);
 			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
 		}
 		break;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
