Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEAE5CF5B
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 14:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E6172107D;
	Tue,  2 Jul 2019 12:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fpx4hNPJJdNU; Tue,  2 Jul 2019 12:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6272D207A9;
	Tue,  2 Jul 2019 12:25:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19BF31BF25B
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 12:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16C1185F29
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 12:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDbrZAeOvdZ3 for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 12:24:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 58E5A85B3D
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 12:24:59 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id p15so18181608qtl.3
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 05:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3PjR78O3S5Kl2rlS/MhH2xJhjK2bFUrqsiWj/+MZnIY=;
 b=G9MvS5X4de0urYlEvuNHmuLOzcgNtdIdigNunAkxFVE4sRD0ArD6w8PWpG0jdQuELE
 QyCqCSSja8Hk3Yphpa0W7Wejb3s9Q+XS70ncCJsdPdU81sLnP8p3V9BhpXKb5ylY+8np
 tVhHZEDZGEE2tbwn0zkZ35p42deb9oTc1EXW9dS89Gwpivhlaqa/5AlUlpnP5F42jqC3
 8UsKlHIYH7wuF/JH2UVMoNbGHnGAgk+xUbzyY8kLXUzduMdu5mxtFTvoJ8TqYMCwi/lJ
 /Ub2j4QYJB5RWhQDGVlfEsYbXgrkSyeE4BvLMikJ6J93fg5AJSieEbz0b8iHD7b0YGaw
 QCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3PjR78O3S5Kl2rlS/MhH2xJhjK2bFUrqsiWj/+MZnIY=;
 b=MvK+Jb3QrKQh+FYvdfXv026ivx6m5PDqI0NStvjWdbjvbeJrOwtD00VHo4GmGGrKEd
 tB3Ndx/gMdjU6kuv0X0bxUfulwjBMlwxoBv7Jx68QIe+RlKdGdPUuhsWIoxnwlcDlZEN
 37Sc3GJf26ZKvuHjINsTSS0+dtiUAqT7FM1k9sge+vKOSbhuz3SL1qt6aYk4NU4+Hsc3
 43nKBauDrPNQt5rzbPY2poELLtPrKfTrAfur4JQVKFK5/4s0Q82hUx+efw7yGhpxa/7p
 K2Ad8hX4hIB6Le23wU70/z1wXVq45Z2I0okEyyXwn8p0iJ91FQq8w3DXkjv/yPOAD1C7
 KDWQ==
X-Gm-Message-State: APjAAAXW5lixe6KmPvgkP1gtDhYSwppsZCGOip00T+exBX92kIOwOM+M
 TFiHSrYoPN2DlFIp6d8nDI0=
X-Google-Smtp-Source: APXvYqyeUNYmFsM0YetlBDnh7JFe6FO6bQbsswa3WGFtws0LUGrEifK8MLPAw/JBR/fMyJg4gaHEng==
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr26861400qvu.138.1562070298308; 
 Tue, 02 Jul 2019 05:24:58 -0700 (PDT)
Received: from localhost.localdomain ([45.58.106.199])
 by smtp.gmail.com with ESMTPSA id j66sm6394999qkf.86.2019.07.02.05.24.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 05:24:57 -0700 (PDT)
From: Gabriel Beauchamp <beauchampgabriel@gmail.com>
To: gregkh@linuxfoundation.org, christian.gromm@microchip.com,
 colin.king@canonical.com, gustavo@embeddedor.com, joe@perches.com
Subject: [PATCH v4] Staging: most: fix coding style issues
Date: Tue,  2 Jul 2019 05:24:03 -0700
Message-Id: <20190702122403.4557-1-beauchampgabriel@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190630165604.2452-1-beauchampgabriel@gmail.com>
References: <20190630165604.2452-1-beauchampgabriel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Gabriel Beauchamp <beauchampgabriel@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a patch for the core.[ch] files that fixes up warnings
found with the checkpatch.pl tool.

Signed-off-by: Gabriel Beauchamp <beauchampgabriel@gmail.com>
---
Changes in v4:
- fix a warning by making '*type' const
Changes in v3:
- add a break statement to preserve the control flow
Changes in v2:
- use a single snprintf
---
 drivers/staging/most/core.c | 11 ++++++++---
 drivers/staging/most/core.h |  2 +-
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 86a8545c8d97..6a50e3090178 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -299,13 +299,17 @@ static ssize_t set_datatype_show(struct device *dev,
 				 char *buf)
 {
 	int i;
+	const char *type = "unconfigured\n";
+
 	struct most_channel *c = to_channel(dev);
 
 	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
-		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
-			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);
+		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type) {
+			type = ch_data_type[i].name;
+			break;
+		}
 	}
-	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
+	return snprintf(buf, PAGE_SIZE, "%s", type);
 }
 
 static ssize_t set_subbuffer_size_show(struct device *dev,
@@ -728,6 +732,7 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 
 	return link_channel_to_component(c, comp, link_name, comp_param);
 }
+
 /**
  * remove_link_store - store function for remove_link attribute
  * @drv: device driver
diff --git a/drivers/staging/most/core.h b/drivers/staging/most/core.h
index 652aaa771029..6ba7c2b34c1c 100644
--- a/drivers/staging/most/core.h
+++ b/drivers/staging/most/core.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * most.h - API for component and adapter drivers
  *
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
