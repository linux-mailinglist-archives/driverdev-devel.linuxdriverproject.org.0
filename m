Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A95AC39C33
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 11:39:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C186986ED5;
	Sat,  8 Jun 2019 09:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNS43CvQYnx5; Sat,  8 Jun 2019 09:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CFA185735;
	Sat,  8 Jun 2019 09:39:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96D261BF32E
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 09:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 93C608582C
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 09:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QD863C8myw1v for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 09:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B80685735
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 09:39:42 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id v11so2434322pgl.5
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 02:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zUjxWxq5BrI2FdDPrseDzMNtgvtMjERhQiQzZo7nm7E=;
 b=TAMq7WgCUSTJYkkb+calodVXAtvnqOeZde9ehQHvFCXrubzN4fWZzQgbwa8bHq6C1M
 AtlxxKBDISu2nzuZWa7xYljbMFCEcOW2kExJ03L/SfOpiQzq5Ai0mx5W/TmR98lz+mpe
 88iVjnMKH+Xop89CHXoJOZv30UlNude7LIPzdm3mXq02qdVDII3LTCzxmihX2CGPZbSd
 hO4mazSLbrevzHNGJvMUtuImLT+94ajD0mJ7QdK3WORuMX0Pdm/aEDRWyHofxctadCmM
 5nwENFnPVVc+BtTwLLLMehuDKltXUs6zVZdOlqPgBnVVXlVYUnMy9mOZNmql49weDNe6
 hhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zUjxWxq5BrI2FdDPrseDzMNtgvtMjERhQiQzZo7nm7E=;
 b=joRGNzE7aNAGkHkvaj+5bBewk2WtMqGVaS/hGRPGFeC5T1IeAHLDWzdcxPXWK7Vr1f
 WEUNnXjoDQiXTXretpNW5sxuF75Wq4ElE+MGQaWOZgdpcOp89M5IYw458knW6tSyMSrQ
 +HaxZ6nU65Puxx+97PHBquTltDy8KewV3nHpAsE1HZTfaVpfo0+Gkinn/3GszxfgbxGA
 opyGZ0i1gE9Y+vkNPpU4fC1bD7hOK48bGln2pFK/Zzm+40F4chPy6QB6kuLcoyY6DceK
 p7hfhbqnOuDRxSnxOy7SarhMO3so4K4Xt5HWDkL5t9nYu5B8Sx7O5YB/5Pda9Id4DnOR
 yOMQ==
X-Gm-Message-State: APjAAAVq8u/BzVNPuyuhbwf9k5v4PmBJLvSEbJak68kbBTzOu6NsstQU
 zrQV1bYtsxuh5JyKCt7uf8g=
X-Google-Smtp-Source: APXvYqwiTuXWweBI9kCIpvuh3BS9bBAfUi5CdTkOsKqi9kmZQJOXNb+PRo+WIyuorc2QmIo1ixGesA==
X-Received: by 2002:a62:4c5:: with SMTP id 188mr63276002pfe.19.1559986781709; 
 Sat, 08 Jun 2019 02:39:41 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id 66sm4883523pfg.140.2019.06.08.02.39.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 02:39:41 -0700 (PDT)
Date: Sat, 8 Jun 2019 15:09:37 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: erofs: fix warning Comparison to bool
Message-ID: <20190608093937.GA10461@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below warnings reported by coccicheck

drivers/staging/erofs/unzip_vle.c:332:11-18: WARNING: Comparison to bool

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/erofs/unzip_vle.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index 9ecaa87..f3d0d2c 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -329,7 +329,7 @@ try_to_claim_workgroup(struct z_erofs_vle_workgroup *grp,
 		       z_erofs_vle_owned_workgrp_t *owned_head,
 		       bool *hosted)
 {
-	DBG_BUGON(*hosted == true);
+	DBG_BUGON(*hosted);
 
 	/* let's claim these following types of workgroup */
 retry:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
