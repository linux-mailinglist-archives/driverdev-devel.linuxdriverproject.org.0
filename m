Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79260182C92
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:38:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7970F89380;
	Thu, 12 Mar 2020 09:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNwTF1MpM+Cx; Thu, 12 Mar 2020 09:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E47989357;
	Thu, 12 Mar 2020 09:38:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A60B1BF4E6
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 09:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1DD14221B5
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 09:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6HYNUM7JyzF for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:38:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 53765203FC
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 09:38:19 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x11so1724125wrv.5
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 02:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FNf46Ec3CGDhnh1BuF3u+Qyby4M6Nu5elgafH8NKV8g=;
 b=f3WKXcxJo/wGVRvm9GX2aaNkRmWHQwjwtZSW7CeW5WesDiLBvCOHVW1itHGIhADdHR
 eM8YnJ6GWCmI5TwVPsm3LnjhHtFILX0WWLlkbJqT4hGv2EQ08iH/D9ST1T9i41gDSqrl
 ghsjYoyk18uGo6QoWQTAqysFfPDzIdgZZ2eMbNmAkh+3pHIWtH591AsqHFymXE4CBVHQ
 Gx4y7Ko3z/QdK4LrJdlp2heN3bXBFjyt/CodeTjqMbyxRkqYXVj3mb0NQLKe8NAN1GMG
 uX42hcIq8ih2k5sJdNsaboUnKyEINVuxhPK46p8O9nRQLmhGOwELRKKXwJmEIu1r1Pc7
 gb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FNf46Ec3CGDhnh1BuF3u+Qyby4M6Nu5elgafH8NKV8g=;
 b=UO1l3kseHvbtx/jGDyF8lnV3MGwhptkkd3IvTrvS553h+uIgY55rBFssawVC9YI6qX
 Rc7pBIEJDWwVzyf47tRXeYu7ajkpWsnO42xintxUUb8gBMbLZ1GWBzorxCN04lR6V9z6
 21dK3/peMFXblZHUDbfClC+dYgF7f5SbmCpF2QF5Y5sVUoVrPgRwte9Pbjw9fuC5Dc11
 hxSTHHMHOhjORSdYMSk7OsC/bpcai5OV5SLRKviJnoWSHBFP+5RiOhrvgVtxERiCk+00
 x66d8vyKCiVGGNaw2GeFzS3pT4RI3grIO2Lk2bu5MmTofFgegEIKD7Xa8lxlZ+5i9Wv/
 tckA==
X-Gm-Message-State: ANhLgQ3uJbqwkgSFxSOh5jlUvVQ8JqMYQdXNng7vHB7V4fjkF22w4WkH
 0L+awE101zdhH83ams3N1eQ=
X-Google-Smtp-Source: ADFU+vsJ0GbL9PBJ20GqoLCmqR5b3y/HtGxsx+wtqTrK3uQv+nfPVq6W8Rvs6rqcVzmrAcYoLTC6CA==
X-Received: by 2002:adf:b3d6:: with SMTP id x22mr9798658wrd.242.1584005897585; 
 Thu, 12 Mar 2020 02:38:17 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-224.178.006.pools.vodafone-ip.de. [178.6.252.224])
 by smtp.gmail.com with ESMTPSA id x16sm8670126wrg.44.2020.03.12.02.38.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 02:38:17 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: Add device id for MERCUSYS MW150US v2
Date: Thu, 12 Mar 2020 10:36:52 +0100
Message-Id: <20200312093652.13918-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
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

This device was added to the stand-alone driver on github.
Add it to the staging driver as well.

Link: https://github.com/lwfinger/rtl8188eu/commit/2141f244c3e7
Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index b5d42f411dd8..845c8817281c 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -38,6 +38,7 @@ static const struct usb_device_id rtw_usb_id_tbl[] = {
 	{USB_DEVICE(0x2001, 0x331B)}, /* D-Link DWA-121 rev B1 */
 	{USB_DEVICE(0x2357, 0x010c)}, /* TP-Link TL-WN722N v2 */
 	{USB_DEVICE(0x2357, 0x0111)}, /* TP-Link TL-WN727N v5.21 */
+	{USB_DEVICE(0x2C4E, 0x0102)}, /* MERCUSYS MW150US v2 */
 	{USB_DEVICE(0x0df6, 0x0076)}, /* Sitecom N150 v2 */
 	{USB_DEVICE(USB_VENDER_ID_REALTEK, 0xffef)}, /* Rosewill RNX-N150NUB */
 	{}	/* Terminating entry */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
