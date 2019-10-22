Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4859E0D94
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 23:02:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC95386F9E;
	Tue, 22 Oct 2019 21:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1C7QO6768Q1; Tue, 22 Oct 2019 21:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82F7D81F17;
	Tue, 22 Oct 2019 21:02:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D08CC1BF41E
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 21:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C803F8475D
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 21:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPd6AwBYyaRB for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 21:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5904781F17
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 21:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571778119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lDluS1kFGuVOpDajeFMqVqWUjgUNxTiQB+IGh/4U/Fc=;
 b=YHbp1u4ysqfD0tjck2+6YiEtSZ2R5k9wyS+/FWZf3hG6HFgb66fFDdhxfeye5SkumvxejE
 HQzcwyhCtyxr9Qm91UMgpA81LT2fxMMLIUHpQ/zgmvWClCt8WYqP5GaEMBGnLa/z6v/MDD
 1OdoypBGVIqbFRPIdlLDx9pWieHkhLU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-nU6b3-OQN5ap8UXZu4oVWg-1; Tue, 22 Oct 2019 17:01:55 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AB3E1005500;
 Tue, 22 Oct 2019 21:01:50 +0000 (UTC)
Received: from [10.36.116.48] (ovpn-116-48.ams2.redhat.com [10.36.116.48])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB2D860872;
 Tue, 22 Oct 2019 21:01:24 +0000 (UTC)
Subject: Re: [PATCH RFC v1 07/12] staging: kpc2000: Prepare
 transfer_complete_cb() for PG_reserved changes
To: Matt Sickler <Matt.Sickler@daktronics.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20191022171239.21487-1-david@redhat.com>
 <20191022171239.21487-8-david@redhat.com>
 <SN6PR02MB4016D75C028B7A1BEA005697EE680@SN6PR02MB4016.namprd02.prod.outlook.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <20b91026-a685-8c49-4abe-a9d0339113cb@redhat.com>
Date: Tue, 22 Oct 2019 23:01:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <SN6PR02MB4016D75C028B7A1BEA005697EE680@SN6PR02MB4016.namprd02.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: nU6b3-OQN5ap8UXZu4oVWg-1
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
 Sasha Levin <sashal@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Michal Hocko <mhocko@suse.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, "x86@kernel.org" <x86@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>,
 Dan Williams <dan.j.williams@intel.com>,
 "kvm-ppc@vger.kernel.org" <kvm-ppc@vger.kernel.org>, Qian Cai <cai@lca.pw>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22.10.19 19:55, Matt Sickler wrote:
>> Right now, ZONE_DEVICE memory is always set PG_reserved. We want to change that.
>>
>> The pages are obtained via get_user_pages_fast(). I assume, these could be ZONE_DEVICE pages. Let's just exclude them as well explicitly.
> 
> I'm not sure what ZONE_DEVICE pages are, but these pages are normal system RAM, typically HugePages (but not always).

ZONE_DEVICE, a.k.a. devmem, are pages that bypass the pagecache (e.g., 
DAX) completely and will therefore never get swapped. These pages are 
not managed by any page allocator (especially not the buddy), they are 
rather "directly mapped device memory".

E.g., a NVDIMM. It is mapped into the physical address space similar to 
ordinary RAM (a DIMM). Any write to such a PFN will directly end up on 
the target device. In contrast to a DIMM, the memory is persistent 
accross reboots.

Now, if you mmap such an NVDIMM into a user space process, you will end 
up with ZONE_DEVICE pages as part of the user space mapping (VMA). 
get_user_pages_fast() on this memory will result in "struct pages" that 
belong to ZONE_DEVICE. This is where this patch comes into play.

This patch makes sure that there is absolutely no change once we stop 
setting these ZONE_DEVICE pages PG_reserved. E.g., AFAIK, setting a 
ZONE_DEVICE page dirty does not make too much sense (never swapped).

Yes, it might not be a likely setup, however, it is possible. In this 
series I collect all places that *could* be affected. If that change is 
really needed has to be decided. I can see that the two staging drivers 
I have patches for might be able to just live with the change - but then 
we talked about it and are aware of the change.

Thanks!

-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
