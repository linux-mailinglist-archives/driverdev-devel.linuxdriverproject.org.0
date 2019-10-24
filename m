Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C550DE31DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 14:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD362878B0;
	Thu, 24 Oct 2019 12:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CMkrsTMkGGR7; Thu, 24 Oct 2019 12:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 471558787C;
	Thu, 24 Oct 2019 12:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BE171BF3C1
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 16CE08816A
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Msd4CcI1EOm for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 12:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8EC488168
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571919009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=TooFwxaibKWioSMXkjdsd9KqTbD0P4TIgojllh09QfQ=;
 b=Oi2it1KsowuABYJ1aXMvXZPMFlvHhHjGDDgHhPptmSbthR4Vw2imhnzJyHAeAysthhbndn
 38B2Hqugx1mvTe4ayec1IScoULyfr6jjOUOu+o89u069Z1gCChXPDsH4wB9RAPT0MRbEt8
 1Z3EQDYg4CDQxd3zjCRu1tEGPSrCAso=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-Mt5vh3dPMhmZKGgS4b6ZRA-1; Thu, 24 Oct 2019 08:10:06 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 410A4801E5C;
 Thu, 24 Oct 2019 12:10:01 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 314413CCA;
 Thu, 24 Oct 2019 12:09:39 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v1 00/10] mm: Don't mark hotplugged pages PG_reserved
 (including ZONE_DEVICE)
Date: Thu, 24 Oct 2019 14:09:28 +0200
Message-Id: <20191024120938.11237-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: Mt5vh3dPMhmZKGgS4b6ZRA-1
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

This is the result of a recent discussion with Michal ([1], [2]). Right
now we set all pages PG_reserved when initializing hotplugged memmaps. This
includes ZONE_DEVICE memory. In case of system memory, PG_reserved is
cleared again when onlining the memory, in case of ZONE_DEVICE memory
never.

In ancient times, we needed PG_reserved, because there was no way to tell
whether the memmap was already properly initialized. We now have
SECTION_IS_ONLINE for that in the case of !ZONE_DEVICE memory. ZONE_DEVICE
memory is already initialized deferred, and there shouldn't be a visible
change in that regard.

One of the biggest fears were side effects. I went ahead and audited all
users of PageReserved(). The details can be found in "mm/memory_hotplug:
Don't mark pages PG_reserved when initializing the memmap".

This patch set adapts all relevant users of PageReserved() to keep the
existing behavior in respect to ZONE_DEVICE pages. The biggest part part
that needs changes is KVM, to keep the existing behavior (that's all I
care about in this series).

Note that this series is able to rely completely on pfn_to_online_page().
No new is_zone_device_page() calles are introduced (as requested by Dan).
We are currently discussing a way to mark also ZONE_DEVICE memmaps as
active/initialized - pfn_active() - and lightweight locking to make sure
memmaps remain active (e.g., using RCU). We might later be able to convert
some suers of pfn_to_online_page() to pfn_active(). Details can be found
in [3], however, this represents yet another cleanup/fix we'll perform
on top of this cleanup.

I only gave it a quick test with DIMMs on x86-64, but didn't test the
ZONE_DEVICE part at all (any tips for a nice QEMU setup?). Also, I didn't
test the KVM parts (especially with ZONE_DEVICE pages or no memmap at all).
Compile-tested on x86-64 and PPC.

Based on next/master. The current version (kept updated) can be found at:
    https://github.com/davidhildenbrand/linux.git online_reserved_cleanup

RFC -> v1:
- Dropped "staging/gasket: Prepare gasket_release_page() for PG_reserved
  changes"
- Dropped "staging: kpc2000: Prepare transfer_complete_cb() for PG_reserved
  changes"
- Converted "mm/usercopy.c: Prepare check_page_span() for PG_reserved
  changes" to "mm/usercopy.c: Update comment in check_page_span()
  regarding ZONE_DEVICE"
- No new users of is_zone_device_page() are introduced.
- Rephrased comments and patch descriptions.

[1] https://lkml.org/lkml/2019/10/21/736
[2] https://lkml.org/lkml/2019/10/21/1034
[3] https://www.spinics.net/lists/linux-mm/msg194112.html

Cc: Michal Hocko <mhocko@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: kvm-ppc@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: kvm@vger.kernel.org
Cc: linux-hyperv@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Cc: xen-devel@lists.xenproject.org
Cc: x86@kernel.org
Cc: Alexander Duyck <alexander.duyck@gmail.com>

David Hildenbrand (10):
  mm/memory_hotplug: Don't allow to online/offline memory blocks with
    holes
  KVM: x86/mmu: Prepare kvm_is_mmio_pfn() for PG_reserved changes
  KVM: Prepare kvm_is_reserved_pfn() for PG_reserved changes
  vfio/type1: Prepare is_invalid_reserved_pfn() for PG_reserved changes
  powerpc/book3s: Prepare kvmppc_book3s_instantiate_page() for
    PG_reserved changes
  powerpc/64s: Prepare hash_page_do_lazy_icache() for PG_reserved
    changes
  powerpc/mm: Prepare maybe_pte_to_page() for PG_reserved changes
  x86/mm: Prepare __ioremap_check_ram() for PG_reserved changes
  mm/memory_hotplug: Don't mark pages PG_reserved when initializing the
    memmap
  mm/usercopy.c: Update comment in check_page_span() regarding
    ZONE_DEVICE

 arch/powerpc/kvm/book3s_64_mmu_radix.c | 14 +++++----
 arch/powerpc/mm/book3s64/hash_utils.c  | 10 +++---
 arch/powerpc/mm/pgtable.c              | 10 +++---
 arch/x86/kvm/mmu.c                     | 29 ++++++++++-------
 arch/x86/mm/ioremap.c                  | 13 ++++++--
 drivers/hv/hv_balloon.c                |  6 ++++
 drivers/vfio/vfio_iommu_type1.c        | 10 ++++--
 drivers/xen/balloon.c                  |  7 +++++
 include/linux/page-flags.h             |  8 +----
 mm/memory_hotplug.c                    | 43 +++++++++++++++++++-------
 mm/page_alloc.c                        | 11 -------
 mm/usercopy.c                          |  6 ++--
 virt/kvm/kvm_main.c                    | 10 ++++--
 13 files changed, 111 insertions(+), 66 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
