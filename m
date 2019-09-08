Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F0BACAD0
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 06:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8426585C4B;
	Sun,  8 Sep 2019 04:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKEBletCk-8E; Sun,  8 Sep 2019 04:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D309485B78;
	Sun,  8 Sep 2019 04:36:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C97B41BF403
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 04:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5F3986DEE
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 04:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYhJgkkCykXR for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 04:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E4FF86303
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 04:36:36 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q21so7056041pfn.11
 for <devel@driverdev.osuosl.org>; Sat, 07 Sep 2019 21:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RtKloxjFpA2t5GP1ywopBt0f8T0oeF2HbZwg4ACNdgA=;
 b=I3nPu8RMFPAOjfzb+RUf8Mi5gIkb+Cu56HHzE+93Xw25Xn1IgtLQblsyCgVYhfhfaf
 1wh7RGmFtbt1LbBcG3sqfpAPGJbV4nKGpXkvHL7W1Jbz2JCHvacL1js3Kny6IWT6lF4X
 NNzQTygYqAYbriWrmvEwl2KqraJ9weRhQPeFhi1fOX53BVG0lgCjV3NLg2kzug4TEQRc
 KPZkGTbYLEXreZrYkpPuPNKZ94ZYHNSnUPsDWfqqAnic7ePQAjjQKft1Yf1xiSyqMJQa
 AmkJJ52qBm1rLO3hF/659y3XDTahKd7azIvAmZcOR7EHtWc2vboqgjx9vq7FZRLZH5Md
 kV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RtKloxjFpA2t5GP1ywopBt0f8T0oeF2HbZwg4ACNdgA=;
 b=b+d86XAizu1dsAkQN5vj8+YgKH9S9OLMm82YL6v7RCRPwTsq+t1b8t778/D+OY0KJm
 YDZIIXtHRLtLOfZBPEbyELz9BL7d5FsaHX7ms66f9BGb0miKql7JKyqRAs2ZPtGbOYV2
 UGgh34+R0eVimCFYfDcSalLsVmLEpDadXyjIa3v14VS0fPQ3q0fbDMXcYbRoPKw0cRy1
 6pAHdVynDn/GZ7F88wBRXyTk7TKmgkwaXbXjCK/6ueuvL2nycTXbG/g3X5bhoFzQ4QKm
 UfkqVUVErtaZYPM9t+OvCSSxZcuYefRFvJJqF1wSXKAG5kWuE6JU8ztRyLuJDT4WNJM7
 jglg==
X-Gm-Message-State: APjAAAXlfBjWymb8s8M7zbklWfEjpgVQQS8BOXyXf1bQGmBU7p6/Mijf
 2koZ3zUj/n+MQN0WzQsZz0A=
X-Google-Smtp-Source: APXvYqyw3tU05UDMXdb6AFEITR7kgX4+Eq37oNhLv/4hoo+Qf91BgNisp1ZeprOqEnZ4Y7w2V8QLTQ==
X-Received: by 2002:a63:2349:: with SMTP id u9mr12722661pgm.214.1567917395763; 
 Sat, 07 Sep 2019 21:36:35 -0700 (PDT)
Received: from localhost.localdomain (ip-103-85-38-221.syd.xi.com.au.
 [103.85.38.221])
 by smtp.gmail.com with ESMTPSA id v184sm8435643pgd.34.2019.09.07.21.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Sep 2019 21:36:34 -0700 (PDT)
From: Adam Zerella <adam.zerella@gmail.com>
To: labbott@redhat.com,
	sumit.semwal@linaro.org
Subject: [PATCH] staging: android: ion: Replace strncpy() for stracpy()
Date: Sun,  8 Sep 2019 14:34:50 +1000
Message-Id: <20190908043450.1078-1-adam.zerella@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Adam Zerella <adam.zerella@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Using strncpy() does not always terminate the destination string.
stracpy() is a alternative function that does, by using this new
function we will no longer need to insert a null separator.

Signed-off-by: Adam Zerella <adam.zerella@gmail.com>
---
 drivers/staging/android/ion/ion.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index e6b1ca141b93..17901bd626be 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -433,8 +433,7 @@ static int ion_query_heaps(struct ion_heap_query *query)
 	max_cnt = query->cnt;
 
 	plist_for_each_entry(heap, &dev->heaps, node) {
-		strncpy(hdata.name, heap->name, MAX_HEAP_NAME);
-		hdata.name[sizeof(hdata.name) - 1] = '\0';
+		stracpy(hdata.name, heap->name, MAX_HEAP_NAME);
 		hdata.type = heap->type;
 		hdata.heap_id = heap->id;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
