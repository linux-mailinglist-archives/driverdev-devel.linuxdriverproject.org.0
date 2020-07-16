Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2CF221A54
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 04:52:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 817428A857;
	Thu, 16 Jul 2020 02:52:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EP1d09KABpMl; Thu, 16 Jul 2020 02:52:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D53E8A8A4;
	Thu, 16 Jul 2020 02:52:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75A721BF3C6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 02:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6646388B28
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 02:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E3_NI9ubQYF1 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 02:52:48 +0000 (UTC)
X-Greylist: delayed 00:07:12 by SQLgrey-1.7.6
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7230B88C90
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 02:52:48 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id t7so5540873ybk.2
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 19:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=xWu7gPZztNAK+TxJrFnoSXXwBfp6shDBhGamt8B80c8=;
 b=AGBvyE3KJbosodgTS9w19CA1M+qXplTx2t0WHQsXS12u2LmGODvao6q4grprQiMr+Z
 E++7i3g9dwDbM8KkF4cfYRMP5vEfinEzTWGR/BsVG/Ptw8Von+PtKX7kIMbQ+SRIqwBN
 f/baF9a8zwUVDIGaa7sQErP7Z20PkIAieTYAll6VA3JQY/WMOm8Vq6+rDUhSLGj6FgS7
 4XTo6hrI/g5XlTAJ0ShVcNtfBgjQyr3rzy4JZe5wLS5QvGzZodg/pdiyONk2D1TehBto
 /NXRBhV11U4yRk/QzrEe5o7zq+WutrxqZzF5HcV+eWyBgQrrn7FFHh+7ZdTs6zOAKMiu
 GguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=xWu7gPZztNAK+TxJrFnoSXXwBfp6shDBhGamt8B80c8=;
 b=ss9mw2WNC//TsVVKGceUKlvmYOD3O8sUo7ZCueC7X+Q6MHGy/WjEV6GPdK0+dj94B7
 chNhbeNQEaIeoQuwyZBz/hMefAcCeBdt8bOdABhiawC64JT8iFesQ2q0OBXp3expllTY
 Kraww1UPClVRO5bX8B1dfgWwoAcXVgggh2OL/U1riqE+vAml/jjRsG7F7+rBDHOnVDo4
 MWWUVIjdtZ3q4R9wTJOvGUrPFHpmFo/wqzX0rjr1CGqdH5rqgV1G7u/GyuqNttooBFVM
 x5ak+OrTdvpZhY5J2wbQ2YKvaEOFL0xc5IMq42SI+7wH1Ilhlba/O4DML8io//Fkm46s
 4tRQ==
X-Gm-Message-State: AOAM530VvsLfYIrxvwIv69Ub6mlc/PobADKcXZvjtSVpEhUOg5bwd6FW
 sOIQzER0++41fB/r3MgIMLJcpK/1w2I=
X-Google-Smtp-Source: ABdhPJwIAGAziDbNA7/jYqZZpWADP6cnWXnwe2nm5sHqpT+EewgRttLsf0e6DqpfxRS3toIODLp/aELaaK4=
X-Received: by 2002:a25:7689:: with SMTP id r131mr3513121ybc.125.1594867534900; 
 Wed, 15 Jul 2020 19:45:34 -0700 (PDT)
Date: Wed, 15 Jul 2020 19:45:27 -0700
Message-Id: <20200716024527.4009170-1-surenb@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH 1/1] staging: android: ashmem: Fix lockdep warning for write
 operation
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
 linux-kernel@vger.kernel.org, mhocko@kernel.org, ebiggers@kernel.org,
 hridya@google.com, arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
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

Signed-off-by: Suren Baghdasaryan <surenb@google.com>
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
2.28.0.rc0.105.gf9edc3c819-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
