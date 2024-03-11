Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB697878792
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Mar 2024 19:38:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FF87405B1;
	Mon, 11 Mar 2024 18:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kXasS6qXL-3B; Mon, 11 Mar 2024 18:38:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30E47405BB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30E47405BB;
	Mon, 11 Mar 2024 18:38:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1642F1BF865
 for <devel@linuxdriverproject.org>; Mon, 11 Mar 2024 18:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FC6C606BB
 for <devel@linuxdriverproject.org>; Mon, 11 Mar 2024 18:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnz59yLGZFNZ for <devel@linuxdriverproject.org>;
 Mon, 11 Mar 2024 18:38:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02DB560686
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02DB560686
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02DB560686
 for <devel@linuxdriverproject.org>; Mon, 11 Mar 2024 18:38:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E9F8B60F77;
 Mon, 11 Mar 2024 18:38:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 954F8C433F1;
 Mon, 11 Mar 2024 18:38:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.1 3/7] x86/hyperv: Use slow_virt_to_phys() in page
 transition hypervisor callback
Date: Mon, 11 Mar 2024 14:38:21 -0400
Message-ID: <20240311183826.328535-3-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240311183826.328535-1-sashal@kernel.org>
References: <20240311183826.328535-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.81
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710182327;
 bh=iVJcHp1ylZb9WznCQWx4gusFdtP2Tlc76UN0f+Y0b1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pr/Bqk76phpYDNoPlCuyqSLGYta95AhNeAVCI6a5SZ7U3u4YAZjOLyZLVwQFEg3kG
 kGpD5vjcYakr3iw5Lmu4qVxvb0dJXGR4GwhsBQC054mIbyg+AM9UiDAqGUlaUS2UEP
 1h7G68cp5rZt7yqkqk+M7zAY6orYydMUpJXXHzvdM9VbOOr21UR3LNAKHm1lli46Q1
 YYMm77R+W7MeYOcuhRxAUNVmHsuFLO4lqDTPiqQG1BGE/urd8xedKwaygDBa8qHcSL
 oEzS0eSY9b0qcB2xi9kb6sVgmU3E4Mtsyg0ZQ8ve7mYxsupWXLGZhCDA9YhpqyD6tu
 iMYepxp2t0jVg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pr/Bqk76
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
Cc: Sasha Levin <sashal@kernel.org>, Wei Liu <wei.liu@kernel.org>,
 sthemmin@microsoft.com, peterz@infradead.org, haiyangz@microsoft.com,
 x86@kernel.org, dave.hansen@linux.intel.com, mingo@redhat.com, bp@alien8.de,
 luto@kernel.org, devel@linuxdriverproject.org, tglx@linutronix.de,
 Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Michael Kelley <mhklinux@outlook.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Michael Kelley <mhklinux@outlook.com>

[ Upstream commit 9fef276f9f416a1e85eb48d3bd38e6018a220bf5 ]

In preparation for temporarily marking pages not present during a
transition between encrypted and decrypted, use slow_virt_to_phys()
in the hypervisor callback. As long as the PFN is correct,
slow_virt_to_phys() works even if the leaf PTE is not present.
The existing functions that depend on vmalloc_to_page() all
require that the leaf PTE be marked present, so they don't work.

Update the comments for slow_virt_to_phys() to note this broader usage
and the requirement to work even if the PTE is not marked present.

Signed-off-by: Michael Kelley <mhklinux@outlook.com>
Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Reviewed-by: Rick Edgecombe <rick.p.edgecombe@intel.com>
Link: https://lore.kernel.org/r/20240116022008.1023398-2-mhklinux@outlook.com
Signed-off-by: Wei Liu <wei.liu@kernel.org>
Message-ID: <20240116022008.1023398-2-mhklinux@outlook.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/hyperv/ivm.c        | 12 +++++++++++-
 arch/x86/mm/pat/set_memory.c | 12 ++++++++----
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/x86/hyperv/ivm.c b/arch/x86/hyperv/ivm.c
index 1dbcbd9da74d4..fd08270dd7946 100644
--- a/arch/x86/hyperv/ivm.c
+++ b/arch/x86/hyperv/ivm.c
@@ -332,6 +332,8 @@ int hv_set_mem_host_visibility(unsigned long kbuffer, int pagecount, bool visibl
 	enum hv_mem_host_visibility visibility = visible ?
 			VMBUS_PAGE_VISIBLE_READ_WRITE : VMBUS_PAGE_NOT_VISIBLE;
 	u64 *pfn_array;
+	phys_addr_t paddr;
+	void *vaddr;
 	int ret = 0;
 	int i, pfn;
 
@@ -343,7 +345,15 @@ int hv_set_mem_host_visibility(unsigned long kbuffer, int pagecount, bool visibl
 		return -ENOMEM;
 
 	for (i = 0, pfn = 0; i < pagecount; i++) {
-		pfn_array[pfn] = virt_to_hvpfn((void *)kbuffer + i * HV_HYP_PAGE_SIZE);
+		/*
+		 * Use slow_virt_to_phys() because the PRESENT bit has been
+		 * temporarily cleared in the PTEs.  slow_virt_to_phys() works
+		 * without the PRESENT bit while virt_to_hvpfn() or similar
+		 * does not.
+		 */
+		vaddr = (void *)kbuffer + (i * HV_HYP_PAGE_SIZE);
+		paddr = slow_virt_to_phys(vaddr);
+		pfn_array[pfn] = paddr >> HV_HYP_PAGE_SHIFT;
 		pfn++;
 
 		if (pfn == HV_MAX_MODIFY_GPA_REP_COUNT || i == pagecount - 1) {
diff --git a/arch/x86/mm/pat/set_memory.c b/arch/x86/mm/pat/set_memory.c
index 5f0ce77a259d8..fcc0d0f16be3f 100644
--- a/arch/x86/mm/pat/set_memory.c
+++ b/arch/x86/mm/pat/set_memory.c
@@ -723,10 +723,14 @@ pmd_t *lookup_pmd_address(unsigned long address)
  * areas on 32-bit NUMA systems.  The percpu areas can
  * end up in this kind of memory, for instance.
  *
- * This could be optimized, but it is only intended to be
- * used at initialization time, and keeping it
- * unoptimized should increase the testing coverage for
- * the more obscure platforms.
+ * Note that as long as the PTEs are well-formed with correct PFNs, this
+ * works without checking the PRESENT bit in the leaf PTE.  This is unlike
+ * the similar vmalloc_to_page() and derivatives.  Callers may depend on
+ * this behavior.
+ *
+ * This could be optimized, but it is only used in paths that are not perf
+ * sensitive, and keeping it unoptimized should increase the testing coverage
+ * for the more obscure platforms.
  */
 phys_addr_t slow_virt_to_phys(void *__virt_addr)
 {
-- 
2.43.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
