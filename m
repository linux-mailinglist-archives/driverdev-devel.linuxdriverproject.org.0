Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1803D5B066
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 17:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 608C120462;
	Sun, 30 Jun 2019 15:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtspFKlVpGdy; Sun, 30 Jun 2019 15:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFE4420432;
	Sun, 30 Jun 2019 15:27:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B13D71BF865
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 15:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA85985CA1
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 15:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6unvjOZl9zk7 for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 15:27:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 54DDE84B36
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 15:27:50 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id d17so11944285qtj.8
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 08:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eq2HukLiuzFzKASlbDJ2Cm/tBYYzarf/IV9FWDHC4+k=;
 b=LCoPh9WdvLxOamjgGnaksBaExNO9y2okQn3Byp2aMNjJTk+00rPGWli+R+5e0ClVT0
 nGC1hobErUz1XQK+95CPL5N0FUZZv6B9aGpIWMRhu4RH2rCmxcM/8HIPyF9VRtIcLPZw
 qge8lWPJeahjV8gU69Ho+BZk+jYwZW62/70VAwk/hp8t/T8JqIiKHkhKKOT/spTe904r
 sjIHpXqALcE7G8X8lTsyJIz/z+HyYQjn8XqZpD2UaZjgBReyAxvw7sR0Zo/uTqR70ftL
 wLnTRqFaKW1zMJlpLVhImodLJnwVkznhgcjejYfzNKFHV1FlM/52TeYHjfjsLx234PcY
 74DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eq2HukLiuzFzKASlbDJ2Cm/tBYYzarf/IV9FWDHC4+k=;
 b=TsPC9b5ugwxdDUTtMl/iUZClGFVPcS1duHbegFCk5BFBS6gfQX9Yj4qEhLDHmOYCKr
 HErASFtXJrR5IHNa8zoiVbI7jypEB8T1G2h7FShUgnm21zRwIztslhzeVGAuel+X/CuI
 PMuUmLc2pYHbV+pg/Ee5Gtz8U801U0YM5txGhm0YADeKpcqZAGkbcvSpB+bB5P6ZyJnY
 iEE1JGoIOROPUkhoZKgppifqmOxq2s0RJy43bfnuLhSDkbeIgoySAJ8W2XScrgf5YCkv
 XSRg5DQnyeZlQibaZOJI4+Mguv84r8uWSIANq/uLqAzg056Ix/QhISWbSRcjHiKiNwmL
 Lmcg==
X-Gm-Message-State: APjAAAUw303B43zpTNNvHRa9mEyqTWOVWgdUHtBDlw30yRBiBKwm+nit
 i7xF/8iJpbYYVosBEx0DBGc=
X-Google-Smtp-Source: APXvYqw+lugXdizRx7WEqmvH2EBqSTj9jTiIdRBtsYzArslAuyuqt9RY3tdcwaj4F0EzrFFgemmNmQ==
X-Received: by 2002:a0c:aa0f:: with SMTP id d15mr12141717qvb.229.1561908469379; 
 Sun, 30 Jun 2019 08:27:49 -0700 (PDT)
Received: from localhost.localdomain ([45.58.106.199])
 by smtp.gmail.com with ESMTPSA id j184sm3648364qkc.65.2019.06.30.08.27.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 30 Jun 2019 08:27:48 -0700 (PDT)
From: Gabriel Beauchamp <beauchampgabriel@gmail.com>
To: gregkh@linuxfoundation.org, christian.gromm@microchip.com,
 colin.king@canonical.com, gustavo@embeddedor.com, joe@perches.com
Subject: [PATCH v2] Staging: most: fix coding style issues
Date: Sun, 30 Jun 2019 08:27:26 -0700
Message-Id: <20190630152726.21092-1-beauchampgabriel@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <dbe411be6aa32a32aafc5a5b77f08e8507b45da3.camel@perches.com>
References: <dbe411be6aa32a32aafc5a5b77f08e8507b45da3.camel@perches.com>
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
Changes in v2:
- use a single snprintf
---
 drivers/staging/most/core.c | 7 +++++--
 drivers/staging/most/core.h | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 86a8545c8d97..852f8788ce2e 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -299,13 +299,15 @@ static ssize_t set_datatype_show(struct device *dev,
 				 char *buf)
 {
 	int i;
+	char *type = "unconfigured\n";
+
 	struct most_channel *c = to_channel(dev);
 
 	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
 		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
-			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);
+			type = ch_data_type[i].name;
 	}
-	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
+	return snprintf(buf, PAGE_SIZE, "%s", type);
 }
 
 static ssize_t set_subbuffer_size_show(struct device *dev,
@@ -728,6 +730,7 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 
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
