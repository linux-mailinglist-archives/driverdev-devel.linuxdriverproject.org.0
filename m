Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10380E3203
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 14:14:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B00E822BA3;
	Thu, 24 Oct 2019 12:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jeznGvJo-ZaU; Thu, 24 Oct 2019 12:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FEE420410;
	Thu, 24 Oct 2019 12:14:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC80D1BF3C1
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8C59868E8
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eu6UBivbfpW for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 12:14:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9D3B086910
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571919246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BdHwj2SGut21P5mUR9vWZhfFecp/N83MWMVJ97x7s00=;
 b=T4nUTKuop9UVBTKArpbw/r4KDrADT1Mw4HZKgwSBG11GnyoBMVGQl/eq0jYD+n/mdG4J4Z
 NHmnQWAyvFIzQRPXmt5gjIrc3kqHt7Qp5f3pR66gzd/qwNpYfGv/0zbCRBU3Qb8higoJqT
 4jaApMQWE5WvnLdHFSZ0Ehx08Fa9vEk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-cghgf-YzMZOgToF4kkZ_Ag-1; Thu, 24 Oct 2019 08:14:04 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BEA09801E5C;
 Thu, 24 Oct 2019 12:13:57 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7969C8088;
 Thu, 24 Oct 2019 12:13:39 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v1 09/10] mm/memory_hotplug: Don't mark pages PG_reserved when
 initializing the memmap
Date: Thu, 24 Oct 2019 14:09:37 +0200
Message-Id: <20191024120938.11237-10-david@redhat.com>
In-Reply-To: <20191024120938.11237-1-david@redhat.com>
References: <20191024120938.11237-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: cghgf-YzMZOgToF4kkZ_Ag-1
X-Mimecast-Spam-Score: 0
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
Cc: linux-hyperv@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, linux-mm@kvack.org,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Kees Cook <keescook@chromium.org>,
 devel@driverdev.osuosl.org, Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Vlastimil Babka <vbabka@suse.cz>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, Sasha Levin <sashal@kernel.org>,
 kvm-ppc@vger.kernel.org, Qian Cai <cai@lca.pw>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Cornelia Huck <cohuck@redhat.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Johannes Weiner <hannes@cmpxchg.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Everything should be prepared to stop setting pages PG_reserved when
initializing the memmap on memory hotplug. Most importantly, we
stop marking ZONE_DEVICE pages PG_reserved.

a) We made sure that any code that relied on PG_reserved to detect
   ZONE_DEVICE memory will no longer rely on PG_reserved (especially,
   by relying on pfn_to_online_page() for now). Details can be found
   below.
b) We made sure that memory blocks with holes cannot be offlined and
   therefore also not onlined. We have quite some code that relies on
   memory holes being marked PG_reserved. This is now not an issue
   anymore.

generic_online_page() still calls __free_pages_core(), which performs
__ClearPageReserved(p). AFAIKS, this should not hurt.

It is worth nothing that the users of online_page_callback_t might see a
change. E.g., until now, pages not freed to the buddy by the HyperV
balloonm were set PG_reserved until freed via generic_online_page(). Now,
they would look like ordinarily allocated pages (refcount == 1). This
callback is used by the XEN balloon and the HyperV balloon. To not
introduce any silent errors, keep marking the pages PG_reserved. We can
most probably stop doing that, but have to double check if there are
issues (e.g., offlining code aborts right away in has_unmovable_pages()
when it runs into a PageReserved(page))

Update the documentation at various places in the MM core.

