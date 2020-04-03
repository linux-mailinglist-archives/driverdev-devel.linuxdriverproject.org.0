Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B899119CF46
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 06:25:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44A09868D0;
	Fri,  3 Apr 2020 04:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 98_JPrvdGJrY; Fri,  3 Apr 2020 04:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69136863FF;
	Fri,  3 Apr 2020 04:25:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FFF21BF38D
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 04:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C5D1863FF
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 04:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Te4FyNcT0cFV for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 04:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9F8E863E3
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 04:25:11 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id nu11so2408997pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 21:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyD2kX0rtGFxJhOxxjgdsGTPUrD/FjXjSvw4eMWluYU=;
 b=I+Q5xBnw6OlNyc1WeYEuiKJUTVH7pscJdTTt0CEbl2LzbrJ9EOwk04CgLOETAycBeQ
 0GyVQ2DWmVk0q5GewcChYtUHbGpq2sr/KkEvTTeZjZ99GSl3oVE6JvDmWhDwOoRGvmdl
 HwBKGy5bBPEL9ZB6jGxhb+k02kWIErPtOdWSmKDH8nRok/kagwYsZGxVIE4MS1O2VyDc
 nyI5qdFNfX4MZMNJQnuvlHqjiol3dLFc7SDOUYIbG25OJs3onxxEG09q5xMyM6LlD0wD
 YFsyfoxiBFCX/BaijsYn8l830uwB5L/C1MAJL0M0D7psWtuGNZwy2sBzuQFIFFPUcABL
 4dEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyD2kX0rtGFxJhOxxjgdsGTPUrD/FjXjSvw4eMWluYU=;
 b=n5JwgprCvLR8B+NbbgApSmKFbgMU22O4lVqZneGrC16rK5aJA/g1YRmIWra9dGTCj6
 jNv1HnlfmHDYGjBC1lhvsLWdV8Ox/aSmS03eSs2TQEXkBLwriKUNQPw6T9ddyujfKR2l
 I7faic0ag7eT77E+xPbRxl7KVkZySXsx4QxUWO77XneHR1uMNYmPK3jdvz7NxP7S4DGw
 UY9Dl7jj4pBZkdZHCwoHJzYPIfOft25X0e4Y3OVP7S59iiWKc9tRA1LY36CREhieNrMN
 GIWzyaxGjPxjK/Wm1YGPbMQIy+zuVLjI4xOyNvTHDiG6s41Xga4a48GlCVGwnjxUF+jY
 5g7w==
X-Gm-Message-State: AGi0PubFMrBcieMvEiLVAuIEbOm7STrLJMzGww0lHJqvXbml8cq56O6z
 n+dXtn1QMX/Q+5aePGXTjc8=
X-Google-Smtp-Source: APiQypLUFoTcgC53/RD9U2GcTptF5bIO1QeLIw/HD5iIXFZnYExMi6C3tKHE3v7Uavp2U/mKA1dw5Q==
X-Received: by 2002:a17:902:82c5:: with SMTP id
 u5mr6320102plz.254.1585887911382; 
 Thu, 02 Apr 2020 21:25:11 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id l190sm4760286pfl.212.2020.04.02.21.25.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 21:25:10 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Laura Abbott <labbott@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: android: ion: Align with parenthesis
Date: Thu,  2 Apr 2020 21:24:48 -0700
Message-Id: <20200403042448.863689-1-jbwyatt4@gmail.com>
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

Align two different lines of arguments with the parenthesis
of their respected function definitions. Fix style warnings
of matching alignment.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v2: Change comment title and summary
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

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
