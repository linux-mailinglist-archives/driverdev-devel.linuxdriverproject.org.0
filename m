Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E2E838EE
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 20:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D321D85E6F;
	Tue,  6 Aug 2019 18:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dReUR6rQaY9X; Tue,  6 Aug 2019 18:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1EE785F11;
	Tue,  6 Aug 2019 18:48:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 043481BF2F4
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 18:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 017FC20131
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 18:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjgHEbVqAZ9Q for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 18:48:10 +0000 (UTC)
X-Greylist: delayed 00:07:22 by SQLgrey-1.7.6
Received: from mail-vk1-f201.google.com (mail-vk1-f201.google.com
 [209.85.221.201])
 by silver.osuosl.org (Postfix) with ESMTPS id 23D1B21FF6
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 18:48:10 +0000 (UTC)
Received: by mail-vk1-f201.google.com with SMTP id p196so38146414vke.17
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 11:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=KgzH53PwLND1jLbrm/0exiWYFdiM2SzHVv8Uf5Mh6WA=;
 b=TO8OuL1BlbirCPPWqGBbRPnqwohgpSqYuh+mhD9Fan+N5xQ1xSkyjcwfXIqmsy4UCP
 9XcJI/4gKegHjuZT9J96o6CEHzcowSFVIEEH8eLjEVCKjWtcE6XaEeaavb0XxUegiXe+
 ZmzLJa6mwQpxrwLxiwrEDMxmoyNGiEeyXQ9BQ2VpoIA4LVG9HwGTXVcg74DWpEKIApEK
 TIB5s9aGPzn5c59x+rXxXBEIWx49BC1LVuUnpN/Nf3jbUw1qZIqz9dgxYeMnOS6c3rGg
 6KpnF9tEFyWR48Xn35qMlIJaALvbd7W09HjbGGX/vD8US+B03GIHucPGf9rOIKjcKdZt
 lH7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=KgzH53PwLND1jLbrm/0exiWYFdiM2SzHVv8Uf5Mh6WA=;
 b=cvWSdq+TDIEAeHpprakFN6hiHPcEH0nvGV/lLA7+pWVGmms/Q3VelyuMiyCi0seldZ
 3mKG98P5sRguTBYac3La/ue78LNPLBmfEFwczWRoKbd48N4hdHjFnWdDL39C0FNYpilv
 Z7Bwc93TD1e/wGgN3nUFWbmo3T+OVFminchMM7X7mGaR5AL1AC+CNbMlOFcZLIttQ+hE
 9sg54T60qF31weQrhglfuXF01sx3S0+MvhuI8OMyPfCvYBfEvZ/mRNFOK07Xcy2CMaKd
 uqcReq7LGbUIr4OXTWFe5xC6Otne966MmXEe0bpbsbRKAdTLCdpabvntZsDwQrdvSeG3
 lwkg==
X-Gm-Message-State: APjAAAWeMlEFgvChXXrHtGYZo74+JONTfX5LijPUUTO43rA/iVqotiLG
 2pQLVDGnp8UW2Ubr9oelOBlySPwwR/8=
X-Google-Smtp-Source: APXvYqyj/C1aMKroLXjnt52133U+mF/4/m9/pdxH6SIvZVODYB8EP6DW0aydx4KyYo0ko4Aw4zZlgx5Prrg=
X-Received: by 2002:ab0:5398:: with SMTP id k24mr1923016uaa.6.1565116847615;
 Tue, 06 Aug 2019 11:40:47 -0700 (PDT)
Date: Tue,  6 Aug 2019 11:40:06 -0700
In-Reply-To: <20190806184007.60739-1-hridya@google.com>
Message-Id: <20190806184007.60739-3-hridya@google.com>
Mime-Version: 1.0
References: <20190806184007.60739-1-hridya@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v2 2/2] binder: Validate the default binderfs device names.
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
index 886b4e0f482f..52c8bd361906 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -572,6 +572,18 @@ static struct file_system_type binder_fs_type = {
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
