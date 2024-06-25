Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA89916870
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 14:57:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3989881271;
	Tue, 25 Jun 2024 12:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IKdgqFMbdGe2; Tue, 25 Jun 2024 12:57:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C8C081276
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C8C081276;
	Tue, 25 Jun 2024 12:57:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17CCB1BF422
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 12:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0309440144
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 12:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SzPtrYDSyYvX for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 12:57:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::129; helo=mail-lf1-x129.google.com;
 envelope-from=engel.teddy@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83C4B40065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83C4B40065
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83C4B40065
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 12:57:39 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id
 2adb3069b0e04-52cdd03d6aaso3354805e87.0
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 05:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719320257; x=1719925057;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2rEKkD7V2tH6Ok9lwRlb6M97RUxTNvraYNPbf5dbADE=;
 b=NvYsfbKkK9tLzbCTuTLdFx58fO/ei6n2XEI/ipKz1MpKx7GDvPt26fE13AliqmisOm
 Mdg8Ho6UNJ2TBLP41/adkHoJNzNXvAgD8DV20GAFpmgxdm3aCBdoMvYHwOiFTtChqicU
 /5BubO8VGH0BFrpjwC4duZaNxJ0K7PZ6ZEBgk30Uy+Nc9poKuWkcRA2eCWfVLiI/i4GD
 /nBO/lTouMdzrxMRYiOZxjZQj2hGbTe8bGBUIQ9UDKrp9frQL1xNXbxoYDJP9/8F1zYE
 QRPu2X37+rsEdrsMTnIRscJz5MdPoBtgD4cBVyMOvTXvS6RBgLL5BqCrGyQNqWZlefAh
 5SZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGwfxaTFW5xgsxS8s0rnmRucaMRst6UyNpwo9/1WvCul9nqSgxpsZCQAi6kgYf1eBcWDYDdW78OCJCJPOLQcDabq5FyMfi2222Dw==
X-Gm-Message-State: AOJu0Yw0Ma0+2LYQq5vS3TVAvAQHtVWCbAOZSiIRyXxfbgJ0ZjTDm6j6
 /SXZzKaCHhUETZbHSJuDdD/5ij8L/9MVGjbY8q6beHYCjltsyDhd
X-Google-Smtp-Source: AGHT+IHr65fV8bE4i4m/jYWnI2hJuHAcFS/zLp0flAAUIY1B7gsR/pRJn3GX+QupEnLMcGlwprX1NA==
X-Received: by 2002:a05:6512:281e:b0:52c:e450:773b with SMTP id
 2adb3069b0e04-52ce450785fmr4967644e87.61.1719320256787; 
 Tue, 25 Jun 2024 05:57:36 -0700 (PDT)
Received: from localhost.localdomain ([31.120.167.14])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-366383f675esm12907761f8f.22.2024.06.25.05.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jun 2024 05:57:36 -0700 (PDT)
From: Teddy Engel <engel.teddy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192e: Fix conflicting types error with
 net_device.
Date: Tue, 25 Jun 2024 13:56:38 +0100
Message-Id: <20240625125638.28041-1-engel.teddy@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719320257; x=1719925057; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2rEKkD7V2tH6Ok9lwRlb6M97RUxTNvraYNPbf5dbADE=;
 b=feNjw0I2ROtHB5+n2qgxgapQqsWRM+WJUhC4QYVLjqkjW3QmOWm/3uvxMKIXc5NjYe
 OLOeIAXt3Vi1pAavzMk7LvkGLnzqxvavaqilKiOlRzB05MU9Vg2iIRClNnBH01zQkz0H
 A7Kf7SIxuyG0vlqchHPJ3xc0m+QJ/gkLCj5Vfb2Py5liO2cO9F/NOgsWlzmxk+1Yufne
 pZgEMYmH4qG+beGvvtAqDV9g0FmmhgVWD3QLDCkg88Utm8Zo0LnstnbeQ5DLY8+mNLU0
 DBtmycnw/+lkjKAN19bSfonqBrfsqcxZHFAeKzIXi89X/ybXCS7mWB4n3G23K/slAu2g
 HeCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=feNjw0I2
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
---
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
