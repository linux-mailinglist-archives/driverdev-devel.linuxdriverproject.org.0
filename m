Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B22E13EE
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 10:20:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A4A8204CF;
	Wed, 23 Oct 2019 08:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjFdXRrgTbv5; Wed, 23 Oct 2019 08:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E35C72034F;
	Wed, 23 Oct 2019 08:20:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8A2D1BF304
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 08:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EFE486919
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 08:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-chi7f+MfaN for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 08:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BCD9285CBB
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 08:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571818840;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZYwRT87GkK/iKD1IC7yG62REkwJqyJxXRU8O7sH7WsI=;
 b=XseFJxHLQVzFmrOvPVNELeRYAB/zQWx8lYVv2LlZvZycG8KTPa/ym2JDMxSVxQWiDdNSm4
 faUxyQN9t4S3ln6De95Q3vHX/q0o1k2Afi+LUE/I2JBoDkSsgvRVWiScA6B84rVDY8rs3A
 DW/epqiYHp7JF0Xd+XxFIqehJkdQ3mo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-HevUVdjDPbOvQMNsP_rCWQ-1; Wed, 23 Oct 2019 04:20:36 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9CFB800D54;
 Wed, 23 Oct 2019 08:20:30 +0000 (UTC)
Received: from [10.36.117.79] (ovpn-117-79.ams2.redhat.com [10.36.117.79])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1CEFA5C219;
 Wed, 23 Oct 2019 08:20:14 +0000 (UTC)
Subject: Re: [PATCH RFC v1 02/12] mm/usercopy.c: Prepare check_page_span() for
 PG_reserved changes
To: linux-kernel@vger.kernel.org
References: <20191022171239.21487-1-david@redhat.com>
 <20191022171239.21487-3-david@redhat.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <a8313fb1-50f3-9083-fd07-297ddf86658e@redhat.com>
Date: Wed, 23 Oct 2019 10:20:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191022171239.21487-3-david@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: HevUVdjDPbOvQMNsP_rCWQ-1
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
 =?UTF-8?Q?Simon_Sandstr=c3=b6m?= <simon@nikanor.nu>,
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22.10.19 19:12, David Hildenbrand wrote:
> Right now, ZONE_DEVICE memory is always set PG_reserved. We want to
> change that.
> 
> Let's make sure that the logic in the function won't change. Once we no
> longer set these pages to reserved, we can rework this function to
> perform separate checks for ZONE_DEVICE (split from PG_reserved checks).
> 
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Kate Stewart <kstewart@linuxfoundation.org>
> Cc: Allison Randal <allison@lohutok.net>
> Cc: "Isaac J. Manjarres" <isaacm@codeaurora.org>
> Cc: Qian Cai <cai@lca.pw>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>   mm/usercopy.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/usercopy.c b/mm/usercopy.c
> index 660717a1ea5c..a3ac4be35cde 100644
> --- a/mm/usercopy.c
> +++ b/mm/usercopy.c
> @@ -203,14 +203,15 @@ static inline void check_page_span(const void *ptr, unsigned long n,
>   	 * device memory), or CMA. Otherwise, reject since the object spans
>   	 * several independently allocated pages.
>   	 */
> -	is_reserved = PageReserved(page);
> +	is_reserved = PageReserved(page) || is_zone_device_page(page);
>   	is_cma = is_migrate_cma_page(page);
>   	if (!is_reserved && !is_cma)
>   		usercopy_abort("spans multiple pages", NULL, to_user, 0, n);
>   
>   	for (ptr += PAGE_SIZE; ptr <= end; ptr += PAGE_SIZE) {
>   		page = virt_to_head_page(ptr);
> -		if (is_reserved && !PageReserved(page))
> +		if (is_reserved && !(PageReserved(page) ||
> +				     is_zone_device_page(page)))
>   			usercopy_abort("spans Reserved and non-Reserved pages",
>   				       NULL, to_user, 0, n);
>   		if (is_cma && !is_migrate_cma_page(page))
> 

@Kees, would it be okay to stop checking against ZONE_DEVICE pages here 
or is there a good rationale behind this?

(I would turn this patch into a simple update of the comment if we agree 
that we don't care)

-- 

Thanks,

David / dhildenb

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
