Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E90FB55F4
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 21:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0257882580;
	Tue, 17 Sep 2019 19:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFoJUcP4DX2v; Tue, 17 Sep 2019 19:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2295E81426;
	Tue, 17 Sep 2019 19:08:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 748411BF363
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 19:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7150685DDC
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 19:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NM1V_MQkvKf3 for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 19:08:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B833E85DC7
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 19:08:09 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o18so4286148wrv.13
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 12:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iakGb8fcaKyls8cLwViMwI4gvabiv22sCfSHAxpJhuQ=;
 b=t9fbGkuNijyWrxHyrR8wSBaZCwXYTgltsfCZmRZPqEq0OYZhRPlGk7Q433KNOgxpV7
 Q1QDeK5m4UuGJFbWBp6HTs3WbHokrrFhF+oJ+i25heIU25lkreVcmbCZAD+C0e8/H0ms
 nv70M//MvimfBdJ3J9Q7TZ1ipConjjaqzZne6swtvdMYPbJTQN+SVlX712HbT8MEDP6i
 f3tL1BCr/5Uci2Gch63+TQGmB7BMCfv2WCcZZuQxvWp6jbO0kNleL7P4f/ALXH/Uj3BI
 K88ROR5t6fkb76IWmJo9JijGSCe+cLf+gLKI+5CPC5LdOpIn1fwcAcifpE9f6BHmsIfK
 Y7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iakGb8fcaKyls8cLwViMwI4gvabiv22sCfSHAxpJhuQ=;
 b=c9lt97d6GbZb2g190QzeX9c7Ck3DxJvUzeK9/Nzy3jW93K0CSc1t80tIzu9pTtrQ/0
 eKJVvQz/hsD52BucCYq62kkCn/W+XMxQBpjREvDbeza3SBheU4auc6CxUz/f28xxEyAY
 lS/q1HsYQsSz8HneJ8RguZhxZ1yEKRzJ3rRJU+pK1bgAaKH+3wJAny/SDbf+uwrk0JFX
 Yh/oXd1lwAC2o+UZigtdKbWlowsmLIt03M2qHKNo7aL1E1EGXyX6JPkEYV0r6K55hBgQ
 DADwj4n5W0fY9f14iB1m3g1xQBBAxja/9vmPFN57n7m1nOY9JmQMJ33NmhzhCupMjIPK
 HpAA==
X-Gm-Message-State: APjAAAVtxoLKgSE89exgZaEHDipQClnu0wG392vQ+iWbZe61AwLOVIgA
 cz3f7gxQO+3980jFAqh5YKU=
X-Google-Smtp-Source: APXvYqwdCBNIeffNEt4sDyHbA4WBH3kDH+qyEAstvKK+sdHbfEH07qfeHKUWFTk/ZJ8KTY1AZSmChA==
X-Received: by 2002:adf:f287:: with SMTP id k7mr137955wro.206.1568747288125;
 Tue, 17 Sep 2019 12:08:08 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:63dd:3520:a916:ae4b])
 by smtp.gmail.com with ESMTPSA id s13sm1688518wmc.28.2019.09.17.12.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:08:07 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: exfat: add missing SPDX line to Kconfig
Date: Tue, 17 Sep 2019 21:07:55 +0200
Message-Id: <20190917190755.21723-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add SPDX identifier to Kconfig.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/exfat/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
index 290dbfc7ace1..59e07afe249c 100644
--- a/drivers/staging/exfat/Kconfig
+++ b/drivers/staging/exfat/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 config EXFAT_FS
 	tristate "exFAT fs support"
 	depends on BLOCK
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
