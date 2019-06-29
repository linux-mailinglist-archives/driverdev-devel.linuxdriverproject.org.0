Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D6F5ADC4
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 01:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B2DFC20338;
	Sat, 29 Jun 2019 23:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UbY3mVLjQYXt; Sat, 29 Jun 2019 23:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52C8D203C4;
	Sat, 29 Jun 2019 23:44:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D0B81BF3F2
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 23:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68B52203AF
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 23:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoJyNAosyI2R for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 23:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5CCA42039B
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 23:44:37 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id g18so8174185qkl.3
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 16:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Xm3J3uqRoSxwPDCNXasCxmtcHa0Ckg5BrlIZ4QZDYk=;
 b=RpTiS9tUTq/bz/Esm/3gUjoC24b3otsafuyXxvGmqpsVxHp58E3hrfnV7CeTe4NHr7
 hvqcTa9BWFQEDB3SAJh7gDx48/2zGFqcP++Vcp6ENkMV6D6dyzrf+GxPPy1cgX/HNvVf
 8ui1ARLX7VbpuZpHuLrxEr2LVHfiUKpLfy4qu4HPZ3IZcfk/v87Pq6VUIXldRVSLnitw
 nAdwUmgxEtaxyTAY/Lcaf84h+PJX3mjJE6WewFdgxzx98/hSqYS2RKJbTx+irpWjoP7F
 IYDKHy+eZEKmDDguto15V9nLDxNVLEyMBl013J6zSkxOL3ovO9oeMJ3J+gebwqpRI56U
 bZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Xm3J3uqRoSxwPDCNXasCxmtcHa0Ckg5BrlIZ4QZDYk=;
 b=g2OOlgcAklpTkA8Bx5u0sIb1Gb0fajfr3ZEjg5m6JWQgBVT+BOj7oRIjH95pXFWUiW
 r4USu6IGvSg1me9jVQZJ8OXwXGTYnCp+w5EkWf+iK9idZRrCYRppWABCoe8Nu5fVL2bB
 Z2n91iZgdUl+P18+sbruR1Yk0KI6st+joM7dhzQ6GrBfv/D+f7SSJmxYe0Y2nrPR/yuT
 PM/9zFzFDQq14RyoGvv9CE+pB17d3yslBmw5nVypoKpTUj1OuAAyCHkQvwSSHYZOANg+
 7Q/+kMrxbJlnEbDuIIupYPh9MMEdp7RqKqZkshfnngXKF0JZbkNBPNoGWHaXFZSOvM4c
 rJ7w==
X-Gm-Message-State: APjAAAUb8+0VRQMW5QMOiVehfkG66p2Cff7yyDeTXnFvHGO8dU5oqkI/
 URqYSzV2sg1cUnNhizN7H/4=
X-Google-Smtp-Source: APXvYqzHhsFnjFiMgZqt12GbymY/kxdtoq7iSgGuVU5Urj8xgzQYFrN3krjz4Nfa3xTu6+AI6TzwrA==
X-Received: by 2002:ae9:f20c:: with SMTP id m12mr13868766qkg.58.1561851876434; 
 Sat, 29 Jun 2019 16:44:36 -0700 (PDT)
Received: from localhost.localdomain ([45.58.106.199])
 by smtp.gmail.com with ESMTPSA id c18sm2849775qkk.73.2019.06.29.16.44.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 16:44:35 -0700 (PDT)
From: Gabriel Beauchamp <beauchampgabriel@gmail.com>
To: gregkh@linuxfoundation.org, christian.gromm@microchip.com,
 colin.king@canonical.com, gustavo@embeddedor.com
Subject: [PATCH] Staging: most: fix coding style issues
Date: Sat, 29 Jun 2019 16:44:27 -0700
Message-Id: <20190629234427.20746-1-beauchampgabriel@gmail.com>
X-Mailer: git-send-email 2.21.0
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
 drivers/staging/most/core.c | 4 +++-
 drivers/staging/most/core.h | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 86a8545c8d97..f49c550ed48e 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -303,7 +303,8 @@ static ssize_t set_datatype_show(struct device *dev,
 
 	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
 		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
-			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);
+			return snprintf(buf, PAGE_SIZE,
+					"%s", ch_data_type[i].name);
 	}
 	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
 }
@@ -728,6 +729,7 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 
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
