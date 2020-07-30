Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA12233B21
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 00:10:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B70CC88503;
	Thu, 30 Jul 2020 22:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k8eNkpCt5Q3b; Thu, 30 Jul 2020 22:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DFEB87FD3;
	Thu, 30 Jul 2020 22:10:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 269A21BF306
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 22:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F93C87C89
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 22:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSBE+-+KbktL for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 22:10:27 +0000 (UTC)
X-Greylist: delayed 02:19:42 by SQLgrey-1.7.6
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com
 [209.85.214.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 817FB87C74
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 22:10:27 +0000 (UTC)
Received: by mail-pl1-f202.google.com with SMTP id f4so19296679plo.3
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 15:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=fWc6OJCig1UgfvHtWplz+nD9vozoDKzNVIvYHPTkg44=;
 b=gj5uH8D4Swjos7n2MMJejn1TAY3/L82VroaxdW/TCkIJ79VyK0QF+7je5BWTh2VdbP
 S5EJcY/69Oah1CX+JxuEJQFQiERjk/P36vSs5VY/IAzzXXFTcElypDb5ad2LCfKgg07p
 bxmXzb+N1u0FJ/kmrnEpOysUXavSYtx5LY2CqEkI9v108NbkONilghGgiQFXGU6ZnOQS
 tV4PACfZgq/MYzgVSxp7OsSRh4PVZC9+HRmf49Eutm2q6iUHcHMvbPFTIqgYorCXg0F3
 6Rxksb9qwD2MmW8j0Y9pUDSrTzgxYA1mNCTFcqttpvKe9S03LbVAvGFse0CBzYiYrZDF
 25FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=fWc6OJCig1UgfvHtWplz+nD9vozoDKzNVIvYHPTkg44=;
 b=pWQhwRIEaeja7OI8aahavggPX9501hP0z26WvQdv5pm7ou4AF2YcIuQwqE4mmbTpbe
 cGlcSfXvc6aOet/2Qfona3AfnLgNr7Yz4ZZEzCNb1e4emgT+ABP6SoZgIgDCLsuTgjA2
 a5ZIc2g8MwiSLPmlKGshmJ1DgVsFNWEhD8ioDUFC2pWMgjMI/mA8sgkkIygmwQCaiTKx
 tlGYgKQor0AHBZxBCyQcI5GdUwVGy+TxGT4u3SfIbatI7/1BHmJ79qCDKwyEzFKrlXYM
 9AheNixWR8/FWXTae6hOxprbolguTe/RvDKeHSN+MvBJ3uZowUIY4MRYwDlB2wsIc/p0
 IzQQ==
X-Gm-Message-State: AOAM533w3fqXCfQoEEpBkALUKkLxIHIh0+FretLFEBBlSLnHbA+Qbeza
 YCFArG58HfjYl0CDfMAPeUO8BX887UA=
X-Google-Smtp-Source: ABdhPJzEMZe4ramJ8Ov7HBdblAvH3a+W031fHCnG32znIrk4AscZJPDQJ3jlVI/1fwnUZWE1mXm5diLdqiM=
X-Received: by 2002:ad4:40cb:: with SMTP id x11mr702214qvp.176.1596137197459; 
 Thu, 30 Jul 2020 12:26:37 -0700 (PDT)
Date: Thu, 30 Jul 2020 12:26:32 -0700
Message-Id: <20200730192632.3088194-1-surenb@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH v2 1/1] staging: android: ashmem: Fix lockdep warning for
 write operation
From: Suren Baghdasaryan <surenb@google.com>
To: surenb@google.com
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
Cc: devel@driverdev.osuosl.org, hdanton@sina.com, kernel-team@android.com,
 tkjos@android.com, linux-mm@kvack.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, mhocko@kernel.org,
 ebiggers@kernel.org, hridya@google.com, arve@android.com,
 syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

syzbot report [1] describes a deadlock when write operation against an
ashmem fd executed at the time when ashmem is shrinking its cache results
in the following lock sequence:

Possible unsafe locking scenario:

        CPU0                    CPU1
        ----                    ----
   lock(fs_reclaim);
                                lock(&sb->s_type->i_mutex_key#13);
                                lock(fs_reclaim);
   lock(&sb->s_type->i_mutex_key#13);

kswapd takes fs_reclaim and then inode_lock while generic_perform_write
takes inode_lock and then fs_reclaim. However ashmem does not support
writing into backing shmem with a write syscall. The only way to change
its content is to mmap it and operate on mapped memory. Therefore the race
that lockdep is warning about is not valid. Resolve this by introducing a
separate lockdep class for the backing shmem inodes.

[1]: https://lkml.kernel.org/lkml/0000000000000b5f9d059aa2037f@google.com/

Reported-by: syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com
Signed-off-by: Suren Baghdasaryan <surenb@google.com>
Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
---
 drivers/staging/android/ashmem.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index c05a214191da..10b4be1f3e78 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -95,6 +95,15 @@ static DEFINE_MUTEX(ashmem_mutex);
 static struct kmem_cache *ashmem_area_cachep __read_mostly;
 static struct kmem_cache *ashmem_range_cachep __read_mostly;
 
+/*
+ * A separate lockdep class for the backing shmem inodes to resolve the lockdep
+ * warning about the race between kswapd taking fs_reclaim before inode_lock
+ * and write syscall taking inode_lock and then fs_reclaim.
+ * Note that such race is impossible because ashmem does not support write
+ * syscalls operating on the backing shmem.
+ */
+static struct lock_class_key backing_shmem_inode_class;
+
 static inline unsigned long range_size(struct ashmem_range *range)
 {
 	return range->pgend - range->pgstart + 1;
@@ -396,6 +405,7 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 	if (!asma->file) {
 		char *name = ASHMEM_NAME_DEF;
 		struct file *vmfile;
+		struct inode *inode;
 
 		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
 			name = asma->name;
@@ -407,6 +417,8 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 			goto out;
 		}
 		vmfile->f_mode |= FMODE_LSEEK;
+		inode = file_inode(vmfile);
+		lockdep_set_class(&inode->i_rwsem, &backing_shmem_inode_class);
 		asma->file = vmfile;
 		/*
 		 * override mmap operation of the vmfile so that it can't be
-- 
2.28.0.163.g6104cc2f0b6-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
