Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E86E12BDCE
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Dec 2019 15:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29DF586B2C;
	Sat, 28 Dec 2019 14:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5uybQdWocEr; Sat, 28 Dec 2019 14:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8027E86258;
	Sat, 28 Dec 2019 14:37:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6B771BF3A9
 for <devel@linuxdriverproject.org>; Sat, 28 Dec 2019 14:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A2BC72012F
 for <devel@linuxdriverproject.org>; Sat, 28 Dec 2019 14:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gFrNeNDRJ7py for <devel@linuxdriverproject.org>;
 Sat, 28 Dec 2019 14:37:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id A74961FD90
 for <devel@driverdev.osuosl.org>; Sat, 28 Dec 2019 14:37:52 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z3so28698766wru.3
 for <devel@driverdev.osuosl.org>; Sat, 28 Dec 2019 06:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pyGdJRwo6Y5rfYRQzWh9hhmSSSQyZwjpG1KsAjDx5is=;
 b=PXzvdD90skNwJyFrE38+JpzWwSgFh+hrdjustCqzWFCtP0ARlY3ABJ4ENx2cclJUlU
 ev71nYK+nejEJ9Yp/xn7Hgki5Y17JrlqtZVy1mpN8r5dBH+DTydqkbp7YLNlFAj3FB39
 JAuFzNomus3czQFTIIMv3K/Z2g0BFSuPhFX2Bq8ajxlmMXVZp2m+u0lrB7zgWrgkVjwg
 CXeM7BD4E9Z8z+gS175fwPKEMoE45ZpFz1eHt2KBcRUXUkfzleFoSd/Oi39qrQQfz2r2
 AoY9Ay+KQoevv1nmgsHbUcc/9CMiwFxv0OTYaZGTKu8afWw6K2k5FYCo9tioRuvEXiUa
 y/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pyGdJRwo6Y5rfYRQzWh9hhmSSSQyZwjpG1KsAjDx5is=;
 b=HAW2DCS7Xp9d+B6uHPU4M7kZpfKncYnJ3RS07TBJJ9rs6j81SWqfUGg1guwzo4VUM6
 /SXn19mp3PQPDo39STKU5dBhnsavPEyJ800RHbxKc0TrQivTAd4XuHo0hVhsTm3JpNKk
 AHZXjJ0nwv2FXpRFZI544wm+OgVRUTij0DPd9ut+q08pxcRhybQ/DRpJYbXXQDqmpPzp
 jly0kcGTur6RN1SuzXTLW9FtDc2ZM0JX6T8CDCdeMlHk/+BN1c7skd2q/cLbvtvq8wod
 NHjiQyu+zF48GTN1fJ7zjETqaBtB/uRhubClKS1qtxqYTkFtoWYmNlX/3umr5jLP8h4P
 mYVg==
X-Gm-Message-State: APjAAAWfXX5NKBHxlDoGnjER03c9Da2XJyfbtHheYJrmVlVfWszu3Y7X
 0OVuM8wEjg9evXZFF+k2iX0=
X-Google-Smtp-Source: APXvYqxSqUH0DLFp50ljpmbSMRDYQPOR6MXzvuaJATmfZGd69U33SELNkjs8i7PpsG53EyT5Pde5XQ==
X-Received: by 2002:adf:806e:: with SMTP id 101mr58779002wrk.300.1577543870961; 
 Sat, 28 Dec 2019 06:37:50 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-178.088.070.pools.vodafone-ip.de. [88.70.28.178])
 by smtp.gmail.com with ESMTPSA id u1sm14308940wmc.5.2019.12.28.06.37.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 06:37:49 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: Add device code for TP-Link TL-WN727N
 v5.21
Date: Sat, 28 Dec 2019 15:37:25 +0100
Message-Id: <20191228143725.24455-1-straube.linux@gmail.com>
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

This device was added to the stand-alone driver on github.
Add it to the staging driver as well.

Link: https://github.com/lwfinger/rtl8188eu/commit/b9b537aa25a8
Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index a7cac0719b8b..b5d42f411dd8 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -37,6 +37,7 @@ static const struct usb_device_id rtw_usb_id_tbl[] = {
 	{USB_DEVICE(0x2001, 0x3311)}, /* DLink GO-USB-N150 REV B1 */
 	{USB_DEVICE(0x2001, 0x331B)}, /* D-Link DWA-121 rev B1 */
 	{USB_DEVICE(0x2357, 0x010c)}, /* TP-Link TL-WN722N v2 */
+	{USB_DEVICE(0x2357, 0x0111)}, /* TP-Link TL-WN727N v5.21 */
 	{USB_DEVICE(0x0df6, 0x0076)}, /* Sitecom N150 v2 */
 	{USB_DEVICE(USB_VENDER_ID_REALTEK, 0xffef)}, /* Rosewill RNX-N150NUB */
 	{}	/* Terminating entry */
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
