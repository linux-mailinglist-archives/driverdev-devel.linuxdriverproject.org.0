Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A908D94F5
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 17:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2131C87813;
	Wed, 16 Oct 2019 15:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKDuNITgnveV; Wed, 16 Oct 2019 15:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C48F086456;
	Wed, 16 Oct 2019 15:06:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3319D1BF38B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 291F786456
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7GmhVG7yaej for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 15:06:45 +0000 (UTC)
X-Greylist: delayed 00:05:10 by SQLgrey-1.7.6
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4B22861F4
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 15:06:45 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id n18so11850388wro.11
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 08:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=rhvfW/MCKGI2uxeEW6Nn+IuXscNU7+I/egjWinp71uE=;
 b=f0n+et9vXhAXbCHqu0gWhPEK6MCzXc906FFde3nnutVDBB1zo+n6ZsPhR/E5C53h6s
 i/diHbdVgi/7rcsvxNtAsSMu3OrO6/KBl2CZB9cLTZU75Qw47nb8E9G+O44hiwbQxKSF
 V2QZW4W9P6DCLu+hwxjI3i8PnB7sHnzxMc73vDMXYPSRGF1Ta2OacJbm/atVXMbQVfg4
 u88i56zouDFSWDrgov598pS+yfNf9FyHwv+xAFyrKJ5fP35+/u6GAqqCimiSvUsP/UFQ
 t+/7a8qZMhiVgk+ldhokMwdZRj5HJRXV+7oPbEn4gFQ7P1avlas5OINJLuGYzNdjNWFd
 bVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=rhvfW/MCKGI2uxeEW6Nn+IuXscNU7+I/egjWinp71uE=;
 b=C/dbEBH04znSNGj7ITUXBhI1vCbTszoSz5PROybZrhrqN/vTGcEHYFrfvJ9fGFl1fo
 krRvyTuEXNwoOA5MIvFgJVACN0wMLBdWnunbp3KS3J8l97cvqMXBdwwcVrco6Cmct34N
 6jX2SkER418gSThqLnFMTWxvOj5wx3YpctHrv8pMh7pEhwl+OQFmvBn5NsOc9fLeJ3Eo
 SZJAvQbfYIjRgUDVBuEEUV+aG53jxHfuLGRgBTZgkOO15uVw2VY+Xw0hUiHe1SKgCN/0
 EoJerkMa9pe1Nyi2JQd59qu3aYqET8D1KtWG/0gfEDYZ4dc5AuPAVM/FKSxY1WeYy0Md
 c5ag==
X-Gm-Message-State: APjAAAU0scQhUSvD9NCN6GZWzNCiRuH9CJg7YSdx12871eYr9apk67Ze
 KTvotkebiWoZRRwCWE6sCEe2DqV8IA==
X-Google-Smtp-Source: APXvYqzWLNszz1Nx7EBZhwr8CSMAeG/Ushr6nHeHKyszLYbN/KtaEJqXIILl35ZKwECUm9JFDurNyMR+fA==
X-Received: by 2002:a5d:4dd2:: with SMTP id f18mr2996914wru.4.1571238093597;
 Wed, 16 Oct 2019 08:01:33 -0700 (PDT)
Date: Wed, 16 Oct 2019 17:01:19 +0200
In-Reply-To: <20191016150119.154756-1-jannh@google.com>
Message-Id: <20191016150119.154756-2-jannh@google.com>
Mime-Version: 1.0
References: <20191016150119.154756-1-jannh@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH 2/2] binder: Use common definition of SZ_1K
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

SZ_1K has been defined in include/linux/sizes.h since v3.6. Get rid of the
duplicate definition.

Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 265d9dd46a5e..a606262da9d6 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -65,6 +65,7 @@
 #include <linux/ratelimit.h>
 #include <linux/syscalls.h>
 #include <linux/task_work.h>
+#include <linux/sizes.h>
 
 #include <uapi/linux/android/binder.h>
 #include <uapi/linux/android/binderfs.h>
@@ -92,11 +93,6 @@ static atomic_t binder_last_id;
 static int proc_show(struct seq_file *m, void *unused);
 DEFINE_SHOW_ATTRIBUTE(proc);
 
-/* This is only defined in include/asm-arm/sizes.h */
-#ifndef SZ_1K
-#define SZ_1K                               0x400
-#endif
-
 #define FORBIDDEN_MMAP_FLAGS                (VM_WRITE)
 
 enum {
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
