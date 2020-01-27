Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F7014AD2D
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jan 2020 01:25:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1616484BB6;
	Tue, 28 Jan 2020 00:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Awuy5EQ2Iym0; Tue, 28 Jan 2020 00:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8014084A0F;
	Tue, 28 Jan 2020 00:25:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A46BF1BF228
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 00:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A06A487532
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 00:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HZ++GgAD-sYv for <devel@linuxdriverproject.org>;
 Tue, 28 Jan 2020 00:25:19 +0000 (UTC)
X-Greylist: delayed 00:23:41 by SQLgrey-1.7.6
Received: from mail-il1-f201.google.com (mail-il1-f201.google.com
 [209.85.166.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E64708707A
 for <devel@driverdev.osuosl.org>; Tue, 28 Jan 2020 00:25:18 +0000 (UTC)
Received: by mail-il1-f201.google.com with SMTP id n6so9148948ile.6
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 16:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=dRo8BvIKoRhSD2Tn9OfOhx2I4O53vRoQo3RBdWWB7eE=;
 b=Uw9ndpoLPLVM3Cb40YS7MHZg7Y4O9skGXttW8XbPWDLLxAteeFE7drT1tLrpPPaQsI
 bZEVdNVizBQmdzyxz/rcBZfQL7Kjg/iV5kJRlP8AJmOsDvs7nHGQrmKj4p9giBwu4kHT
 0E7xh8ZTLk0nQPUuMGp9wt/mWAdev1sz+7QRIgYGhxRlhjQneEFOuokB3v9RyXXLz6pp
 G31wPOoFFSDHz2FIFeSUupUc7GtKVv2bN+lIn8HzwO4kXJSLK++wGduZroloS9CHphd/
 ZiqHyvK5tg2zw1+NbIUDE8tw7R0JeZDnnccNFJzAVU8W4JIPbVUc4icJnHbKdeQ7d9MC
 BNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=dRo8BvIKoRhSD2Tn9OfOhx2I4O53vRoQo3RBdWWB7eE=;
 b=le5eQtkAlrx7JxqQ/WJc/4bMsSH53cVRPRC061vjbI5b/ajsubBZd6eN0mDxeoY46I
 JBbaV6yr47sNRXqg8//LPZeSt7wGrFjBl7VsQN/VjhzzGH3KZHiCFOarXpdyTWeW7MIN
 bOoIb1R0cTivRPKPg9M6blpqYSTPhrTXNLdY4we5SJBUya1qtLVAbZhT78flysAEFxcl
 rbQuk1Mw5kLJkEPAlPOpX6RhjsLqIeW3BVVs49GrMXhK9uuLGkeXj6pe0pVKeQFUxN3A
 Ynv6pYGZywvEFAWQ4UaKcAYcpDSjom0GVO0njK1N2Hv0Hyl6JqvKPxraWBh1jkJT9tT8
 TcMw==
X-Gm-Message-State: APjAAAX2/aqXYUSkxGKuaEh3BWwVGspTUkQCphsQWwKjHe5lPQxoWlVc
 5YaBigbUdwPNPB56OfUDNvKTfIQYsA==
X-Google-Smtp-Source: APXvYqwz2z0aFgThZxhvv3L6SvsHVrydMHnFK5ay+ILi5QybHwC3uagUqAF2vWJs7qoiwmhLBLKiXgYFZQ==
X-Received: by 2002:a63:bc01:: with SMTP id q1mr23355022pge.442.1580169386231; 
 Mon, 27 Jan 2020 15:56:26 -0800 (PST)
Date: Mon, 27 Jan 2020 15:56:16 -0800
Message-Id: <20200127235616.48920-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2] staging: android: ashmem: Disallow ashmem memory from
 being remapped
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, surenb@google.com, gregkh@linuxfoundation.org, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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
Cc: joel@joelfernandes.org, kernel-team@android.com,
 stable <stable@vger.kernel.org>, Jann Horn <jannh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Suren Baghdasaryan <surenb@google.com>

When ashmem file is mmapped, the resulting vma->vm_file points to the
backing shmem file with the generic fops that do not check ashmem
permissions like fops of ashmem do. If an mremap is done on the ashmem
region, then the permission checks will be skipped. Fix that by disallowing
mapping operation on the backing shmem file.

Reported-by: Jann Horn <jannh@google.com>
Signed-off-by: Suren Baghdasaryan <surenb@google.com>
Cc: stable <stable@vger.kernel.org> # 4.4,4.9,4.14,4.18,5.4
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/staging/android/ashmem.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

v2: update commit message as suggested by joelaf@google.com.

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 74d497d39c5a..c6695354b123 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -351,8 +351,23 @@ static inline vm_flags_t calc_vm_may_flags(unsigned long prot)
 	       _calc_vm_trans(prot, PROT_EXEC,  VM_MAYEXEC);
 }
 
+static int ashmem_vmfile_mmap(struct file *file, struct vm_area_struct *vma)
+{
+	/* do not allow to mmap ashmem backing shmem file directly */
+	return -EPERM;
+}
+
+static unsigned long
+ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
+				unsigned long len, unsigned long pgoff,
+				unsigned long flags)
+{
+	return current->mm->get_unmapped_area(file, addr, len, pgoff, flags);
+}
+
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
+	static struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
@@ -393,6 +408,19 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 		}
 		vmfile->f_mode |= FMODE_LSEEK;
 		asma->file = vmfile;
+		/*
+		 * override mmap operation of the vmfile so that it can't be
+		 * remapped which would lead to creation of a new vma with no
+		 * asma permission checks. Have to override get_unmapped_area
+		 * as well to prevent VM_BUG_ON check for f_ops modification.
+		 */
+		if (!vmfile_fops.mmap) {
+			vmfile_fops = *vmfile->f_op;
+			vmfile_fops.mmap = ashmem_vmfile_mmap;
+			vmfile_fops.get_unmapped_area =
+					ashmem_vmfile_get_unmapped_area;
+		}
+		vmfile->f_op = &vmfile_fops;
 	}
 	get_file(asma->file);
 
-- 
2.25.0.341.g760bfbb309-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
