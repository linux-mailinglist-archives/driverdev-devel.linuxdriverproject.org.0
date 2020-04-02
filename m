Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F73919B9DA
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 03:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67FFC87C6B;
	Thu,  2 Apr 2020 01:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1QLRj1yNVBE; Thu,  2 Apr 2020 01:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C71618789B;
	Thu,  2 Apr 2020 01:23:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF5FF1BF473
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 01:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA5932612A
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 01:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKkrOOlLwSo2 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 01:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id DDE30207A2
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 01:23:47 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id v23so703666ply.10
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 18:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
 b=lrnBX7I6IKNCgf1u3GPjWv9QoK7is/FfxG+LIXGzXoYz1Q+HIXh/mCNNMKcQjJRmQS
 2dBtTJMH24EcnO3L40rmSFnqUTq5oFVKQBhXCqzS8e3j0lJ3hznCoyUj3CjHiPXPnN/Q
 VLMKCIvdn3WhMDO54WQqDsUf2+bybLMzkzn9nRL30XD/sEozqQi77BBlKBuJ6FJXiniW
 7TT7bLBuDnoDhpTHg77HLwEqzqKv/2C4eKDrFfhbXqDCxcLGgq+FaU01o/cBd6nTlR1I
 1G9feHEB3Z1ObO1GSPb0sMl4d6re664SUkngnuJz9ao8jlwf7D0gJNpEEYp6mwKEqPJl
 x1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
 b=tAPbepJk7k2UUIZmcCBvesxuFKpMcY64/oPp8SX/q4Ni02/gYHOiS71OhbXXt/AgNx
 Y8Mn3px8X8idEzWlGp84ctOKr1QKoAu2f9rUJCp77Bg7RDgWtbExubqbqHtMajbbhGWu
 bFno8x6jElIf+qZnJqfGI1twQYJQcw0JYQKmqqhacBqJYW0HRAYiy2gRrFJDJtr+470D
 qXHNX4HCx/07WD8l/pMkwQO7BlEdvwZAQ8pbz/7r+u8x7C1jQ0zIgDSzwJkMiJ9pvgd4
 yC8+qJduzx3UKb/ms2wTNxybgb8p615yaQbuFhfgfyn1//OzKR/QEaK3QQDM/ZHYJdgP
 lCKw==
X-Gm-Message-State: AGi0PubW/RF21N8RTQUwhh5WjSkBqUObSMgs20rM4xRV7q41nMWjDX8t
 WPPqgfZwCyUB0c3uRhFoibw=
X-Google-Smtp-Source: APiQypKphdtygtFszPZHfDmC+v0cOhFzs1P9x5/bGH+iexQPlMgBXonWT55xdU1Z9qFQawYE5bgI5Q==
X-Received: by 2002:a17:90a:a602:: with SMTP id
 c2mr931092pjq.135.1585790627416; 
 Wed, 01 Apr 2020 18:23:47 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id x71sm2424587pfd.129.2020.04.01.18.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 18:23:46 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Laura Abbott <labbott@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: android: ion: Fix parenthesis alignment
Date: Wed,  1 Apr 2020 18:23:15 -0700
Message-Id: <20200402012315.429064-1-jbwyatt4@gmail.com>
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix 2 parenthesis alignment issues.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index f85ec5b16b65..0198b886d906 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -37,7 +37,7 @@ static void ion_page_pool_add(struct ion_page_pool *pool, struct page *page)
 	}
 
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							1 << pool->order);
+			    1 << pool->order);
 	mutex_unlock(&pool->mutex);
 }
 
@@ -57,7 +57,7 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 
 	list_del(&page->lru);
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							-(1 << pool->order));
+			    -(1 << pool->order));
 	return page;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
