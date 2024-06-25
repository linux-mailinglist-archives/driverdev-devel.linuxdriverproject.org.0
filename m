Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F19916CAD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 17:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26EF741878;
	Tue, 25 Jun 2024 15:20:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id motjw-XHiKze; Tue, 25 Jun 2024 15:20:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E0184196A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E0184196A;
	Tue, 25 Jun 2024 15:20:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23E631BF3C4
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 15:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1174E6108B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 15:20:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jN59cGll0ZTo for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 15:20:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=engel.teddy@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 82D5661065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82D5661065
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82D5661065
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 15:20:09 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-52d259dbe3cso215987e87.0
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 08:20:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719328807; x=1719933607;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=M7My76Xx+peBaX7RrKQa/BxRrvIU630K8BNIFUaH3MQ=;
 b=TV+p6K/WWB0ZZ0y4aK+E2CXxuUjf6/nFCBr9pZcltfeQdtJ/YRCDE0TYlmjzPnLWGe
 ZlR60GE003EjC/d4Pkq1wO0C73nR1UEDuyhRvVqNSuw7aYgZD82Wd/BQ/HG3rRyEvzz/
 OlagEqH/8RRn2g2wg5rLtuNh61mx7pTNwY5E9y/IQRDCNDu4D/K/9eFgxrcTMYv9kIKK
 YYZoiBkr6x/6PE5dCX6VFhFL1Ti3IZ756yVj0Bv+lp+YMF5arfV23eQkJ/fXaJy6PbEN
 ixNstyQjpvBA/H3wCFs0SnGu4rI48rN0QTLBQYq/D2l9xNnpCZdshcAjIOTpXgFxI9JD
 ev2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQNKFSDIuUOIqPSsr/X4TxmhmOHqmyjlK7kHvyYKZ/NAkZog7H5vgUB6IeYdoyR7xTrmNirVq/iaEP1updP046npeHJKPKhqQRXQ==
X-Gm-Message-State: AOJu0YxZ0ZDi4arFHT+u2OlSPycD4xwj/Noiz5SuYAjTH5IEDs9TFR4o
 pyq0nyWLuSVM+XqmyeJqy4KqwmCd7+oyryNf1JCzz7vp85ROGl5iEhzksFdvBNU=
X-Google-Smtp-Source: AGHT+IEKZTWwrSCXm10ss+29iQwj3R7hVZlF1h2E5+VfQHecxEUa538EMtLDLzdMAs6PdI0BLXe8Eg==
X-Received: by 2002:ac2:514f:0:b0:52c:a5cb:69e4 with SMTP id
 2adb3069b0e04-52ce06415d6mr6089650e87.54.1719328806841; 
 Tue, 25 Jun 2024 08:20:06 -0700 (PDT)
Received: from localhost.localdomain ([31.120.167.14])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-366389b861bsm13110218f8f.29.2024.06.25.08.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jun 2024 08:20:06 -0700 (PDT)
From: Teddy Engel <engel.teddy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev, devel@driverdev.osuosl.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: rtl8192e: Fix conflicting types error with
 net_device.
Date: Tue, 25 Jun 2024 16:19:18 +0100
Message-Id: <20240625151918.10839-1-engel.teddy@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719328807; x=1719933607; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=M7My76Xx+peBaX7RrKQa/BxRrvIU630K8BNIFUaH3MQ=;
 b=UYWp+Xizg3A85Ta7LmZhvSRya2vowFQKOGJsFZOG2zTwSkLN7927C2D/wdzJ/QRLcl
 vDhT9B9A5mRXZHWA5gk6xHUxC4vdf3srnTrx3BY13VWm3sZTRFDGSwFEoYUbwcGjIO0l
 zn8fooS8Eb29+dFtkvF27YdKRxjpOt/KHqV/GVmFI6YW7tvZa0L4eGN7a1KvljH/MfQb
 5LVky6SzC8ihOX6Bfn6Sjm3+zx6AQLkYv/s8zGAkBJt8GQsH3LqzoaYh4KUIvGmce9LN
 xwhXfdFeBPm3B8ZvbGZFJCovuQn4lBHXRINogGp7LY+CuKprAK1ro9hqqsXXZYYS1PPr
 I5Jg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UYWp+Xiz
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

Fix for commit: 7dff0b27d9c842f88149bf611cbc0b59be1dcd3c:
[34/59] staging: rtl89192e: Remove unnecessary pre-declaration of struct
net_device.

Signed-off-by: Teddy Engel <engel.teddy@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com/
---
v2: Add commit id that's being fixed.

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
