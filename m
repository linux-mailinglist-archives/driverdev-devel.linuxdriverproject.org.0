Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5FD2DECA8
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Dec 2020 02:49:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E363F87C06;
	Sat, 19 Dec 2020 01:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q5t9lBNtR0Uj; Sat, 19 Dec 2020 01:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C42B87BD8;
	Sat, 19 Dec 2020 01:49:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 833301BF9CC
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 01:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 576EB2E377
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 01:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nmv5G-oYHT9X for <devel@linuxdriverproject.org>;
 Sat, 19 Dec 2020 01:49:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by silver.osuosl.org (Postfix) with ESMTPS id 1AD942039C
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 01:49:03 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id c79so2612774pfc.2
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 17:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2j49Gx9LYlDWXbgch6bH1paojmD1EOzxW+XQY6MZRdo=;
 b=bfKeBCz6ASxeMkwKtCqauSuFWOsC2RQF6Fma4qvpVyhG3PHWbW1jalMFcH7BSLybSP
 vMbZGR6G+ehSGm1k7R++SCqNbBu5NurHc6xfrNi/mgcLfChuluKFAdavXS5F4K3zPI6s
 oFtYyLC26pHvjY8qjDVCRBxuNTvFeLSyD48RJ0T4o6GAhYLWdoYlGyO9GESEk7/DdNKo
 ttZXtvmmUlRmSRc9WINAA66u+0HD7zCHvFFzYosnzp46MUsXcuB5pLNuc4Fl+ZySyqOD
 VpdEL6snhkyn74uJ/KgSJ2YGzSoudRu4qPK2vR2/sUcdB8GQ+OQM76FNW6gcvDnJrEdJ
 pN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2j49Gx9LYlDWXbgch6bH1paojmD1EOzxW+XQY6MZRdo=;
 b=Wrtokz53bOSCXKkCQNvAk+oGgzHMCkXAcRHaUZcs9LsvwWhQJSEjjkjdEi9mzOKPJL
 TrQo3PW00WF1fwLFsRlBmlGJNbnTOogVZ4K2GgA6/9Emlt/2VWVrdecsKfKTo+T5nFqv
 iy1dgmeQpkuiiGjr9KU1KM9ELko7cEi6PXq8ENYRc7B/4Nj9FtZCn+k6kDdeLSZcTVlO
 k9U6IzXKVXMHALjmiBw135pL/SkTw++7wY6ON9Po5M4ti4kmx9AUsXmH0+NMAWVxqp/b
 cKzBEHDreyQy7xT+4UbWZIWh1dLIgJZFKslluLtT/fmW5fWfndOVtvk3X8soTdxmwjoM
 C9Qg==
X-Gm-Message-State: AOAM533L+GDjXlXbQB0ocC9IkdAwHfRQNYF32sOoZg9aDcRHPThyHA4G
 kWnLySS5fQgEWLtZeuGK82I=
X-Google-Smtp-Source: ABdhPJxh1ZyRmnzJIDbIIKxPR2KDP7jR0TIBiZ9oyDFQeNX+VgI5+/z9Q2KyLmPTlqS/JxskGE1q5A==
X-Received: by 2002:a63:d62:: with SMTP id 34mr6675669pgn.276.1608342542752;
 Fri, 18 Dec 2020 17:49:02 -0800 (PST)
Received: from localhost.localdomain (c-24-16-167-223.hsd1.wa.comcast.net.
 [24.16.167.223])
 by smtp.gmail.com with ESMTPSA id 77sm10084904pfx.156.2020.12.18.17.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Dec 2020 17:49:02 -0800 (PST)
From: Daniel West <daniel.west.dev@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH] staging: qlge: Removed duplicate word in comment.
Date: Fri, 18 Dec 2020 17:48:29 -0800
Message-Id: <20201219014829.362810-1-daniel.west.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Daniel West <daniel.s.west.dev@gmail.com>,
 netdev@vger.kernel.org, Daniel West <daniel.west.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch warning:

WARNING: Possible repeated word: 'and'

Signed-off-by: Daniel West <daniel.s.west.dev@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index e6b7baa12cd6..22167eca7c50 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3186,7 +3186,7 @@ static void ql_enable_msix(struct ql_adapter *qdev)
 		     "Running with legacy interrupts.\n");
 }
 
-/* Each vector services 1 RSS ring and and 1 or more
+/* Each vector services 1 RSS ring and 1 or more
  * TX completion rings.  This function loops through
  * the TX completion rings and assigns the vector that
  * will service it.  An example would be if there are
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
