Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3BB17A04B
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 07:51:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB55B87C76;
	Thu,  5 Mar 2020 06:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlRZefaYHhjg; Thu,  5 Mar 2020 06:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 473E087C66;
	Thu,  5 Mar 2020 06:51:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7AE11BF2EC
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 06:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C46FF20453
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 06:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bd0MWZRB+jEe for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 06:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by silver.osuosl.org (Postfix) with ESMTP id 881A52043D
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 06:50:59 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFF9E4B2;
 Wed,  4 Mar 2020 22:50:58 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1E2853F534;
 Wed,  4 Mar 2020 22:54:46 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH 2/2] mm/vma: Introduce VM_ACCESS_FLAGS
Date: Thu,  5 Mar 2020 12:20:14 +0530
Message-Id: <1583391014-8170-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583391014-8170-1-git-send-email-anshuman.khandual@arm.com>
References: <1583391014-8170-1-git-send-email-anshuman.khandual@arm.com>
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, hughd@google.com,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 vbabka@suse.cz, Mark Salter <msalter@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are many places where all basic VMA access flags (read, write, exec)
are initialized or checked against as a group. One such example is during
page fault. Existing vma_is_accessible() wrapper already creates the notion
of VMA accessibility as a group access permissions. Hence lets just create
VM_ACCESS_FLAGS (VM_READ|VM_WRITE|VM_EXEC) which will not only reduce code
duplication but also extend the VMA accessibility concept in general.

