Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AF66A682
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 12:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D09BC873B6;
	Tue, 16 Jul 2019 10:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y+KS2MhOaw0N; Tue, 16 Jul 2019 10:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDF0E8760D;
	Tue, 16 Jul 2019 10:28:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC97A1BF296
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 10:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D997087D7F
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 10:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLB9SYcvEodB for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 10:28:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 250EC87D76
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 10:28:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f5so391435pgu.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 03:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y9oHIuUnvA5xAOt2sG5I7PMnR70HX2a42btCOmZ0knc=;
 b=M1ei1CGtQUJ5wTz3qfdFMu+ibfhjsSqHNuABQXK+2mW2UaYsiKQmVgHImwaupyK1SJ
 WUzRu+v5p7JsCmFBucUUvbohrtTGD97XSBRI1dYMytdItzK17BNlRGMrQA+h/ELLHQzR
 LcE41K2Ds0I3L3RXd98KR7nMiZM5xKj7ndtMxKrcP1qX3ePptWLdDV5OTMPXyB0+JtMw
 Cm18CJIz9Z36j842xjw/5DYVtYdMGcg49LjUOFevHhJuhtJBtgUmsfxOJ7eJ7+mCIqIH
 DsxwZZcDk5a35gmc2Q+XPfARfNueBwJWzGiKzPi7CoLDdEWoaNtwPS7kePJcxf00Wcuc
 8yZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y9oHIuUnvA5xAOt2sG5I7PMnR70HX2a42btCOmZ0knc=;
 b=hf9CcAvtWkFwOemXdZXtPk84P15VfPkd4zTXsFvJ/dsfWeYkiL5LWTCzHs1g+TYOpd
 D5xQ5/ADEJ4chpjZW3cP6bU7WMiWcDFZryjXlhNdgU99j7c4KAsfjsSwNUGuie9LzNAN
 veTJvIK2clS1W5S/a50sAye/7qzRog3tPn+kXCcBr0pWDRGdbZ9UZ5/KFoHEBZt8fWWW
 6gQqUOaNZ7512iofQA+JRZJRaC8jtGFTd2pwklisC1YOCnkbTK8GH4SfLTnThkVzSshZ
 LDSSCUtR2gd+jkOdzwLdrbpfJpM3OkdJf8O99nfn1ICysjIf/n3yPAARVKh9PAamRykh
 0N1g==
X-Gm-Message-State: APjAAAXhb97nfo4X+HyLL2qh0w32qswegKXbXIa0iCpOoQDx9YxeRtnS
 +BP0Uss8qHwx5NcWCobw+9k=
X-Google-Smtp-Source: APXvYqzOWjwHADtg0IeTrZRs0dD/whTFszTRqY/XHlwCOHIyoUAXjjxmcFPlmNZSWKUocUa8VGy4Bw==
X-Received: by 2002:a63:494d:: with SMTP id y13mr33092205pgk.109.1563272903599; 
 Tue, 16 Jul 2019 03:28:23 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.34])
 by smtp.gmail.com with ESMTPSA id p27sm33040074pfq.136.2019.07.16.03.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 03:28:23 -0700 (PDT)
Date: Tue, 16 Jul 2019 15:58:14 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: John Hubbard <jhubbard@nvidia.com>
Subject: Re: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
Message-ID: <20190716102814.GA8715@bharath12345-Inspiron-5559>
References: <20190715195248.GA22495@bharath12345-Inspiron-5559>
 <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
 <SN6PR02MB4016687B605E3D97D699956EEECF0@SN6PR02MB4016.namprd02.prod.outlook.com>
 <82441723-f30e-5811-ab1c-dd9a4993d7df@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82441723-f30e-5811-ab1c-dd9a4993d7df@nvidia.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "jglisse@redhat.com" <jglisse@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 03:01:43PM -0700, John Hubbard wrote:
