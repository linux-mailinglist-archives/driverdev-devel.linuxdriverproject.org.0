Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720BC2030B8
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 09:38:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFBE488C52;
	Mon, 22 Jun 2020 07:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Le-6UKcWNABv; Mon, 22 Jun 2020 07:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48C9388928;
	Mon, 22 Jun 2020 07:38:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D04391BF314
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 07:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA962203EA
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 07:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9W3ROR0p9X0N for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 07:38:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id ACB5C20025
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 07:38:53 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id i3so2428281qtq.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 00:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pFf+0uM7OhIyngSgu5Yj3nmTerq75fKAoaRpUy4UdZc=;
 b=bTVxwjJv+BTutnnXMZTcEX3+yPsFy6WBiq161bQHyVik5hKmDYVz6l3cXO9z35R9M7
 ycQUCVSiaYVFbU6w+1WTRaBAZV9ldva9qanfc1jYpovqrquAv4/jL1+xXqTJAcoeou+o
 PMLpwjGVL0NKZuj9lg1bwKpePJCe5tULsWUfkWfwapaMcELKPAhQ2LPuerMI+rpMbSgf
 u0hUvagxULfqU5kCvRVB016gWF1LgC3hLeScJ/VigNKOGXvCrndZyv+jix5YCMWZXDqz
 aQLT3gkFHPkujKYdmcrstb7SGKFiQhap0PPmpiazbezehuq/szKbWCDJRgkPbizzx3dj
 pFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pFf+0uM7OhIyngSgu5Yj3nmTerq75fKAoaRpUy4UdZc=;
 b=jtnmXCuE6qXdgc+qmmkmCIzFtyG+joEkmtbGaMch2sS4fDiG6Eq9/bgttoQJJfjDPs
 LUTgZOeoPcCZKtHJUF/xhNoUwjksz4XipiDlTaTFii80ruNdcyPKGeUJs0f7Vv6xRQKN
 PNSzFKSNOU5ftRh+yDNx4K2c6+J/gepfJ797pXNfMosPD99IfNXApFe9Z1FeoW9Mel3l
 mnO0qHpHyuC51n0lFrIhkW2sqfjLIwlfuO4TlI4bGyepfTpIGC5nNcPTqIGyRviiIDLg
 4bhVYqF60cZ+WAWuBqn86KDUe5XA9mxTUCNFcItanlyeFrxe9cSCGxhxuc8z0MGIeKc2
 D/ZA==
X-Gm-Message-State: AOAM531uf/+o1SWpYDQeV6c77bAbeLDOLkB1q/VEJtKvjKJhHe4Gk6ws
 RUe/rPTGjovwR6cqzbPv0xU=
X-Google-Smtp-Source: ABdhPJyOjIb0iw1iEKpl95OKmTjBr1Oy0RUGpwzNGuopcAG0sGqjFXgoB4uVMm0o57J4Hut2uISUIQ==
X-Received: by 2002:ac8:3f75:: with SMTP id w50mr9210884qtk.123.1592811532729; 
 Mon, 22 Jun 2020 00:38:52 -0700 (PDT)
Received: from ip-172-31-24-31.ec2.internal
 (ec2-54-234-246-66.compute-1.amazonaws.com. [54.234.246.66])
 by smtp.gmail.com with ESMTPSA id p26sm632325qkm.76.2020.06.22.00.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 00:38:52 -0700 (PDT)
From: "Rodolfo C. Villordo" <rodolfovillordo@gmail.com>
To: 
Subject: [PATCH v2] staging: gasket: replace symbolic permissions
Date: Mon, 22 Jun 2020 07:36:12 +0000
Message-Id: <20200622073612.12282-1-rodolfovillordo@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, rodolfovillordo@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Richard Yeh <rcy@google.com>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
+               .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
warning detected by checkpatch.pl

Unable to use __ATTR_RO(). Driver has multiple files using the same show
function:

$ grep GASKET_SYSFS_RO drivers/staging/gasket/*
drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_page_table_entries, sysfs_show,
drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_simple_page_table_entries, sysfs_show,
drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_num_mapped_pages, sysfs_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_offsets, gasket_sysfs_data_show, ATTR_BAR_OFFSETS),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_sizes, gasket_sysfs_data_show, ATTR_BAR_SIZES),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(driver_version, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(framework_version, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_type, gasket_sysfs_data_show, ATTR_DEVICE_TYPE),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(revision, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(pci_address, gasket_sysfs_data_show, ATTR_PCI_ADDRESS),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(status, gasket_sysfs_data_show, ATTR_STATUS),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(is_device_owned, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_owner, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(write_open_count, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(reset_count, gasket_sysfs_data_show, ATTR_RESET_COUNT),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(user_mem_ranges, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_interrupt.c:      GASKET_SYSFS_RO(interrupt_counts, interrupt_sysfs_show,

Signed-off-by: Rodolfo C. Villordo <rodolfovillordo@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index ab5aa351d555..d5e167dfbe76 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
