Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F16E210B
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 18:53:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4854C20C41;
	Wed, 23 Oct 2019 16:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95mdHFQh7x5V; Wed, 23 Oct 2019 16:52:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C2D4D22851;
	Wed, 23 Oct 2019 16:52:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2BA91BF2FF
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DBFA9877E9
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 16:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id clcWPDCP9Em4 for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 16:52:53 +0000 (UTC)
X-Greylist: delayed 00:27:01 by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 221E8875F9
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 16:52:53 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id u23so1798951pgo.0
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 09:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2ozmEBacDU37qdWHmaIXZS/t2e/cIQTfwOrpKCFE/tE=;
 b=bCC1XEBzNQHigL0d7R6bPEzxm8alb+W4dTu8itjDoIuQnpvCdh21/KVzmfE+Tgs+ET
 ceWRH1QFAtQCwVmj0wWuvh6QCkQaRgwgCLBTlsOklkfp9LViU9s8B80hK7K0MoC/AGMW
 ZF1fsM40mC3fIPu5YTFXe03NoKjMsALdc4tX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2ozmEBacDU37qdWHmaIXZS/t2e/cIQTfwOrpKCFE/tE=;
 b=ukU3fUOcX9YS2dc5vn50cDH2sDoH7f+tfkGTJZx94L7UscboAntwLKaxtsaFGP7wBv
 y2hgS+j4OinHKYQaw7ZVOrNVFVaOZv0f/v2FGsmbBNhs86ZT4qbrSzBNfeqjlx01O8tG
 FiPO+453TXuzpkUIV94a/Yx4ddHgrZs/B6llgug0168ckV5vsFP4r8zfjCm7ssTIjp3T
 XGVZeBD0trPnDVMDxWtgdC25rdTBMWt8dv7PZ5QrodaF6voxy9hx73zAbvkVwuyOjlzL
 CTQxBa4PnsK0XRiT75zUqY2VgPfMh2LUg5bwTkBOqNdPC4zTXX+Q7o4oT/WzkDFIg2vU
 Yqzg==
X-Gm-Message-State: APjAAAUZk+1sPQkfO2/OSal7pEph12uK4+izSvFWQNuLfVDkC4vNl8g6
 Vkm5+mTudVDuNHFudx0f7TnpsK2qzvI=
X-Google-Smtp-Source: APXvYqw1/SgWscVWVYwNzvC56vf/67s2dhZn0DnFv2vyro2EnV66Rhc87hJA64tPAho0TcM73pujSw==
X-Received: by 2002:a63:1042:: with SMTP id 2mr11383658pgq.59.1571847952291;
 Wed, 23 Oct 2019 09:25:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y8sm27285047pgs.34.2019.10.23.09.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 09:25:51 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:25:49 -0700
From: Kees Cook <keescook@chromium.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH RFC v1 02/12] mm/usercopy.c: Prepare check_page_span()
 for PG_reserved changes
Message-ID: <201910230924.DE879ED80F@keescook>
References: <20191022171239.21487-1-david@redhat.com>
 <20191022171239.21487-3-david@redhat.com>
 <a8313fb1-50f3-9083-fd07-297ddf86658e@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8313fb1-50f3-9083-fd07-297ddf86658e@redhat.com>
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
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, devel@driverdev.osuosl.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Matthew Wilcox <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>,
 Dan Williams <dan.j.williams@intel.com>, kvm-ppc@vger.kernel.org,
 Qian Cai <cai@lca.pw>, Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 23, 2019 at 10:20:14AM +0200, David Hildenbrand wrote:
> On 22.10.19 19:12, David Hildenbrand wrote:
> > Right now, ZONE_DEVICE memory is always set PG_reserved. We want to
> > change that.
> > 
> > Let's make sure that the logic in the function won't change. Once we no
> > longer set these pages to reserved, we can rework this function to
> > perform separate checks for ZONE_DEVICE (split from PG_reserved checks).
> > 
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > Cc: Allison Randal <allison@lohutok.net>
> > Cc: "Isaac J. Manjarres" <isaacm@codeaurora.org>
> > Cc: Qian Cai <cai@lca.pw>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: David Hildenbrand <david@redhat.com>
> > ---
> >   mm/usercopy.c | 5 +++--
> >   1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/mm/usercopy.c b/mm/usercopy.c
> > index 660717a1ea5c..a3ac4be35cde 100644
> > --- a/mm/usercopy.c
> > +++ b/mm/usercopy.c
> > @@ -203,14 +203,15 @@ static inline void check_page_span(const void *ptr, unsigned long n,
> >   	 * device memory), or CMA. Otherwise, reject since the object spans
> >   	 * several independently allocated pages.
> >   	 */
> > -	is_reserved = PageReserved(page);
> > +	is_reserved = PageReserved(page) || is_zone_device_page(page);
> >   	is_cma = is_migrate_cma_page(page);
> >   	if (!is_reserved && !is_cma)
> >   		usercopy_abort("spans multiple pages", NULL, to_user, 0, n);
> >   	for (ptr += PAGE_SIZE; ptr <= end; ptr += PAGE_SIZE) {
> >   		page = virt_to_head_page(ptr);
> > -		if (is_reserved && !PageReserved(page))
> > +		if (is_reserved && !(PageReserved(page) ||
> > +				     is_zone_device_page(page)))
> >   			usercopy_abort("spans Reserved and non-Reserved pages",
> >   				       NULL, to_user, 0, n);
> >   		if (is_cma && !is_migrate_cma_page(page))
> > 
> 
> @Kees, would it be okay to stop checking against ZONE_DEVICE pages here or
> is there a good rationale behind this?
> 
> (I would turn this patch into a simple update of the comment if we agree
> that we don't care)

There has been work to actually remove the page span checks entirely,
but there wasn't consensus on what the right way forward was. I continue
to leaning toward just dropping it entirely, but Matthew Wilcox has some
alternative ideas that could use some further thought/testing.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
