Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A485138151
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jan 2020 13:14:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FB3A86856;
	Sat, 11 Jan 2020 12:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iT8NvMA4g7sf; Sat, 11 Jan 2020 12:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2976E8695F;
	Sat, 11 Jan 2020 12:14:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9A2B1BF5E9
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 12:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C69E984EEB
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 12:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YNXPJdMWnL2W for <devel@linuxdriverproject.org>;
 Sat, 11 Jan 2020 12:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2565C84E0A
 for <devel@driverdev.osuosl.org>; Sat, 11 Jan 2020 12:14:34 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id kx11so2109353pjb.4
 for <devel@driverdev.osuosl.org>; Sat, 11 Jan 2020 04:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gu2ibxt9IusIRe4xp3l3i73y94wbInkbEdTzlnDJ/Hc=;
 b=tjzy0T/KSZ3UjlaLBTfw2/8lFtiZm3+yjrQHbuZ3t6/zmAFh+0Vy8rpYf/FWb2erRW
 PxFq93aqRmY60ABG7XFvYcQ2jKWiFHUnUAgxeyqTJUfCE6n848KhjWxdqjigPKDyd9tE
 MXMnoZ70HuKCY0Q12TVntc+8vAfxIlLIo4HzR2hTgy+GHLCjWYRPiidFkza8LQGGUh5f
 H+MEhPHhi8SZLqQROf9W6q29sm0HgZKXa95sPMHp4wv8SGHE5BUV0wGQqx+KRxtJFE93
 xQuV7U+DmmnYfBdvwDaLjIVfdEPI8u06ncyiOEKzhgLEYrLXHedUbej2xJg9wKZe8uYA
 s1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gu2ibxt9IusIRe4xp3l3i73y94wbInkbEdTzlnDJ/Hc=;
 b=VWftD7mDecKfOoq/Nqg10n/2P1ADyFGc5z3bNONEyURcZxXtIa55hw8lT2zfd4IlPq
 0zXwhUh/9tS/HFd8lkc5xr0emN5IH063f/ouheYtUjCbYqWwqxliR7tRWN6+GlEdPHQX
 ayA4vCNMgNGlo8ZiSblhZwnnE1IEyIvcuCxZhYq5t+SiMxdUcsW2b4ZH3TCZOtP0NLfp
 vYsuWYxuqB7Dl5uQ6wG3quIExXldZx9mBLmAZ25sTkCSbvQf2CJVTGuNL1TPPY3uCaog
 bkoqHB8xmdEATwvnrnwSesIq4deZNc2QXPvkvJg93VfCGrBT5E9nfw0OA6B3Krze/zM9
 Pr2w==
X-Gm-Message-State: APjAAAWgQkQPH7RGbKm0vrmuBhXj4TXbume4XCmR5lK8k5lVHTFwt6gH
 pHMbjXTbFKw+k6pvv8TeOHI=
X-Google-Smtp-Source: APXvYqwQ7aNRjEnfjZKONGUaZ9HVJML5GxucrnI6Y3/wARh9a3H12o1je3NDZm5+BOYgAiU1XwTQtQ==
X-Received: by 2002:a17:902:24:: with SMTP id 33mr4343218pla.212.1578744873684; 
 Sat, 11 Jan 2020 04:14:33 -0800 (PST)
Received: from localhost.localdomain ([221.146.116.86])
 by smtp.gmail.com with ESMTPSA id 7sm6868513pfx.52.2020.01.11.04.14.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 04:14:33 -0800 (PST)
From: Namjae Jeon <linkinjeon@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH] staging: exfat: make staging/exfat and fs/exfat mutually
 exclusive
Date: Sat, 11 Jan 2020 21:14:19 +0900
Message-Id: <20200111121419.22669-1-linkinjeon@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Namjae Jeon <linkinjeon@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, amir73il@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Namjae Jeon <namjae.jeon@samsung.com>

Make staging/exfat and fs/exfat mutually exclusive to select the one
between two same filesystem.

Suggested-by: Amir Goldstein <amir73il@gmail.com>
Signed-off-by: Namjae Jeon <namjae.jeon@samsung.com>
---
 drivers/staging/exfat/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
index 292a19dfcaf5..9a0fccec65d9 100644
--- a/drivers/staging/exfat/Kconfig
+++ b/drivers/staging/exfat/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 config STAGING_EXFAT_FS
 	tristate "exFAT fs support"
-	depends on BLOCK
+	depends on BLOCK && !EXFAT_FS
 	select NLS
 	help
 	  This adds support for the exFAT file system.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
