Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B81BE86D53
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 00:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA63321549;
	Thu,  8 Aug 2019 22:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eEh-WJiandZ; Thu,  8 Aug 2019 22:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66DC6204C1;
	Thu,  8 Aug 2019 22:34:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 094941BF35F
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 22:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06061866E5
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 22:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDVukF-VPvtp for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 22:34:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f74.google.com (mail-ot1-f74.google.com
 [209.85.210.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48FA9866C9
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 22:34:04 +0000 (UTC)
Received: by mail-ot1-f74.google.com with SMTP id b4so64810489otf.15
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 15:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=glpAp26pMe1icqRitidp26IFh6a5KAtyBMYwIFTDOcE=;
 b=W30psaFiIA0cn7RWVZd0TkcI9INoc97phuYQojQUCOq3c0E5XAVZFJaBVeq28e0pnt
 B1oAMa1fipofqyBGlFrKnFec3xqxe14lkG+twN4ilhOwv6VjIBbG4RQMiQqwGw4KaKec
 O6LroXNEUlZnHbw6AHPXrR+fGbtWdEdC0TLEaQZXpKjaq5EEdcv0nu+0jtmC7yYZIu+A
 w8YfnjbxsWMC8980xatvwDxWe2a8hN4VID/95HRkGqf+wrj1fBMNtHMMcT5uydwSxzVs
 UOLbyX0L1dkCzNUH8u91KSnUSaII8kop5QeHfDvXlC907fCwc0i7aKc/tipfQoxLT2Q/
 8oQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=glpAp26pMe1icqRitidp26IFh6a5KAtyBMYwIFTDOcE=;
 b=UTMi075ac7rzDI/Qf8cSwY6SFb6uzvkMT74UoL0+exOMvKoE9MgscRbNAC0Jxhmmnk
 HTNIW18jp3P5bXoEZVeTLe3ys+DR6dgWkrP6UTSCKonRcUU8kCzBDxyBXg9JEv/BiBdD
 2MKxhEgfEio2rNA7TTKnvXQs9hZ8PolpHHiQJvNbEMbzbm/9kUotrsQtKz5afN5nXgtj
 II8MINtcA7JAX4N+8WFht1RZBuLpNpIW0tX3jcGDy8FnPWlIA3Iredt1K2TUfeOnx5ek
 QP/wfmiY0fSnF1pmuhmvLIK5NUERgOv2YzKVMmLNBf9pE7b/9V51WOYZc40atxCS3AuB
 lO6g==
X-Gm-Message-State: APjAAAXKMj387yidfusdmk4rNnzY1E789Q3p1DidAbOVjz7B9BYJLxEP
 fWfkxcx8bKLhJlhG1w1QP6n9WE1UwcM=
X-Google-Smtp-Source: APXvYqwYMoyVBc6m3h6T6jZEVwv9fndM5Olrygl81LtMf4cJkPsvtJbWFB6STk1qAyP4VcI4ifMWkynE+ak=
X-Received: by 2002:a1f:8bc4:: with SMTP id n187mr7001133vkd.32.1565303272993; 
 Thu, 08 Aug 2019 15:27:52 -0700 (PDT)
Date: Thu,  8 Aug 2019 15:27:26 -0700
In-Reply-To: <20190808222727.132744-1-hridya@google.com>
Message-Id: <20190808222727.132744-3-hridya@google.com>
Mime-Version: 1.0
References: <20190808222727.132744-1-hridya@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v3 2/2] binder: Validate the default binderfs device names.
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Length of a binderfs device name cannot exceed BINDERFS_MAX_NAME.
This patch adds a check in binderfs_init() to ensure the same
for the default binder devices that will be created in every
binderfs instance.

Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/android/binderfs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index aee46dd1be91..55c5adb87585 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -570,6 +570,18 @@ static struct file_system_type binder_fs_type = {
 int __init init_binderfs(void)
 {
 	int ret;
+	const char *name;
+	size_t len;
+
+	/* Verify that the default binderfs device names are valid. */
+	name = binder_devices_param;
+	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
+		if (len > BINDERFS_MAX_NAME)
+			return -E2BIG;
+		name += len;
+		if (*name == ',')
+			name++;
+	}
 
 	/* Allocate new major number for binderfs. */
 	ret = alloc_chrdev_region(&binderfs_dev, 0, BINDERFS_MAX_MINOR,
-- 
2.22.0.770.g0f2c4a37fd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