Cc: Russell King <linux@armlinux.org.uk>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Mark Salter <msalter@redhat.com>
Cc: Nick Hu <nickhu@andestech.com>
CC: Ley Foon Tan <ley.foon.tan@intel.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Guan Xuetao <gxt@pku.edu.cn>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Rob Springer <rspringer@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm/mm/fault.c                  | 2 +-
 arch/arm64/mm/fault.c                | 2 +-
 arch/nds32/mm/fault.c                | 2 +-
 arch/powerpc/mm/book3s64/pkeys.c     | 2 +-
 arch/s390/mm/fault.c                 | 2 +-
 arch/unicore32/mm/fault.c            | 2 +-
 arch/x86/mm/pkeys.c                  | 2 +-
 drivers/staging/gasket/gasket_core.c | 2 +-
 include/linux/mm.h                   | 6 +++++-
 mm/mmap.c                            | 2 +-
 mm/mprotect.c                        | 4 ++--
 11 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index bd0f4821f7e1..2c71028d9d6b 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -189,7 +189,7 @@ void do_bad_area(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
  */
 static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
 {
-	unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned int mask = VM_ACCESS_FLAGS;
 
 	if ((fsr & FSR_WRITE) && !(fsr & FSR_CM))
 		mask = VM_WRITE;
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 85566d32958f..63f31206a12e 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -445,7 +445,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	const struct fault_info *inf;
 	struct mm_struct *mm = current->mm;
 	vm_fault_t fault, major = 0;
-	unsigned long vm_flags = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned long vm_flags = VM_ACCESS_FLAGS;
 	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 
 	if (kprobe_page_fault(regs, esr))
diff --git a/arch/nds32/mm/fault.c b/arch/nds32/mm/fault.c
index 906dfb25353c..55387a31bf42 100644
--- a/arch/nds32/mm/fault.c
+++ b/arch/nds32/mm/fault.c
@@ -79,7 +79,7 @@ void do_page_fault(unsigned long entry, unsigned long addr,
 	struct vm_area_struct *vma;
 	int si_code;
 	vm_fault_t fault;
-	unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned int mask = VM_ACCESS_FLAGS;
 	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 
 	error_code = error_code & (ITYPE_mskINST | ITYPE_mskETYPE);
diff --git a/arch/powerpc/mm/book3s64/pkeys.c b/arch/powerpc/mm/book3s64/pkeys.c
index 59e0ebbd8036..11fd52b24f68 100644
--- a/arch/powerpc/mm/book3s64/pkeys.c
+++ b/arch/powerpc/mm/book3s64/pkeys.c
@@ -315,7 +315,7 @@ int __execute_only_pkey(struct mm_struct *mm)
 static inline bool vma_is_pkey_exec_only(struct vm_area_struct *vma)
 {
 	/* Do this check first since the vm_flags should be hot */
-	if ((vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC)) != VM_EXEC)
+	if ((vma->vm_flags & VM_ACCESS_FLAGS) != VM_EXEC)
 		return false;
 
 	return (vma_pkey(vma) == vma->vm_mm->context.execute_only_pkey);
diff --git a/arch/s390/mm/fault.c b/arch/s390/mm/fault.c
index 7b0bb475c166..b2cb3c0d0e1a 100644
--- a/arch/s390/mm/fault.c
+++ b/arch/s390/mm/fault.c
@@ -584,7 +584,7 @@ void do_dat_exception(struct pt_regs *regs)
 	int access;
 	vm_fault_t fault;
 
-	access = VM_READ | VM_EXEC | VM_WRITE;
+	access = VM_ACCESS_FLAGS;
 	fault = do_exception(regs, access);
 	if (unlikely(fault))
 		do_fault_error(regs, access, fault);
diff --git a/arch/unicore32/mm/fault.c b/arch/unicore32/mm/fault.c
index 76342de9cf8c..fc27c274d358 100644
--- a/arch/unicore32/mm/fault.c
+++ b/arch/unicore32/mm/fault.c
@@ -149,7 +149,7 @@ void do_bad_area(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
  */
 static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
 {
-	unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;
+	unsigned int mask = VM_ACCESS_FLAGS;
 
 	if (!(fsr ^ 0x12))	/* write? */
 		mask = VM_WRITE;
diff --git a/arch/x86/mm/pkeys.c b/arch/x86/mm/pkeys.c
index c6f84c0b5d7a..8873ed1438a9 100644
--- a/arch/x86/mm/pkeys.c
+++ b/arch/x86/mm/pkeys.c
@@ -63,7 +63,7 @@ int __execute_only_pkey(struct mm_struct *mm)
 static inline bool vma_is_pkey_exec_only(struct vm_area_struct *vma)
 {
 	/* Do this check first since the vm_flags should be hot */
-	if ((vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC)) != VM_EXEC)
+	if ((vma->vm_flags & VM_ACCESS_FLAGS) != VM_EXEC)
 		return false;
 	if (vma_pkey(vma) != vma->vm_mm->context.execute_only_pkey)
 		return false;
diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index be6b50f454b4..81bb7d58dc49 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -689,7 +689,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
 
 	/* Make sure that no wrong flags are set. */
 	requested_permissions =
-		(vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
+		(vma->vm_flags & VM_ACCESS_FLAGS);
 	if (requested_permissions & ~(bar_permissions)) {
 		dev_dbg(gasket_dev->dev,
 			"Attempting to map a region with requested permissions "
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 3861524368a4..e89512f1c170 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -368,6 +368,10 @@ extern unsigned int kobjsize(const void *objp);
 
 #define VM_STACK_FLAGS	(VM_STACK | VM_STACK_DEFAULT_FLAGS | VM_ACCOUNT)
 
+/* VMA basic access permission flags */
+#define VM_ACCESS_FLAGS (VM_READ | VM_WRITE | VM_EXEC)
+
+
 /*
  * Special vmas that are non-mergable, non-mlock()able.
  * Note: mm/huge_memory.c VM_NO_THP depends on this definition.
@@ -557,7 +561,7 @@ static inline bool vma_is_anonymous(struct vm_area_struct *vma)
 
 static inline bool vma_is_accessible(struct vm_area_struct *vma)
 {
-	return vma->vm_flags & (VM_READ | VM_WRITE | VM_EXEC);
+	return vma->vm_flags & VM_ACCESS_FLAGS;
 }
 
 #ifdef CONFIG_SHMEM
diff --git a/mm/mmap.c b/mm/mmap.c
index 0d295f49b24d..57f74ade19a0 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -1221,7 +1221,7 @@ static int anon_vma_compatible(struct vm_area_struct *a, struct vm_area_struct *
 	return a->vm_end == b->vm_start &&
 		mpol_equal(vma_policy(a), vma_policy(b)) &&
 		a->vm_file == b->vm_file &&
-		!((a->vm_flags ^ b->vm_flags) & ~(VM_READ|VM_WRITE|VM_EXEC|VM_SOFTDIRTY)) &&
+		!((a->vm_flags ^ b->vm_flags) & ~(VM_ACCESS_FLAGS | VM_SOFTDIRTY)) &&
 		b->vm_pgoff == a->vm_pgoff + ((b->vm_start - a->vm_start) >> PAGE_SHIFT);
 }
 
diff --git a/mm/mprotect.c b/mm/mprotect.c
index 7a8e84f86831..8fbb7e7c08a5 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -359,7 +359,7 @@ mprotect_fixup(struct vm_area_struct *vma, struct vm_area_struct **pprev,
 	 */
 	if (arch_has_pfn_modify_check() &&
 	    (vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) &&
-	    (newflags & (VM_READ|VM_WRITE|VM_EXEC)) == 0) {
+	    (newflags & VM_ACCESS_FLAGS) == 0) {
 		pgprot_t new_pgprot = vm_get_page_prot(newflags);
 
 		error = walk_page_range(current->mm, start, end,
@@ -538,7 +538,7 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 		newflags |= (vma->vm_flags & ~mask_off_old_flags);
 
 		/* newflags >> 4 shift VM_MAY% in place of VM_% */
-		if ((newflags & ~(newflags >> 4)) & (VM_READ | VM_WRITE | VM_EXEC)) {
+		if ((newflags & ~(newflags >> 4)) & VM_ACCESS_FLAGS) {
 			error = -EACCES;
 			goto out;
 		}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
