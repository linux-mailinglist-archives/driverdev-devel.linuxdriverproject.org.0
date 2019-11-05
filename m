Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F8AEFAC9
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 11:19:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC3FF8946B;
	Tue,  5 Nov 2019 10:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id snTSITNhxIf3; Tue,  5 Nov 2019 10:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D19789360;
	Tue,  5 Nov 2019 10:19:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 811111BF2C3
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 10:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E5BB20510
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 10:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4DNmrNd0-NJq for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 10:19:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 906DD204E1
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 10:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572949153;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zpJOg9tRFGLs7o7eYo++6NFqtTaXes69ojKC+HhCSpc=;
 b=hrrgGHlAzYGNFIJo7bxvwJJ8vTsWuRiQJ9NHG3v7Xituo+YXpRvlFSMAgw7qmq5x2jc9+z
 j7ilIF+abF7BhnvKUElrFD+0EbS0ZfCc2fJg89LTA9cWN0vWknBI7WhbBLN0Xwnm9/qzZM
 +sS4FS+B9pAvdcUtEzSZ7aMY1xuLOB8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-_Ng1Kzh9PfuCsQVariDZFQ-1; Tue, 05 Nov 2019 05:19:11 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 87B62FF;
 Tue,  5 Nov 2019 10:19:05 +0000 (UTC)
Received: from [10.36.117.253] (ovpn-117-253.ams2.redhat.com [10.36.117.253])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB3B1608AC;
 Tue,  5 Nov 2019 10:18:50 +0000 (UTC)
Subject: Re: [PATCH v1 09/10] mm/memory_hotplug: Don't mark pages PG_reserved
 when initializing the memmap
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>, linux-kernel@vger.kernel.org
References: <20191024120938.11237-1-david@redhat.com>
 <20191024120938.11237-10-david@redhat.com>
 <4b88ebd7-255d-4f02-a347-5a6c0f4f4ac4@oracle.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <eba1a63f-c786-edc0-dc6d-2791eb034f33@redhat.com>
Date: Tue, 5 Nov 2019 11:18:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <4b88ebd7-255d-4f02-a347-5a6c0f4f4ac4@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: _Ng1Kzh9PfuCsQVariDZFQ-1
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
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
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
 xen-devel@lists.xenproject.org, Dan Williams <dan.j.williams@intel.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Cornelia Huck <cohuck@redhat.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 04.11.19 23:44, Boris Ostrovsky wrote:
> On 10/24/19 8:09 AM, David Hildenbrand wrote:
>> diff --git a/drivers/xen/balloon.c b/drivers/xen/balloon.c
>> index 4f2e78a5e4db..af69f057913a 100644
>> --- a/drivers/xen/balloon.c
>> +++ b/drivers/xen/balloon.c
>> @@ -374,6 +374,13 @@ static void xen_online_page(struct page *page, unsigned int order)
>>   	mutex_lock(&balloon_mutex);
>>   	for (i = 0; i < size; i++) {
>>   		p = pfn_to_page(start_pfn + i);
>> +		/*
>> +		 * TODO: The core used to mark the pages reserved. Most probably
>> +		 * we can stop doing that now. However, especially
>> +		 * alloc_xenballooned_pages() left PG_reserved set
>> +		 * on pages that can get mapped to user space.
>> +		 */
>> +		__SetPageReserved(p);
> 
> I suspect this is not needed. Pages can get into balloon either from
> here or from non-hotplug path (e.g. decrease_reservation()) and so when
> we get a page from the balloon we would get a random page that may or
> may not have Reserved bit set.

Yeah, I also think it is fine. If you agree, I'll drop this hunk and add 
details to the patch description.


-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
