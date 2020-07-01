Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A4921154B
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 23:44:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30CE32DC02;
	Wed,  1 Jul 2020 21:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IpzWwo4Q7rd0; Wed,  1 Jul 2020 21:44:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E9BC26FD7;
	Wed,  1 Jul 2020 21:44:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8273D1BF5DF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79E8226EAB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OvTT+3p15n4F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A26D26639
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:32 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id e12so19667539qtr.9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 01 Jul 2020 14:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZE1Ra82EV8zzC6/E5WQWhieXpCLt0PY5bUE1J+RqTcw=;
 b=bcwSQcebPQHdgW+FzP2o4Ox5mUXY8NpEYBEeE7BLzC669/Zro7CvvDWnFpSX93MdcT
 /4CIL3vEykW4BI/z/XjWUBmBKcL3pjPo1NAFlziSRuamvP9qcByQpr6e9L7vrZK+5QhU
 Sv+5On9RPRBcyPq0/Uai6BGRuOTWBtjDDh5glTzzPxzAmVIYgUKK7eqtoBeuo9/9xaJ2
 5O5UWYi1ir7RIa3BfaJX9rExhfV29Z5I5WZKaPuJv2NqXuv7bcbI5Mw8i56pfx4aSYAB
 jwNGZyQdAbwjOgHz6CRSmKxs7AqLaKa/lcOv8mkvazsEghpetRz6URlzjESQXAbx5hUE
 LoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZE1Ra82EV8zzC6/E5WQWhieXpCLt0PY5bUE1J+RqTcw=;
 b=QYIDIDEqj54b1TZuBgSB1efCWLioD1UYvxTTm51vUcMNyz6UDz4PYAbWZnnoJO/vGs
 mlQtp/6sDVSzxAHcXM52keiGQRZFlaQxRCrNjUvSs2AR3wzgIhvLa2aOKse/HRrejBwW
 nNodw0AkTZXBEe4SIKDGIo292mXQ6NlMNJaa1h9JVfJ3NlOkzu7wzMHq4iUcC4ssntAn
 MjJLFF/xSp8pPrkC4BL9z7S91hOz1O2OZaPlSmEwAIo8UU7VdHQsiRF/XJVNI6O7S11t
 jFFxHBhsrEYBKZ51LJcF6avw7BUMgiArDsU5U3Y0UjZ8QaYGqsIBU4AVrbth2rcVtzXK
 yLXg==
X-Gm-Message-State: AOAM5313RnqrGGjVV+sD8x7j0ODBbnNsxwr+stbl/vth23QPATpLjxky
 r08ZL15wuXoZvTHxXVT+qb8=
X-Google-Smtp-Source: ABdhPJzVCCTY6twLSYhqFJXzPN48koxplZqHegQoE89jXQ25we8oF7RSUMd9aM6qPglKHZU2r/apTA==
X-Received: by 2002:ac8:710f:: with SMTP id z15mr27692148qto.153.1593639871459; 
 Wed, 01 Jul 2020 14:44:31 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:4cd7:9852:3dad:c366:f019:19b3])
 by smtp.gmail.com with ESMTPSA id x197sm6822962qka.74.2020.07.01.14.44.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 14:44:31 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 2/2] staging: rtl8712: base_types: Remove unused macros
Date: Wed,  1 Jul 2020 18:44:20 -0300
Message-Id: <20200701214420.5566-3-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200701214420.5566-1-mukadr@gmail.com>
References: <20200701214420.5566-1-mukadr@gmail.com>
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
Cc: Mauro Dreissig <mukadr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Those #define's are not used anywhere, get rid of them.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/basic_types.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8712/basic_types.h b/drivers/staging/rtl8712/basic_types.h
index b8ecd92ca9d4..aecded87dd4c 100644
--- a/drivers/staging/rtl8712/basic_types.h
+++ b/drivers/staging/rtl8712/basic_types.h
@@ -14,12 +14,8 @@
 #ifndef __BASIC_TYPES_H__
 #define __BASIC_TYPES_H__
 
-#define SUCCESS	0
-#define FAIL	(-1)
-
 #include <linux/types.h>
 
-#define SIZE_T __kernel_size_t
 #define sint signed int
 
 /* Should we extend this to be host_addr_t and target_addr_t for case:
@@ -28,8 +24,5 @@
  */
 #define addr_t unsigned long
 
-#define MEM_ALIGNMENT_OFFSET	(sizeof(SIZE_T))
-#define MEM_ALIGNMENT_PADDING	(sizeof(SIZE_T) - 1)
-
 #endif /*__BASIC_TYPES_H__*/
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
