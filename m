Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E410B31E7D0
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 10:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6132A872E9;
	Thu, 18 Feb 2021 09:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnHrGLN3K4oc; Thu, 18 Feb 2021 09:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D192A872E3;
	Thu, 18 Feb 2021 09:22:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B61861BF3C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98838605F3
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TBfsNILygfhZ for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 09:22:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4DB9F60633; Thu, 18 Feb 2021 09:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78227605D9
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:22:06 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id l12so2115765wry.2
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 01:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=aX/bNkP4QxZHef1wuHRDIoy68LBSmgsRibOTvBGlINE=;
 b=L/BnypvL9THTX0KZhWTKp4IRSirvi3m9JYun8pmwvSx5NanvrZGCKkO2GgYl72+gxa
 DiNhDkBL8T/SjEY04j6sQLadVgDP0Mq2OBPOnM9IRgMFIoArFaBIn5Qfq5nw4ykgE5Ni
 KekQbblqaBPL2wDGurzqESlaZmwNYDWOjJTNyH44K5xoOqnn6ft5Xx+kLXXDaWLWwPyz
 CunSyQ8AR1c8IoYMv0qt1DzoChFOGivNiLglQDIuejceG8rD1lMSIS13lT6B4BwuU9Q0
 SyoI8QduWu5GRmnqK6NoWZQeNlIxPnMg8kDzYAnizR1dupxSvoZsmYq87R9UfpV9ZvU7
 J9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=aX/bNkP4QxZHef1wuHRDIoy68LBSmgsRibOTvBGlINE=;
 b=WetyreUSSyP2iBG3Z3V9UVHCnPwU/GtWaqK763gHCF0R4tCoKUcq8ZC5YsAVtpr6Lk
 uq6kAlNK5Ra6LquRzzPDZbW1ag8qPM8mKgfrBTwZu2wL+KpkTqL4w4q5s5rOubnHBjsg
 AT66w0kDMWXiSQL9n3uxNVmHUCvYYCpXR4JFZBUh0EPgHF6XT1EpWmI9lgMG8xad1scA
 eLdqqu3SSIgvBhQYQ8Kn9VVCYVxVXb6D0wwYFn8o55iv7I+FGrk0omJKyqJ3jOw43yHs
 B7fXqhDLD4p4e5XDRgsOlLyIdgeA4fDRb9DIFnKm4AF71m1CfuRXKKutHwwjJOzTs8RI
 PSfw==
X-Gm-Message-State: AOAM5305BAKiaH9eblJ/CE3Yaw+yHS2mU793k9Gt6xJbwBpMfUMFgtrs
 2ODcD8q+TTe9BC/pf5DNpj4=
X-Google-Smtp-Source: ABdhPJyj8xpNiVfMb6N+d/9wb4Lie3ISntTThXTyfS83PoFBVobPxqzSTgA6VylA1dXI12GMLi8w1Q==
X-Received: by 2002:a5d:5149:: with SMTP id u9mr3401833wrt.348.1613640124563; 
 Thu, 18 Feb 2021 01:22:04 -0800 (PST)
Received: from LEGION ([27.255.58.138])
 by smtp.gmail.com with ESMTPSA id a9sm7697402wrn.60.2021.02.18.01.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 01:22:03 -0800 (PST)
Date: Thu, 18 Feb 2021 14:21:54 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org,
 johannes@sipsolutions.net, arnd@arndb.de, kuba@kernel.org,
 gustavoars@kernel.org, wanghai38@huawei.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wimax/i2400m: don't change the endianness of one
 byte variable
Message-ID: <20210218092154.GA46388@LEGION>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It is wrong to change the endianness of a variable which has just one
byte size.

Sparse warnings fixed:
drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
drivers/staging//wimax/i2400m/op-rfkill.c:159:14: warning: cast to restricted __le32
drivers/staging//wimax/i2400m/op-rfkill.c:160:14: warning: cast to restricted __le32

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
 drivers/staging/wimax/i2400m/control.c   | 4 ++--
 drivers/staging/wimax/i2400m/op-rfkill.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/control.c b/drivers/staging/wimax/i2400m/control.c
index 1e270b2101e8..b6b2788af162 100644
--- a/drivers/staging/wimax/i2400m/control.c
+++ b/drivers/staging/wimax/i2400m/control.c
@@ -452,8 +452,8 @@ void i2400m_report_state_parse_tlv(struct i2400m *i2400m,
 		d_printf(2, dev, "%s: RF status TLV "
 			 "found (0x%04x), sw 0x%02x hw 0x%02x\n",
 			 tag, I2400M_TLV_RF_STATUS,
-			 le32_to_cpu(rfss->sw_rf_switch),
-			 le32_to_cpu(rfss->hw_rf_switch));
+			 rfss->sw_rf_switch,
+			 rfss->hw_rf_switch);
 		i2400m_report_tlv_rf_switches_status(i2400m, rfss);
 	}
 	if (0 == i2400m_tlv_match(tlv, I2400M_TLV_MEDIA_STATUS, sizeof(*ms))) {
diff --git a/drivers/staging/wimax/i2400m/op-rfkill.c b/drivers/staging/wimax/i2400m/op-rfkill.c
index fbddf2e18c14..a159808f0ec2 100644
--- a/drivers/staging/wimax/i2400m/op-rfkill.c
+++ b/drivers/staging/wimax/i2400m/op-rfkill.c
@@ -156,8 +156,8 @@ void i2400m_report_tlv_rf_switches_status(
 	enum i2400m_rf_switch_status hw, sw;
 	enum wimax_st wimax_state;
 
-	sw = le32_to_cpu(rfss->sw_rf_switch);
-	hw = le32_to_cpu(rfss->hw_rf_switch);
+	sw = rfss->sw_rf_switch;
+	hw = rfss->hw_rf_switch;
 
 	d_fnstart(3, dev, "(i2400m %p rfss %p [hw %u sw %u])\n",
 		  i2400m, rfss, hw, sw);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
