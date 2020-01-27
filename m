Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6C814ABE1
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 23:01:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2282D86797;
	Mon, 27 Jan 2020 22:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vk+LlMjPiH3L; Mon, 27 Jan 2020 22:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BA5786410;
	Mon, 27 Jan 2020 22:01:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9457F1BF28C
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 22:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9066E8671A
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 22:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i0m4VSTVjceK for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 22:01:07 +0000 (UTC)
X-Greylist: delayed 00:54:01 by SQLgrey-1.7.6
Received: from mail-il1-f202.google.com (mail-il1-f202.google.com
 [209.85.166.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B47BB86410
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 22:01:07 +0000 (UTC)
Received: by mail-il1-f202.google.com with SMTP id z79so8796847ilf.4
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=CAH2JUZfxl1gXiFoCO0/GCKYjJBCGBSmgeGFBkbRVI0=;
 b=vRafyqqdBsTOJgglJmYV5o0OlpyXwllJ3p28sfmm8WEusJw/8TTAuXROIItQFjhfru
 FoTeyhiVZvrzp0JIm8RXe97PvQkILEt6fOIfd5MLGgbRHwVUGQteeanpwnUNFpDbUmET
 yeUbkiANImftfw/XgIYW3iLbk9Ux/ghJ7Er+nvIxtGeyx3r4mpmfFWUtKxwkBLylRjuW
 jzAHdXNaxHvnNn+PhPXHv3feb90RvDruMJozvNa2ceu9wpj55ZA+suoil28EMWaYbUp1
 gY9llY8XBheRi/d3lSNUfkp4knvPXUGgFng3P5++sDeiWH/SxzYSdXyD/WICjNpLKhfy
 d9VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=CAH2JUZfxl1gXiFoCO0/GCKYjJBCGBSmgeGFBkbRVI0=;
 b=LzALxe8Zk+LeaskHPYM/g+2KkAkSzG7JDFLc4K8At5Lw41vCk4M/qido2erQQ+oj57
 EFehOpGkY+p1nDDA6gNwwM9mUCjkkI8Omqmn2BSgjFpDYNZ9Jg3voZQMCPvypnPMk5f1
 gPuL0zYQMpN6jQQBXePulYZoo+/tXOwM2yCd+IvIXAqQYF88KGckM4kFyeyUDjIBVyC7
 +y4p2EKzw768WwsZHib9y6ZoXF+q270jzeZgBfYPZZmEyeVXLSn8bn5kVYDnEzhmerFP
 3Kkr5SrPAtKUC0MkL8jpiezGv5GFamcq3545l/rQqFVI7iskK3OEWpA19qvfDvlKnUTj
 vdCw==
X-Gm-Message-State: APjAAAXYyYiv2PcVwAPoLHAr+zn5OKf8EbdV9K8LMi50m2zwPr1k3sbv
 VeVF09Iqb5IBO4WEoo65E/0QIh06ow==
X-Google-Smtp-Source: APXvYqxlVzkT24mENi5mvLCMmQUezkOaccKmD22akDDb2kZdKeiEAlnC02DJ2I9eq5Vhr5yinxSlLv5OQw==
X-Received: by 2002:a63:4503:: with SMTP id s3mr21629876pga.311.1580158818711; 
 Mon, 27 Jan 2020 13:00:18 -0800 (PST)
Date: Mon, 27 Jan 2020 13:00:14 -0800
Message-Id: <20200127210014.5207-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH] staging: android: ashmem: Disallow ashmem memory from being
 remapped
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

When ashmem file is being mmapped the resulting vma->vm_file points to the
backing shmem file with the generic fops that do not check ashmem
permissions like fops of ashmem do. Fix that by disallowing mapping
operation for backing shmem file.

Reported-by: Jann Horn <jannh@google.com>
Signed-off-by: Suren Baghdasaryan <surenb@google.com>
Cc: stable <stable@vger.kernel.org> # 4.4,4.9,4.14,4.18,5.4
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/staging/android/ashmem.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

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
