Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A2CDCA48
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 18:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 992BE227A0;
	Fri, 18 Oct 2019 16:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UBa5HnbQz1CS; Fri, 18 Oct 2019 16:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2301207B0;
	Fri, 18 Oct 2019 16:07:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C58B1BF31B
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 16:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18CA787447
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 16:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dvQu-1-y4uF5 for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 16:07:11 +0000 (UTC)
X-Greylist: delayed 00:27:10 by SQLgrey-1.7.6
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41DAD8815E
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 16:07:11 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id a6so50743wru.1
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 09:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=PaZjsPzR+1FQ3qkTRVScxabvx3Efz47jv0N4anko9Eg=;
 b=p3OJhjA2j7FCMdp847ipwinNOL9liOJNc4HbX6pAJPp7oFWqosCJS2/2tSKvRhe4Qt
 aA22KP/Nf4Ig1Nn8QwbOG8f7xAZ5nXT2CqS0e1nFWCVfaKSUFaKS5Te/Rj2v5MELYsnU
 m0HxvxUiPWqsEC/azbuHlmJWeJ80kFX+KGpetKOqcEGCpFOCegPRAYrUlIDUVGQb84yz
 B5qKY8bGXbV9BV06YtL+4yphuwc5VURRiKkzcnEXV4TeczjzYWA+hJF98a8QJTy1SVtC
 hkU7EVOFHR51UYe6jG0+dFPd1fO0DxCdpIqGTsWVoLcxDaxvyt/2tESLRZN11yF9zNOU
 xt+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=PaZjsPzR+1FQ3qkTRVScxabvx3Efz47jv0N4anko9Eg=;
 b=rdklYNsa42BT3ducDp9pVuJGM5bLTNlU7h5AZhrq3/s+z2N0hmc0aDkEXYWnGyr/Tv
 /mN6nU+JF7OgKHg2T9LM1Ztzycf3KyzjmHqjAxk3H8im2zRsw5EpfWFMciUz7Yuu8jHE
 dNqTGLRdg2zo5EL1u+eL4F4SG6qLxxIwj/3oZFQUZk9xZy14rRE+rz+7ElNODGIA5yzV
 UE+JFAVOZfrLcSNZj3RHvL8OYG3O7uSGiLkRKUtiXkdbLxLlVekBYt0TfXfdRrxql90O
 OqR3yCsaWKV26TEAdARJcsYwypsZyt1j1VLD0R3A0wZCkSLsPo8bJJ0JLSF3cwkqfLpH
 FS0A==
X-Gm-Message-State: APjAAAX2i7d9M5oaxQLwcvQkq3y5VHSecvT6N3HfwrcdrjrWF3TLRXMv
 BkVP84/NQ3efr63MMx+DQuJu3cicmQ==
X-Google-Smtp-Source: APXvYqzmFOB1c4YwA/6jO3dHH7qq+1M5HdZYJXGCq2REnWbY70L5/pHyVa7nuMkInVndEbmzQlh7RvKKgg==
X-Received: by 2002:adf:e441:: with SMTP id t1mr2855713wrm.395.1571413199056; 
 Fri, 18 Oct 2019 08:39:59 -0700 (PDT)
Date: Fri, 18 Oct 2019 17:39:46 +0200
Message-Id: <20191018153946.128584-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH] binder: Remove incorrect comment about vm_insert_page()
 behavior
From: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, jannh@google.com
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vm_insert_page() does increment the page refcount, and just to be sure,
I've confirmed it by printing page_count(page[0].page_ptr) before and after
vm_insert_page(). It's 1 before, 2 afterwards, as expected.

Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder_alloc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index d42a8b2f636a..2faada3e97fd 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -267,7 +267,6 @@ static int binder_update_page_range(struct binder_alloc *alloc, int allocate,
 			alloc->pages_high = index + 1;
 
 		trace_binder_alloc_page_end(alloc, index);
-		/* vm_insert_page does not seem to increment the refcount */
 	}
 	if (mm) {
 		up_read(&mm->mmap_sem);
-- 
2.23.0.866.gb869b98d4c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
