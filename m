Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57139DD0D4
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 23:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 882BE87F34;
	Fri, 18 Oct 2019 21:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIMUzDDj2F3K; Fri, 18 Oct 2019 21:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D49685BA3;
	Fri, 18 Oct 2019 21:05:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5AC31BF5F5
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 21:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E110D868C7
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 21:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8IiFXZ5USm0 for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 21:05:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE8DD85D54
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 21:05:11 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id e14so3234882wrm.21
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 14:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=2yGsXMIwSm/Oms9K6hm98bhT5jbYAusnTPbiHrrYad0=;
 b=ib8rONFiSdw0BDSG+fxUDZtXMMwPngNeUEA6AjlPYGXaxYKaIGNXfGuedTpaJhacz3
 gWcNXXKa7OPTQXI0awBSIQLQc2NnAlHK3JYKKA1ClYrxoNCNyrmKk6CfE2ZGKCGUWQYg
 x3DQ8eg/T78rQFgfpTotHKHcF+p3HTsr7LwQEfk/a9hmFpyPgSrn4G5HQa8ks8I64jXy
 HEl7wNLMJRNSNi3tN/jIklfJzsAEm1bkWGLbGuKP/qS63rAhQSJr/NKULm1MnFcUHEIu
 SorZARfImxD2SAWZcXHZfp4F76N/wiZdxPenIfXHj4Sqs9iZy4j8D9flN7sigoLW05PH
 6zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=2yGsXMIwSm/Oms9K6hm98bhT5jbYAusnTPbiHrrYad0=;
 b=cc6ieTDCLbYdZmjVe5i3XPgJ7VgwyIqoLnBRuGnDhp8t2z2l4jbGHqFW71Qq8Llo4g
 GikuDOR9uhi2vqvfTcEg0JE25wEy57+4Y2BilEfMcosKhapZAHI9IujFg2NyPN1wNUY5
 Zn3b+EHkSOpPmrqGq7IRMTPDKFGKR8x3QnasdH7D5fDf7V675M0jhkDiOocojekqlAG0
 KmS+swsPV12+PxqNhQ+uzu1GEg60H2UPH0e0pj3OJy/nfzdY4B/dXo4EtJC03JAJ5NUg
 IZC28PavursWGPNNulqCENKO0shRvi/bMcRmYrABogC5Ao/ujxxyFktqR2tPZ1372If1
 e4hQ==
X-Gm-Message-State: APjAAAUQEFkezbWx7u/yK1PadMcv3T0wY/vU0sOpiDT3mG0LMt/uqqJ9
 PB2uEK13/8+Ibrs0flvzd6JX+pWE5w==
X-Google-Smtp-Source: APXvYqwm/CSefU1WSdV1bcQP44CWNwDtbRYPxtlsoSCbHb/sBn682/brX+Qi6nmw4KJj+tq8Ei8AzOxerQ==
X-Received: by 2002:adf:e38a:: with SMTP id e10mr9805449wrm.348.1571432210347; 
 Fri, 18 Oct 2019 13:56:50 -0700 (PDT)
Date: Fri, 18 Oct 2019 22:56:31 +0200
In-Reply-To: <20191018205631.248274-1-jannh@google.com>
Message-Id: <20191018205631.248274-3-jannh@google.com>
Mime-Version: 1.0
References: <20191018205631.248274-1-jannh@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 3/3] binder: Handle start==NULL in binder_update_page_range()
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

The old loop wouldn't stop when reaching `start` if `start==NULL`, instead
continuing backwards to index -1 and crashing.

Luckily you need to be highly privileged to map things at NULL, so it's not
a big problem.

Fix it by adjusting the loop so that the loop variable is always in bounds.

This patch is deliberately minimal to simplify backporting, but IMO this
function could use a refactor. The jump labels in the second loop body are
horrible (the error gotos should be jumping to free_range instead), and
both loops would look nicer if they just iterated upwards through indices.
And the up_read()+mmput() shouldn't be duplicated like that.

Cc: stable@vger.kernel.org
Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder_alloc.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 539385634151..7067d5542a82 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -277,8 +277,7 @@ static int binder_update_page_range(struct binder_alloc *alloc, int allocate,
 	return 0;
 
 free_range:
-	for (page_addr = end - PAGE_SIZE; page_addr >= start;
-	     page_addr -= PAGE_SIZE) {
+	for (page_addr = end - PAGE_SIZE; 1; page_addr -= PAGE_SIZE) {
 		bool ret;
 		size_t index;
 
@@ -291,6 +290,8 @@ static int binder_update_page_range(struct binder_alloc *alloc, int allocate,
 		WARN_ON(!ret);
 
 		trace_binder_free_lru_end(alloc, index);
+		if (page_addr == start)
+			break;
 		continue;
 
 err_vm_insert_page_failed:
@@ -298,7 +299,8 @@ static int binder_update_page_range(struct binder_alloc *alloc, int allocate,
 		page->page_ptr = NULL;
 err_alloc_page_failed:
 err_page_ptr_cleared:
-		;
+		if (page_addr == start)
+			break;
 	}
 err_no_vma:
 	if (mm) {
-- 
2.23.0.866.gb869b98d4c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
