Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBF927A207
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 19:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A068D857BF;
	Sun, 27 Sep 2020 17:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1eGrDaWW5WP; Sun, 27 Sep 2020 17:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD30284EE4;
	Sun, 27 Sep 2020 17:29:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85E4D1BF402
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 17:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D46D84EE4
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 17:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EkmHbL0cTU9A for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 17:29:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1E7E84F35
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 17:29:35 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id m15so2104519pls.8
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 10:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H2ne51E0OC00G+XGm4/7Oiftb+fIPcNupoPj2jSF7Tc=;
 b=jm5+voUSxOT1hkFK/U/6V6PljCVLKzwhyxE6vQpyOPp4CHAYM4cSz3SOQ70102BMlR
 xqkPipQ295I94D9BtSHecW50PRGIjzENm9tb9R4q4u005pEQkT+SE9dv977LLg8RbGqJ
 52kNvb4qJ69lxCTaXTfxd1eJEg1vP9qgdAHZgc3gtO9A1Df3pgQAnxm1R5dtu6MZvscT
 ivukUp4aPX3JuRNFLyvmVX/bAIvYiiJW0TTdknFdJiFoLSItPDuTbZYRDAIsbLA4L9sc
 F6LH2oA5en9eXXPAmbWMecS+0hrrBPQHZVrKT5Z6OeMBLbScXE7WkacC8nLqUQ8BwEpn
 gBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H2ne51E0OC00G+XGm4/7Oiftb+fIPcNupoPj2jSF7Tc=;
 b=C2OLQNq872OPrYdXouEPJ7yUGawEcNzICW1FJ9dn5TvqvydTIzU2UriHrxAP1cWT/b
 iQuUL23KA8QKYSmTsOwxFSDn98GKFXfqQrP+cXsWwvPi1ed3hhADjVW6jRiVEHioQr72
 co3vzlkHKmba/lfUQr+kA3bi/iQgX784qqIVjPaii6sK1uRq+WzSbdJRsDIeHg+htOnJ
 JwkXgWHtOztE0KVJuqo1GZ2JBxFjlWZLpUgElPeCYgPaW6/zR9/FzWsrPnyeYX5qkXcX
 ng10jY1SOvRjGUjYlRbS658wrcCPqgNOro9suV94crr1NZ1GBkfJKvEtzJE8idlhe5W2
 TGZw==
X-Gm-Message-State: AOAM530DdJTLwjELtZzH+/pIL/dZ7tXA5Q5lTbJlkIagmJZlZ8okECsu
 1s7q6NmlkgYWSHk7qx6z8oE=
X-Google-Smtp-Source: ABdhPJxl+ql0T7Q5Ay/5aWfJh6kYGpeJNzskFTiWrbLwmG2aGZ2xaeoCKQuU8Zx2NfbR88loopslqw==
X-Received: by 2002:a17:902:a712:b029:d1:cbf4:c583 with SMTP id
 w18-20020a170902a712b02900d1cbf4c583mr8186666plq.16.1601227775544; 
 Sun, 27 Sep 2020 10:29:35 -0700 (PDT)
Received: from localhost.localdomain (cpe-70-95-82-187.san.res.rr.com.
 [70.95.82.187])
 by smtp.gmail.com with ESMTPSA id fw4sm4434030pjb.55.2020.09.27.10.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 10:29:35 -0700 (PDT)
From: Ryan Kosta <ryanpkosta@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3] Staging: nvec: Removes repeated word typo in comment
Date: Sun, 27 Sep 2020 10:28:55 -0700
Message-Id: <20200927172855.9813-1-ryanpkosta@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Ryan Kosta <ryanpkosta@gmail.com>,
 linux-kernel@vger.kernel.org, marvin24@gmx.de, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a comment typo.

Signed-off-by: Ryan Kosta <ryanpkosta@gmail.com>
---
V3: Fix commit name
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec040774..a80996b2f5c 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
  * interrupt handlers.
  *
  * Returns: 0 on success, a negative error code on failure.
- * The response message is returned in @msg. Shall be freed with
+ * The response message is returned in @msg. Shall be freed
  * with nvec_msg_free() once no longer used.
  *
  */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