There are three PageReserved() users that might be affected by this change.
 - drivers/staging/gasket/gasket_page_table.c:gasket_release_page()
   -> We might (unlikely) set SetPageDirty() on a ZONE_DEVICE page
   -> I assume "we don't care"
 - drivers/staging/kpc2000/kpc_dma/fileops.c:transfer_complete_cb()
   -> We might (unlikely) set SetPageDirty() on a ZONE_DEVICE page
   -> I assume "we don't care"
 - mm/usercopy.c: check_page_span()
   -> According to Dan, non-HMM ZONE_DEVICE usage excluded this code since
      commit 52f476a323f9 ("libnvdimm/pmem: Bypass CONFIG_HARDENED_USERCOPY
      overhead")
   -> It is unclear whether we rally cared about ZONE_DEVICE here (HMM) or
      simply about "PG_reserved". The worst thing that could happen is a
      false negative with CONFIG_HARDENED_USERCOPY we should be able to
      identify easily.
   -> There is a discussion to rip out that code completely
   -> I assume "not relevant" / "we don't care"

I audited the other PageReserved() users. They don't affect ZONE_DEVICE:
 - mm/page_owner.c:pagetypeinfo_showmixedcount_print()
   -> Never called for ZONE_DEVICE, (+ pfn_to_online_page(pfn))
 - mm/page_owner.c:init_pages_in_zone()
   -> Never called for ZONE_DEVICE (!populated_zone(zone))
 - mm/page_ext.c:free_page_ext()
   -> Only a BUG_ON(PageReserved(page)), not relevant
 - mm/page_ext.c:has_unmovable_pages()
   -> Not releveant for ZONE_DEVICE
 - mm/page_ext.c:pfn_range_valid_contig()
   -> pfn_to_online_page() already guards us
 - mm/mempolicy.c:queue_pages_pte_range()
   -> vm_normal_page() checks against pte_devmap()
 - mm/memory-failure.c:hwpoison_user_mappings()
   -> Not reached via memory_failure() due to pfn_to_online_page()
   -> Also not reached indirectly via memory_failure_hugetlb()
 - mm/hugetlb.c:gather_bootmem_prealloc()
   -> Only a WARN_ON(PageReserved(page)), not relevant
 - kernel/power/snapshot.c:saveable_highmem_page()
   -> pfn_to_online_page() already guards us
 - kernel/power/snapshot.c:saveable_page()
   -> pfn_to_online_page() already guards us
 - fs/proc/task_mmu.c:can_gather_numa_stats()
   -> vm_normal_page() checks against pte_devmap()
 - fs/proc/task_mmu.c:can_gather_numa_stats_pmd
   -> vm_normal_page_pmd() checks against pte_devmap()
 - fs/proc/page.c:stable_page_flags()
   -> The reserved bit is simply copied, irrelevant
 - drivers/firmware/memmap.c:release_firmware_map_entry()
   -> really only a check to detect bootmem. Not relevant for ZONE_DEVICE
 - arch/ia64/kernel/mca_drv.c
 - arch/mips/mm/init.c
 - arch/mips/mm/ioremap.c
 - arch/nios2/mm/ioremap.c
 - arch/parisc/mm/ioremap.c
 - arch/sparc/mm/tlb.c
 - arch/xtensa/mm/cache.c
   -> No ZONE_DEVICE support
 - arch/powerpc/mm/init_64.c:vmemmap_free()
   -> Special-cases memmap on altmap
   -> Only a check for bootmem
 - arch/x86/kernel/alternative.c:__text_poke()
   -> Only a WARN_ON(!PageReserved(pages[0])) to verify it is bootmem
 - arch/x86/mm/init_64.c
   -> Only a check for bootmem

Cc: "K. Y. Srinivasan" <kys@microsoft.com>
Cc: Haiyang Zhang <haiyangz@microsoft.com>
Cc: Stephen Hemminger <sthemmin@microsoft.com>
Cc: Sasha Levin <sashal@kernel.org>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Pavel Tatashin <pavel.tatashin@microsoft.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: Anthony Yznaga <anthony.yznaga@oracle.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Mel Gorman <mgorman@techsingularity.net>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Cc: Kees Cook <keescook@chromium.org>
Suggested-by: Michal Hocko <mhocko@kernel.org>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/hv/hv_balloon.c    |  6 ++++++
 drivers/xen/balloon.c      |  7 +++++++
 include/linux/page-flags.h |  8 +-------
 mm/memory_hotplug.c        | 17 +++++++----------
 mm/page_alloc.c            | 11 -----------
 5 files changed, 21 insertions(+), 28 deletions(-)

diff --git a/drivers/hv/hv_balloon.c b/drivers/hv/hv_balloon.c
index c722079d3c24..3214b0ef5247 100644
--- a/drivers/hv/hv_balloon.c
+++ b/drivers/hv/hv_balloon.c
@@ -670,6 +670,12 @@ static struct notifier_block hv_memory_nb = {
 /* Check if the particular page is backed and can be onlined and online it. */
 static void hv_page_online_one(struct hv_hotadd_state *has, struct page *pg)
 {
+	/*
+	 * TODO: The core used to mark the pages reserved. Most probably
+	 * we can stop doing that now.
+	 */
+	__SetPageReserved(pg);
+
 	if (!has_pfn_is_backed(has, page_to_pfn(pg))) {
 		if (!PageOffline(pg))
 			__SetPageOffline(pg);
diff --git a/drivers/xen/balloon.c b/drivers/xen/balloon.c
index 4f2e78a5e4db..af69f057913a 100644
--- a/drivers/xen/balloon.c
+++ b/drivers/xen/balloon.c
@@ -374,6 +374,13 @@ static void xen_online_page(struct page *page, unsigned int order)
 	mutex_lock(&balloon_mutex);
 	for (i = 0; i < size; i++) {
 		p = pfn_to_page(start_pfn + i);
+		/*
+		 * TODO: The core used to mark the pages reserved. Most probably
+		 * we can stop doing that now. However, especially
+		 * alloc_xenballooned_pages() left PG_reserved set
+		 * on pages that can get mapped to user space.
+		 */
+		__SetPageReserved(p);
 		balloon_append(p);
 	}
 	mutex_unlock(&balloon_mutex);
diff --git a/include/linux/page-flags.h b/include/linux/page-flags.h
index 3b8e5c5f7e1f..e9a7465219d1 100644
--- a/include/linux/page-flags.h
+++ b/include/linux/page-flags.h
@@ -30,24 +30,18 @@
  * - Pages falling into physical memory gaps - not IORESOURCE_SYSRAM. Trying
  *   to read/write these pages might end badly. Don't touch!
  * - The zero page(s)
- * - Pages not added to the page allocator when onlining a section because
- *   they were excluded via the online_page_callback() or because they are
- *   PG_hwpoison.
  * - Pages allocated in the context of kexec/kdump (loaded kernel image,
  *   control pages, vmcoreinfo)
  * - MMIO/DMA pages. Some architectures don't allow to ioremap pages that are
  *   not marked PG_reserved (as they might be in use by somebody else who does
  *   not respect the caching strategy).
- * - Pages part of an offline section (struct pages of offline sections should
- *   not be trusted as they will be initialized when first onlined).
  * - MCA pages on ia64
  * - Pages holding CPU notes for POWER Firmware Assisted Dump
- * - Device memory (e.g. PMEM, DAX, HMM)
  * Some PG_reserved pages will be excluded from the hibernation image.
  * PG_reserved does in general not hinder anybody from dumping or swapping
  * and is no longer required for remap_pfn_range(). ioremap might require it.
  * Consequently, PG_reserved for a page mapped into user space can indicate
- * the zero page, the vDSO, MMIO pages or device memory.
+ * the zero page, the vDSO, or MMIO pages.
  *
  * The PG_private bitflag is set on pagecache pages if they contain filesystem
  * specific data (which is normally at page->private). It can be used by
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 8d81730cf036..2714edce98dd 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -501,9 +501,7 @@ static void __remove_section(unsigned long pfn, unsigned long nr_pages,
  * @altmap: alternative device page map or %NULL if default memmap is used
  *
  * Generic helper function to remove section mappings and sysfs entries
- * for the section of the memory we are removing. Caller needs to make
- * sure that pages are marked reserved and zones are adjust properly by
- * calling offline_pages().
+ * for the section of the memory we are removing.
  */
 void __remove_pages(unsigned long pfn, unsigned long nr_pages,
 		    struct vmem_altmap *altmap)
@@ -584,9 +582,9 @@ static int online_pages_range(unsigned long start_pfn, unsigned long nr_pages,
 	int order;
 
 	/*
-	 * Online the pages. The callback might decide to keep some pages
-	 * PG_reserved (to add them to the buddy later), but we still account
-	 * them as being online/belonging to this zone ("present").
+	 * Online the pages. The callback might decide to not free some pages
+	 * (to add them to the buddy later), but we still account them as
+	 * being online/belonging to this zone ("present").
 	 */
 	for (pfn = start_pfn; pfn < end_pfn; pfn += 1ul << order) {
 		order = min(MAX_ORDER - 1, get_order(PFN_PHYS(end_pfn - pfn)));
@@ -659,8 +657,7 @@ static void __meminit resize_pgdat_range(struct pglist_data *pgdat, unsigned lon
 }
 /*
  * Associate the pfn range with the given zone, initializing the memmaps
- * and resizing the pgdat/zone data to span the added pages. After this
- * call, all affected pages are PG_reserved.
+ * and resizing the pgdat/zone data to span the added pages.
  */
 void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
 		unsigned long nr_pages, struct vmem_altmap *altmap)
@@ -684,8 +681,8 @@ void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
 	/*
 	 * TODO now we have a visible range of pages which are not associated
 	 * with their zone properly. Not nice but set_pfnblock_flags_mask
-	 * expects the zone spans the pfn range. All the pages in the range
-	 * are reserved so nobody should be touching them so we should be safe
+	 * expects the zone spans the pfn range. The sections are not yet
+	 * marked online so nobody should be touching the memmap.
 	 */
 	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn,
 			MEMMAP_HOTPLUG, altmap);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index f9488efff680..aa6ecac27b68 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5927,8 +5927,6 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
 
 		page = pfn_to_page(pfn);
 		__init_single_page(page, pfn, zone, nid);
-		if (context == MEMMAP_HOTPLUG)
-			__SetPageReserved(page);
 
 		/*
 		 * Mark the block movable so that blocks are reserved for
@@ -5980,15 +5978,6 @@ void __ref memmap_init_zone_device(struct zone *zone,
 
 		__init_single_page(page, pfn, zone_idx, nid);
 
-		/*
-		 * Mark page reserved as it will need to wait for onlining
-		 * phase for it to be fully associated with a zone.
-		 *
-		 * We can use the non-atomic __set_bit operation for setting
-		 * the flag as we are still initializing the pages.
-		 */
-		__SetPageReserved(page);
-
 		/*
 		 * ZONE_DEVICE pages union ->lru with a ->pgmap back pointer
 		 * and zone_device_data.  It is a bug if a ZONE_DEVICE page is
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
