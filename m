Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951DC916E34
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 18:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80CA641673;
	Tue, 25 Jun 2024 16:35:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 83H_OhT6o0MR; Tue, 25 Jun 2024 16:35:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 523E141667
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 523E141667;
	Tue, 25 Jun 2024 16:35:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 290FB1BF4D6
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 16:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14375810BA
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 16:35:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id irmAMV_Rvxez for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 16:35:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=engel.teddy@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B6F7C810A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6F7C810A1
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6F7C810A1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 16:35:00 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-421bb51d81aso47767545e9.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 09:35:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719333299; x=1719938099;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=f2D5WnbI6hoDNtONP1hohTOtNAD6BEhzID8lJ1CZtes=;
 b=T6KBOeDK8NSQHSjXh0fBm3minIVAHERdcAzE2LvyusPKA8UZUBtsRAeIRJ5etY0n+5
 EkvsbOiljgYteOZNb9sPEfE6z5mX6zpROyOVb9EScGB+HmyS1aa3alXyvkRwsX6gds3k
 IuCc7tNAbH0iestLPLO5HxCGiYx+8yY+J2+aO1/USawkZ/DarC6XwLfhfnPIyqmUX6Zv
 BT1XahbVerWlNN+IRn3TKJpSt4FVC/0w/gQDrsOgkfISGteiYkkBRztmn+CE66tRARzz
 XKfWABK/D2VARrC1wrY37NntdSIelYahJpWS5RcEUwa8Q/IA9YlCVkUo3FU2Y6S2cu2g
 vKeg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYioXXrka1RF4DLPa58vDM/cPXG/Z9o3f9jWXqQffiFyQD35Gax2HsZIZL7eqPxaCE5yFdNsvrYeSRI6ngz19hD2TA3PSIxDWMBQ==
X-Gm-Message-State: AOJu0YwqbiYbbhmBc4c7kqwip6JyGL38SpxRx0t6rEyPz13esede8C4y
 3IdIK5LV6D1B/z8/50y82HxesVC0wg5XNivrV+zITNf+COb/TFFB
X-Google-Smtp-Source: AGHT+IGGyhODIpXfM2MCK3HCTtKZDoIwysdpuC9axXxzoGpIKWMr3flaE2pWWJ9AT7H/BxuHIv/ECg==
X-Received: by 2002:a05:600c:2d55:b0:424:a319:6b46 with SMTP id
 5b1f17b1804b1-424a3196b9fmr14603165e9.18.1719333298504; 
 Tue, 25 Jun 2024 09:34:58 -0700 (PDT)
Received: from localhost.localdomain ([31.120.167.14])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4247d208e4dsm217457415e9.33.2024.06.25.09.34.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jun 2024 09:34:57 -0700 (PDT)
From: Teddy Engel <engel.teddy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev, devel@driverdev.osuosl.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: rtl8192e: Fix conflicting types error with
 net_device.
Date: Tue, 25 Jun 2024 17:33:34 +0100
Message-Id: <20240625163334.11117-1-engel.teddy@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719333299; x=1719938099; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=f2D5WnbI6hoDNtONP1hohTOtNAD6BEhzID8lJ1CZtes=;
 b=FAc3CjvfrjXMmXFgfBBwaiX7cRLcLpLulv8DwUe+bzM3DZxtMN3poGdXWwKH+JnQwL
 R7WBYOeSo6yymHy1VUFYi8VRyPP/IUYAmY7UYfVQWqk3VeJZoKZZmLzqgXG5Yb17yzzG
 mkdNrQckjsyYsEYhME8bZTvMn1iNl8O1g+OqZYuxSzGeYw+4dXbu/CB0G0SkxV1hgoJl
 cn4pFix/sVSGZEyYDYg33AVOETGoNZ7STB/sEQImngaVX/k/1Dwg6E9KEiTB8b8sNhIT
 tzoJ34+Xg8QKfSaeAc+zmfxNpJ7fOH4F1nFT/V/080Q7U+ehg9VLB5ZqAdw/L9ogrKrV
 rSXg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=FAc3Cjvf
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
Cc: Teddy Engel <engel.teddy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add a pre-declaration of struct net_device so the compiler is able to
use rtl_pci.h / rtl_cam.h.

Signed-off-by: Teddy Engel <engel.teddy@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com/
Fixes: 7dff0b27d9c8 ("staging: rtl8192e: Remove unnecessary pre-declaration of struct net_device")
---
v3: Replace ad-hoc commit id / subject by expected Fixes tag.
v2: Add commit id / commit subject  under description.

 drivers/staging/rtl8192e/rtl8192e/rtl_cam.h | 2 ++
 drivers/staging/rtl8192e/rtl8192e/rtl_pci.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h
index 3a5635494385..9deffdf96072 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.h
@@ -12,6 +12,8 @@
 
 #include <linux/types.h>
 
+struct net_device;
+
 void rtl92e_cam_reset(struct net_device *dev);
 void rtl92e_enable_hw_security_config(struct net_device *dev);
 void rtl92e_set_key(struct net_device *dev, u8 EntryNo, u8 KeyIndex,
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h b/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h
index c645775b2150..3e39c4835ac8 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_pci.h
@@ -13,6 +13,8 @@
 #include <linux/types.h>
 #include <linux/pci.h>
 
+struct net_device;
+
 bool rtl92e_check_adapter(struct pci_dev *pdev, struct net_device *dev);
 
 #endif
-- 
2.39.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