> On 7/15/19 2:47 PM, Matt Sickler wrote:
> > It looks like Outlook is going to absolutely trash this email.  Hopefully it comes through okay.
> > 
> ...
> >>
> >> Because this is a common pattern, and because the code here doesn't likely
> >> need to set page dirty before the dma_unmap_sg call, I think the following
> >> would be better (it's untested), instead of the above diff hunk:
> >>
> >> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c
> >> b/drivers/staging/kpc2000/kpc_dma/fileops.c
> >> index 48ca88bc6b0b..d486f9866449 100644
> >> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> >> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> >> @@ -211,16 +211,13 @@ void  transfer_complete_cb(struct aio_cb_data
> >> *acd, size_t xfr_count, u32 flags)
> >>        BUG_ON(acd->ldev == NULL);
> >>        BUG_ON(acd->ldev->pldev == NULL);
> >>
> >> -       for (i = 0 ; i < acd->page_count ; i++) {
> >> -               if (!PageReserved(acd->user_pages[i])) {
> >> -                       set_page_dirty(acd->user_pages[i]);
> >> -               }
> >> -       }
> >> -
> >>        dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
> >>
> >>        for (i = 0 ; i < acd->page_count ; i++) {
> >> -               put_page(acd->user_pages[i]);
> >> +               if (!PageReserved(acd->user_pages[i])) {
> >> +                       put_user_pages_dirty(&acd->user_pages[i], 1);
> >> +               else
> >> +                       put_user_page(acd->user_pages[i]);
> >>        }
> >>
> >>        sg_free_table(&acd->sgt);
> > 
> > I don't think I ever really knew the right way to do this. 
> > 
> > The changes Bharath suggested look okay to me.  I'm not sure about the check for PageReserved(), though.  At first glance it appears to be equivalent to what was there before, but maybe I should learn what that Reserved page flag really means.
> > From [1], the only comment that seems applicable is
> > * - MMIO/DMA pages. Some architectures don't allow to ioremap pages that are
> >  *   not marked PG_reserved (as they might be in use by somebody else who does
> >  *   not respect the caching strategy).
> > 
> > These pages should be coming from anonymous (RAM, not file backed) memory in userspace.  Sometimes it comes from hugepage backed memory, though I don't think that makes a difference.  I should note that transfer_complete_cb handles both RAM to device and device to RAM DMAs, if that matters.
Yes. file_operations->read passes a userspace buffer which AFAIK is
anonymous memory.
> > [1] https://elixir.bootlin.com/linux/v5.2/source/include/linux/page-flags.h#L17
> > 
> 
> I agree: the PageReserved check looks unnecessary here, from my outside-the-kpc_2000-team
> perspective, anyway. Assuming that your analysis above is correct, you could collapse that
> whole think into just:
Since the file_operations->read passes a userspace buffer, I doubt that
the pages of the userspace buffer will be reserved.
> @@ -211,17 +209,8 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
>         BUG_ON(acd->ldev == NULL);
>         BUG_ON(acd->ldev->pldev == NULL);
>  
> -       for (i = 0 ; i < acd->page_count ; i++) {
> -               if (!PageReserved(acd->user_pages[i])) {
> -                       set_page_dirty(acd->user_pages[i]);
> -               }
> -       }
> -
>         dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
> -
> -       for (i = 0 ; i < acd->page_count ; i++) {
> -               put_page(acd->user_pages[i]);
> -       }
> +       put_user_pages_dirty(&acd->user_pages[i], acd->page_count);
>  
>         sg_free_table(&acd->sgt);
>  
> (Also, Matt, I failed to Cc: you on a semi-related cleanup that I just sent out for this
> driver, as long as I have your attention:
> 
>    https://lore.kernel.org/r/20190715212123.432-1-jhubbard@nvidia.com
> )
Matt will you be willing to pick this up for testing or do you want a
different patch?
> thanks,
> -- 
> John Hubbard
> NVIDIA
Thank you
Bharath
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
