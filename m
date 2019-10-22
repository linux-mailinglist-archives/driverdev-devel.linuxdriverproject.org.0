Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B973E0A3C
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 19:13:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 224F5871F4;
	Tue, 22 Oct 2019 17:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wh7LgFG8eli8; Tue, 22 Oct 2019 17:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E99CD85CA8;
	Tue, 22 Oct 2019 17:13:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 219871BF866
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 161FF85CC3
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xcUK37M8aKbA for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 17:13:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2358B85CA8
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 17:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571764419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AZH06pjD8CJbFdhi6tvHbczu1qJrML9IKvQHQzytrv0=;
 b=HjwTHavssJir/f35aIosF2GH9mBMREjy/yTEf/2cBJgw3Y/CJvc2mVC4q2udJV7TUDP+aD
 SEiVBUQOI9SFhqcpzzZm+gSBxu0Q3t3/FeWm20V5+CJ4/qjz6FOvJJDLb/STPXKPoqDK2Z
 BPmhDQ/SbjKrZq1zmNNMzrRT2TAvWsA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-GNMLLVycPz2hWyHgrsFHmQ-1; Tue, 22 Oct 2019 13:13:37 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03CD81800D6A;
 Tue, 22 Oct 2019 17:13:31 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-248.ams2.redhat.com [10.36.116.248])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C74C05DA8D;
 Tue, 22 Oct 2019 17:13:07 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC v1 01/12] mm/memory_hotplug: Don't allow to online/offline
 memory blocks with holes
Date: Tue, 22 Oct 2019 19:12:28 +0200
Message-Id: <20191022171239.21487-2-david@redhat.com>
In-Reply-To: <20191022171239.21487-1-david@redhat.com>
References: <20191022171239.21487-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: GNMLLVycPz2hWyHgrsFHmQ-1
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Michal Hocko <mhocko@suse.com>,
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
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>,
 Dan Williams <dan.j.williams@intel.com>, kvm-ppc@vger.kernel.org,
 Qian Cai <cai@lca.pw>, Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Our onlining/offlining code is unnecessarily complicated. Only memory
blocks added during boot can have holes. Hotplugged memory never has
holes. That memory is already online.

When we stop allowing to offline memory blocks with holes, we implicitly
stop to online memory blocks with holes.

This allows to simplify the code. For example, we no longer have to
worry about marking pages that fall into memory holes PG_reserved when
onlining memory. We can stop setting pages PG_reserved.

Offlining memory blocks added during boot is usually not guranteed to work
either way. So stopping to do that (if anybody really used and tested
this over the years) should not really hurt. For the use case of
offlining memory to unplug DIMMs, we should see no change. (holes on
DIMMs would be weird)

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memory_hotplug.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 561371ead39a..7210f4375279 100644
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
+	 * We don't allow to offline memory blocks that contain holes
+	 * and consecuently don't allow to online memory blocks that contain
+	 * holes. This allows to simplify the code quite a lot and we don't
+	 * have to mess with PG_reserved pages for memory holes.
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
