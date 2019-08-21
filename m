Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AB596E23
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 02:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0628983AE3;
	Wed, 21 Aug 2019 00:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5QZzlsTZBOu; Wed, 21 Aug 2019 00:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 802A8805EE;
	Wed, 21 Aug 2019 00:18:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EBAC1BF989
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7C08486E5A
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jXPn82S4pd0h for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 00:18:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0524D86DCF
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 00:18:51 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id m9so297833pls.8
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 17:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wYmP7l7xYXEkpyG7dJwFSke/FRHdQ6zd7wLrtCe0Nro=;
 b=k4427tlhkbAql47p/Igzqz9qG7iGY4VAjnTQCSvYQF2yNIuU9dyzJC4kHtm0M4r5eR
 sqY80jG2mnHwORi1nDP7JqJPuHA2FqonA4I3Rp8wmASaosWeQg4MUwiQfW+HIqn2T8Nh
 xORTETo+y/tIN3brE8Y+v2OMPBAiaQaX1f3NP23rJCEZRPPOvnvwCfuJnK57bBcfwqV/
 7ixqGAQnp8uQnxqAZ9d2Fawi6vDDSM45A2MJPObeCosJZLGdPRdq3pING/UyJWnltOHt
 PnAUEVlSqR4ZDKjlLk5bYhYAZ0+EUbNrV2O0aVunvGz3l6+AhIFtwuRVz0siuG1io3cP
 Gx1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wYmP7l7xYXEkpyG7dJwFSke/FRHdQ6zd7wLrtCe0Nro=;
 b=rHG0WevmmrgqDlCyE3RLbOTT4HfSXutfFrifrvGj8XPi2d0dn9qfvhIptyCnPl7i4L
 tD7/ZwSjI4r7+naV9QcLzV0cETTvgSpUIV0IEajkq83emPx0tgsTgDX92S+szteqBBov
 qTaDvPtr+EU3MuqcrSkx7aGmn1mndVf7HwEDskiljBn6AFHTUfnUTyODYtTKXXDhMYGk
 wRTDaCctIZFL6XXqU29hqZbwgJjA+3jdzePklYUB8+GJiW9dyLVtPv+YJkMgvEpbtz1P
 q1H7h8ioxo7u+Gx99Q5exlZOuNn5g8CR7HbFrPH1rQZri8JEzA5R6uYbtYPDbag25Tm9
 xKMg==
X-Gm-Message-State: APjAAAWyrTfC3l/HToJnrJxHGtGNG0JV77u+Z5ktl5PPxr6LYes0+IRi
 p0idYJPzPlAB8kBr8YId9IE=
X-Google-Smtp-Source: APXvYqy4XOtwQD0YpAxEXf3o3I+klcEKkKhlauOgufGqS5op00QX4mOatNkI/mvUJE8aQ6wDXxuCsA==
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr30180035plk.180.1566346731539; 
 Tue, 20 Aug 2019 17:18:51 -0700 (PDT)
Received: from localhost.localdomain (wsip-184-188-36-2.sd.sd.cox.net.
 [184.188.36.2])
 by smtp.googlemail.com with ESMTPSA id g2sm18806323pfm.32.2019.08.20.17.18.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 20 Aug 2019 17:18:51 -0700 (PDT)
From: Caitlyn <caitlynannefinn@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging/erofs: Balanced braces around a few conditional
 statements.
Date: Tue, 20 Aug 2019 20:18:20 -0400
Message-Id: <1566346700-28536-3-git-send-email-caitlynannefinn@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Caitlyn <caitlynannefinn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Balanced braces to fix some checkpath warnings in inode.c and
unzip_vle.c

Signed-off-by: Caitlyn <caitlynannefinn@gmail.com>
---
 drivers/staging/erofs/inode.c     |  4 ++--
 drivers/staging/erofs/unzip_vle.c | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 4c3d8bf..8de6fcd 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -278,9 +278,9 @@ struct inode *erofs_iget(struct super_block *sb,
 		vi->nid = nid;
 
 		err = fill_inode(inode, isdir);
-		if (likely(!err))
+		if (likely(!err)) {
 			unlock_new_inode(inode);
-		else {
+		} else {
 			iget_failed(inode);
 			inode = ERR_PTR(err);
 		}
diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index f0dab81..f431614 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -915,21 +915,21 @@ static int z_erofs_vle_unzip(struct super_block *sb,
 	mutex_lock(&work->lock);
 	nr_pages = work->nr_pages;
 
-	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES))
+	if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES)) {
 		pages = pages_onstack;
-	else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
-		 mutex_trylock(&z_pagemap_global_lock))
+	} else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
+		 mutex_trylock(&z_pagemap_global_lock)) {
 		pages = z_pagemap_global;
-	else {
+	} else {
 repeat:
 		pages = kvmalloc_array(nr_pages, sizeof(struct page *),
 				       GFP_KERNEL);
 
 		/* fallback to global pagemap for the lowmem scenario */
 		if (unlikely(!pages)) {
-			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
+			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES) {
 				goto repeat;
-			else {
+			} else {
 				mutex_lock(&z_pagemap_global_lock);
 				pages = z_pagemap_global;
 			}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
