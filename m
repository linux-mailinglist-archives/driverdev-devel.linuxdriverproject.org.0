Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CF6EC90C
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 20:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC88988575;
	Fri,  1 Nov 2019 19:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXWx9XdqjCju; Fri,  1 Nov 2019 19:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 563A288454;
	Fri,  1 Nov 2019 19:25:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07BF11BF95D
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 19:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02E6287DDD
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 19:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+tgGUGQJZD8 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 19:25:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EAD2B87DDC
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 19:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572636346;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gjjm7Uw5loPShvkS5aQcZzMu+cIOGO3TF0cBurKv6Fo=;
 b=hDrqjZRskOEpHOV2LA5kveI03177TyfzmHbUXtfRBT4GpD7UGodxUkTsG0p6XgchjjaEor
 7bSXNwVgvY9UyBaDwxAHSGlj6wzXctVMBz4W6PimhAqC1t87OpsuAEXu+AyeFgkH9xCY0o
 KvLRnjgkACKRlmlUdrTfL51neFFrRAg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-GxUhE1sJOai6Nmi9ZYzjFA-1; Fri, 01 Nov 2019 15:25:37 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAC95111;
 Fri,  1 Nov 2019 19:25:30 +0000 (UTC)
Received: from [10.36.116.26] (ovpn-116-26.ams2.redhat.com [10.36.116.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D01719C58;
 Fri,  1 Nov 2019 19:24:44 +0000 (UTC)
Subject: Re: [PATCH v1 00/10] mm: Don't mark hotplugged pages PG_reserved
 (including ZONE_DEVICE)
To: linux-kernel@vger.kernel.org
References: <20191024120938.11237-1-david@redhat.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <8564fdc7-9a82-6455-50a8-6943cfd6b885@redhat.com>
Date: Fri, 1 Nov 2019 20:24:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191024120938.11237-1-david@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: GxUhE1sJOai6Nmi9ZYzjFA-1
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
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, linux-mm@kvack.org,
 Michael Ellerman <mpe@ellerman.id.au>, "H. Peter Anvin" <hpa@zytor.com>,
 Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Kees Cook <keescook@chromium.org>,
 devel@driverdev.osuosl.org, Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>,
 Jeff Moyer <jmoyer@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Anthony Yznaga <anthony.yznaga@oracle.com>,
 Oscar Salvador <osalvador@suse.de>,
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24.10.19 14:09, David Hildenbrand wrote:
> This is the result of a recent discussion with Michal ([1], [2]). Right
> now we set all pages PG_reserved when initializing hotplugged memmaps. This
> includes ZONE_DEVICE memory. In case of system memory, PG_reserved is
> cleared again when onlining the memory, in case of ZONE_DEVICE memory
> never.
> 
> In ancient times, we needed PG_reserved, because there was no way to tell
> whether the memmap was already properly initialized. We now have
> SECTION_IS_ONLINE for that in the case of !ZONE_DEVICE memory. ZONE_DEVICE
> memory is already initialized deferred, and there shouldn't be a visible
> change in that regard.
> 
> One of the biggest fears were side effects. I went ahead and audited all
> users of PageReserved(). The details can be found in "mm/memory_hotplug:
> Don't mark pages PG_reserved when initializing the memmap".
> 
> This patch set adapts all relevant users of PageReserved() to keep the
> existing behavior in respect to ZONE_DEVICE pages. The biggest part part
> that needs changes is KVM, to keep the existing behavior (that's all I
> care about in this series).
> 
> Note that this series is able to rely completely on pfn_to_online_page().
> No new is_zone_device_page() calles are introduced (as requested by Dan).
> We are currently discussing a way to mark also ZONE_DEVICE memmaps as
> active/initialized - pfn_active() - and lightweight locking to make sure
> memmaps remain active (e.g., using RCU). We might later be able to convert
> some suers of pfn_to_online_page() to pfn_active(). Details can be found
> in [3], however, this represents yet another cleanup/fix we'll perform
> on top of this cleanup.
> 
> I only gave it a quick test with DIMMs on x86-64, but didn't test the
> ZONE_DEVICE part at all (any tips for a nice QEMU setup?). Also, I didn't
> test the KVM parts (especially with ZONE_DEVICE pages or no memmap at all).
> Compile-tested on x86-64 and PPC.
> 

Jeff Moyer ran some NVDIMM test cases for me (thanks!!!), including 
xfstests, pmdk, and ndctl. No regressions found.

I will run some KVM tests, especially NDIMM passthrough, but will have 
to setup a test environment first.

I would appreciate some review in the meantime. :)

-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
