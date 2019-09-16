Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3574CB424B
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Sep 2019 22:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89CD384EF0;
	Mon, 16 Sep 2019 20:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QgXGI8H-XQ-L; Mon, 16 Sep 2019 20:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0641284EC1;
	Mon, 16 Sep 2019 20:47:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E25D61BF284
 for <devel@linuxdriverproject.org>; Mon, 16 Sep 2019 20:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF70B87816
 for <devel@linuxdriverproject.org>; Mon, 16 Sep 2019 20:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F7aUH4LJeTad for <devel@linuxdriverproject.org>;
 Mon, 16 Sep 2019 20:47:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F6DE876C3
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 20:47:37 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id v17so698223wml.4
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 13:47:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIaCxdmc4Mv8gjZ6OZgOWrffbO/JWGkLQPEVsPVt/ms=;
 b=X2UIHb9eXLPGBMvWfW2/dHqH6C9U380xCKQZWxGXEpJnRcUmke7aHmnFYqRoEtu2am
 exxaENjpG1QlmTPUQwUHuxsQsg23RaKih95l1MCpdxddFExW4Gyl1WnAc6PLLPhD2ksW
 xQLGvIsVo3z8hXQu7CeTYH2NdXW7H0i8sN6UVgRN+ZGBW3miV9rcy8iU0qCzaDw6B4F1
 2VjK9STHVx2H+23vdvDQyy7r7AHZVGMWvVzTd6pj47SMLZWKc4WrUFn4rxrKN1r/F14g
 K4mj/Bm89xhffEds4Qer8fx0vaVe0S6wtHVcmGj2jRAZu3LPVVLZY8UZvt/8rROCP1So
 aJQg==
X-Gm-Message-State: APjAAAXFYbbXlxM8sKr4jr+gQ7/QtRDL6YGfxZyM0/9gsJrjT4C8Avw9
 TOFKkSZUtCAviI8rtmrfnWI=
X-Google-Smtp-Source: APXvYqxV54TN6lC5/Jcuj+mDUpfWm3xDMt+2fNrtKXU0IdKBO73RRVso0NF9z88qEsbkVDCd7KhnGw==
X-Received: by 2002:a7b:cc0a:: with SMTP id f10mr778750wmh.6.1568666855820;
 Mon, 16 Sep 2019 13:47:35 -0700 (PDT)
Received: from black.home (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id x6sm231437wmf.38.2019.09.16.13.47.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 13:47:35 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v3 20/26] staging: gasket: Use PCI_STD_NUM_BARS
Date: Mon, 16 Sep 2019 23:41:52 +0300
Message-Id: <20190916204158.6889-21-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190916204158.6889-1-efremov@linux.com>
References: <20190916204158.6889-1-efremov@linux.com>
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
Cc: devel@driverdev.osuosl.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Denis Efremov <efremov@linux.com>,
 Rob Springer <rspringer@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove local definition GASKET_NUM_BARS for the number of PCI BARs and use
global one PCI_STD_NUM_BARS instead.

Cc: Rob Springer <rspringer@google.com>
Cc: Todd Poynor <toddpoynor@google.com>
Cc: Ben Chan <benchan@chromium.org>
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 drivers/staging/gasket/gasket_constants.h |  3 ---
 drivers/staging/gasket/gasket_core.c      | 12 ++++++------
 drivers/staging/gasket/gasket_core.h      |  4 ++--
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/gasket/gasket_constants.h b/drivers/staging/gasket/gasket_constants.h
index 50d87c7b178c..9ea9c8833f27 100644
--- a/drivers/staging/gasket/gasket_constants.h
+++ b/drivers/staging/gasket/gasket_constants.h
@@ -13,9 +13,6 @@
 /* The maximum devices per each type. */
 #define GASKET_DEV_MAX 256
 
-/* The number of supported (and possible) PCI BARs. */
-#define GASKET_NUM_BARS 6
-
 /* The number of supported Gasket page tables per device. */
 #define GASKET_MAX_NUM_PAGE_TABLES 1
 
diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index 13179f063a61..cd8be80d2076 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -371,7 +371,7 @@ static int gasket_setup_pci(struct pci_dev *pci_dev,
 {
 	int i, mapped_bars, ret;
 
-	for (i = 0; i < GASKET_NUM_BARS; i++) {
+	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 		ret = gasket_map_pci_bar(gasket_dev, i);
 		if (ret) {
 			mapped_bars = i;
@@ -393,7 +393,7 @@ static void gasket_cleanup_pci(struct gasket_dev *gasket_dev)
 {
 	int i;
 
-	for (i = 0; i < GASKET_NUM_BARS; i++)
+	for (i = 0; i < PCI_STD_NUM_BARS; i++)
 		gasket_unmap_pci_bar(gasket_dev, i);
 }
 
@@ -493,7 +493,7 @@ static ssize_t gasket_sysfs_data_show(struct device *device,
 		(enum gasket_sysfs_attribute_type)gasket_attr->data.attr_type;
 	switch (sysfs_type) {
 	case ATTR_BAR_OFFSETS:
-		for (i = 0; i < GASKET_NUM_BARS; i++) {
+		for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 			bar_desc = &driver_desc->bar_descriptions[i];
 			if (bar_desc->size == 0)
 				continue;
@@ -505,7 +505,7 @@ static ssize_t gasket_sysfs_data_show(struct device *device,
 		}
 		break;
 	case ATTR_BAR_SIZES:
-		for (i = 0; i < GASKET_NUM_BARS; i++) {
+		for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 			bar_desc = &driver_desc->bar_descriptions[i];
 			if (bar_desc->size == 0)
 				continue;
@@ -556,7 +556,7 @@ static ssize_t gasket_sysfs_data_show(struct device *device,
 		ret = snprintf(buf, PAGE_SIZE, "%d\n", gasket_dev->reset_count);
 		break;
 	case ATTR_USER_MEM_RANGES:
-		for (i = 0; i < GASKET_NUM_BARS; ++i) {
+		for (i = 0; i < PCI_STD_NUM_BARS; ++i) {
 			current_written =
 				gasket_write_mappable_regions(buf, driver_desc,
 							      i);
@@ -736,7 +736,7 @@ static int gasket_get_bar_index(const struct gasket_dev *gasket_dev,
 	const struct gasket_driver_desc *driver_desc;
 
 	driver_desc = gasket_dev->internal_desc->driver_desc;
-	for (i = 0; i < GASKET_NUM_BARS; ++i) {
+	for (i = 0; i < PCI_STD_NUM_BARS; ++i) {
 		struct gasket_bar_desc bar_desc =
 			driver_desc->bar_descriptions[i];
 
diff --git a/drivers/staging/gasket/gasket_core.h b/drivers/staging/gasket/gasket_core.h
index be44ac1e3118..c417acadb0d5 100644
--- a/drivers/staging/gasket/gasket_core.h
+++ b/drivers/staging/gasket/gasket_core.h
@@ -268,7 +268,7 @@ struct gasket_dev {
 	char kobj_name[GASKET_NAME_MAX];
 
 	/* Virtual address of mapped BAR memory range. */
-	struct gasket_bar_data bar_data[GASKET_NUM_BARS];
+	struct gasket_bar_data bar_data[PCI_STD_NUM_BARS];
 
 	/* Coherent buffer. */
 	struct gasket_coherent_buffer coherent_buffer;
@@ -369,7 +369,7 @@ struct gasket_driver_desc {
 	/* Set of 6 bar descriptions that describe all PCIe bars.
 	 * Note that BUS/AXI devices (i.e. non PCI devices) use those.
 	 */
-	struct gasket_bar_desc bar_descriptions[GASKET_NUM_BARS];
+	struct gasket_bar_desc bar_descriptions[PCI_STD_NUM_BARS];
 
 	/*
 	 * Coherent buffer description.
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
