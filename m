Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FF95B0C5
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 18:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6F8A86456;
	Sun, 30 Jun 2019 16:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DP26TM-jOT5u; Sun, 30 Jun 2019 16:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A85EE86404;
	Sun, 30 Jun 2019 16:56:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F369A1BF314
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 16:56:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F028F85321
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 16:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6FkTPJ7wAK9 for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 16:56:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46BE685313
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 16:56:13 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id m29so12127489qtu.1
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 09:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZJDgP97eShcdmvJ/LnUBsrdxn29SNS9vsStoVXzeXJo=;
 b=us+8FD6ty3wOB+rDydNxaCdnuDWtaUUghJhSAUhP2jw7zmLMY6PvX1sL9zdDZFuAg3
 jyUarc1r1rYVBA/Qh2aqK3VaUdSmfjcYTJ2g6deXfsNe9zBopKLl8x8cc3jISrHC+drw
 U1Cd5YGSoDrTeC9X5BCtvvmfOIwUu1nXQSuuNTu3MVUW8p1jrbYKyCwXTzEu7ZBeZi8/
 yFB/RCmOhMaWFs0Y7ln0Cgtzm0sjp8qllyvAe4KgtbrMaq+dOqzPHgn0bu7GTZyWpXoa
 z5/J2A2BcP2JeA1lTSYq5BL2puag5NdELb9iO43hlGKPFL5LoXvPMNAuV23ivzlbv+5p
 A1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZJDgP97eShcdmvJ/LnUBsrdxn29SNS9vsStoVXzeXJo=;
 b=FJoYsL0R1QFXp2Uqde7snSioWg3sPhFXjAmeUu5aTjArRXrJq8dNPX03d4teQ/fL2i
 /6mWP489yqOJdYyDxawI3RUcPJ/WBIMyR4JHs+1iNy9WZejPvzRVHQ0oU2KE8ENL3E4x
 esIBGLFm9p31qFW0g0J7O9iNX5l7NfTOQqVcjLsxs32Dvw1WsbwIa0uiIDzkWF76m2dX
 c7kmwBQC59uVLOHvdY3nlvsVys6GPa0r+wWKE7XyTiwLOURwgRo8+SZGlvdQt0O2hini
 meRo/fUO8z2Pg6K7iC8p2h9zcon3hqt4KGZZ+b5xANDjHTykkqApNyrrlpfKKveYAqtt
 oGHQ==
X-Gm-Message-State: APjAAAUnYFweYsRU6iwmDjbWGMu0aaCplN3VX2FiZ2IgdqL0gm6dWYw6
 PABs1mDgoWSXUGiipca1dXE=
X-Google-Smtp-Source: APXvYqwg/oXBjsbchSxxuvIyzrcSxgfEoJn2s0sK/tXzD4IGLOqCq5RHfs5pF3HXviUmmewCwoZQ6w==
X-Received: by 2002:ac8:1a8d:: with SMTP id x13mr17184376qtj.114.1561913772285; 
 Sun, 30 Jun 2019 09:56:12 -0700 (PDT)
Received: from localhost.localdomain ([45.58.106.199])
 by smtp.gmail.com with ESMTPSA id g3sm3557810qkk.125.2019.06.30.09.56.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 30 Jun 2019 09:56:11 -0700 (PDT)
From: Gabriel Beauchamp <beauchampgabriel@gmail.com>
To: gregkh@linuxfoundation.org, christian.gromm@microchip.com,
 colin.king@canonical.com, gustavo@embeddedor.com, joe@perches.com
Subject: [PATCH v3] Staging: most: fix coding style issues
Date: Sun, 30 Jun 2019 09:56:04 -0700
Message-Id: <20190630165604.2452-1-beauchampgabriel@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190630152726.21092-1-beauchampgabriel@gmail.com>
References: <20190630152726.21092-1-beauchampgabriel@gmail.com>
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
Changes in v3:
- add a break statement to preserve the control flow
Changes in v2:
- use a single snprintf
---
 drivers/staging/most/core.c | 11 ++++++++---
 drivers/staging/most/core.h |  2 +-
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 86a8545c8d97..eb18d4df8ad1 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -299,13 +299,17 @@ static ssize_t set_datatype_show(struct device *dev,
 				 char *buf)
 {
 	int i;
+	char *type = "unconfigured\n";
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
