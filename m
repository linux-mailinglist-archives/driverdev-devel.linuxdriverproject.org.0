Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4C5E31E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 14:10:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F321088292;
	Thu, 24 Oct 2019 12:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPIjry4Emel5; Thu, 24 Oct 2019 12:10:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4E808816A;
	Thu, 24 Oct 2019 12:10:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B38011BF3C1
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3E348816A
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4mAZ3vJxxynZ for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 12:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9CC9288168
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571919032;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ci8rTmGAQWvcufbTawC9IhJzwFepcNIlGotHVYhTC24=;
 b=ZsNhtg6+dHzPcwSVwjXIgwuRpJm6zYtwBax/d+6eoWSCur2yTWxbtJPLhhHmNn8DDxOdG/
 FCV9fGARW7QmrSToNDPYny63UzkQ58We2FTFTsqO8pkYNPZaLTHaQ14kBMl/z67w471myj
 TbflBaG/0ZYtQfEUDZQeeIqqCd8W/nM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-OyS-w0OOPfCXkYu6xkkqOg-1; Thu, 24 Oct 2019 08:10:30 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17898800D49;
 Thu, 24 Oct 2019 12:10:23 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9159B52D1;
 Thu, 24 Oct 2019 12:10:01 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v1 01/10] mm/memory_hotplug: Don't allow to online/offline
 memory blocks with holes
Date: Thu, 24 Oct 2019 14:09:29 +0200
Message-Id: <20191024120938.11237-2-david@redhat.com>
In-Reply-To: <20191024120938.11237-1-david@redhat.com>
References: <20191024120938.11237-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: OyS-w0OOPfCXkYu6xkkqOg-1
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

Our onlining/offlining code is unnecessarily complicated. Only memory
blocks added during boot can have holes (a range that is not
IORESOURCE_SYSTEM_RAM). Hotplugged memory never has holes (e.g., see
add_memory_resource()). All boot memory is alread online.

Therefore, when we stop allowing to offline memory blocks with holes, we
implicitly no longer have to deal with onlining memory blocks with holes.

This allows to simplify the code. For example, we no longer have to
worry about marking pages that fall into memory holes PG_reserved when
onlining memory. We can stop setting pages PG_reserved.

Offlining memory blocks added during boot is usually not guranteed to work
either way (unmovable data might have easily ended up on that memory during
boot). So stopping to do that should not really hurt (+ people are not
even aware of a setup where that used to work and that the existing code
still works correctly with memory holes). For the use case of offlining
memory to unplug DIMMs, we should see no change. (holes on DIMMs would be
weird).

Please note that hardware errors (PG_hwpoison) are not memory holes and
not affected by this change when offlining.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memory_hotplug.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 561371ead39a..8d81730cf036 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -1447,10 +1447,19 @@ static void node_states_clear_node(int node, struct memory_notify *arg)
 		node_clear_state(node, N_MEMORY);
 }
 
+static int count_system_ram_pages_cb(unsigned long start_pfn,
+				     unsigned long nr_pages, void *data)
+{
+	unsigned long *nr_system_ram_pages = data;
+
+	*nr_system_ram_pages += nr_pages;
+	return 0;
+}
+
 static int __ref __offline_pages(unsigned long start_pfn,
 		  unsigned long end_pfn)
 {
-	unsigned long pfn, nr_pages;
+	unsigned long pfn, nr_pages = 0;
 	unsigned long offlined_pages = 0;
 	int ret, node, nr_isolate_pageblock;
 	unsigned long flags;
@@ -1461,6 +1470,20 @@ static int __ref __offline_pages(unsigned long start_pfn,
 
 	mem_hotplug_begin();
 
+	/*
+	 * Don't allow to offline memory blocks that contain holes.
+	 * Consecuently, memory blocks with holes can never get onlined
+	 * (hotplugged memory has no holes and all boot memory is online).
+	 * This allows to simplify the onlining/offlining code quite a lot.
+	 */
+	walk_system_ram_range(start_pfn, end_pfn - start_pfn, &nr_pages,
+			      count_system_ram_pages_cb);
+	if (nr_pages != end_pfn - start_pfn) {
+		ret = -EINVAL;
+		reason = "memory holes";
+		goto failed_removal;
+	}
+
 	/* This makes hotplug much easier...and readable.
 	   we assume this for now. .*/
 	if (!test_pages_in_a_zone(start_pfn, end_pfn, &valid_start,
@@ -1472,7 +1495,6 @@ static int __ref __offline_pages(unsigned long start_pfn,
 
 	zone = page_zone(pfn_to_page(valid_start));
 	node = zone_to_nid(zone);
-	nr_pages = end_pfn - start_pfn;
 
 	/* set above range as isolated */
 	ret = start_isolate_page_range(start_pfn, end_pfn,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
