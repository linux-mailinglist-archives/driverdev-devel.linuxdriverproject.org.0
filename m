Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 438BB69E98
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 00:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B558F86DB3;
	Mon, 15 Jul 2019 22:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ysRla8fV5sKz; Mon, 15 Jul 2019 22:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E4C886AF9;
	Mon, 15 Jul 2019 22:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9FA01BF35C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D4B5786AE3
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-U4lEYrECnh for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 22:01:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65CE386A70
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:01:44 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2cf7c70001>; Mon, 15 Jul 2019 15:01:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 15 Jul 2019 15:01:43 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 15 Jul 2019 15:01:43 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 15 Jul
 2019 22:01:43 +0000
Subject: Re: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
To: Matt Sickler <Matt.Sickler@daktronics.com>, Bharath Vedartham
 <linux.bhar@gmail.com>, "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jglisse@redhat.com" <jglisse@redhat.com>
References: <20190715195248.GA22495@bharath12345-Inspiron-5559>
 <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
 <SN6PR02MB4016687B605E3D97D699956EEECF0@SN6PR02MB4016.namprd02.prod.outlook.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <82441723-f30e-5811-ab1c-dd9a4993d7df@nvidia.com>
Date: Mon, 15 Jul 2019 15:01:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <SN6PR02MB4016687B605E3D97D699956EEECF0@SN6PR02MB4016.namprd02.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563228104; bh=pmH8AOUq8g8XbwlwsJrEBANIpIcymTdRjNl5DWvnpyg=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Ou4gJH5x6FSY3NMqcJQf183vJDxwn7bEzDDasocDjOFBwy0aNrdr53eL2R8CW/9dL
 plCx/M0zxRdPOGuKWIYK8+Mk+vTd387oaFoPbs1kfbjbEugerJ/YR7VoM0OrQ6ApiF
 AtQrkmclnAt7heWlSDgasNxNbDBDFoZjoNNNhky+v8mnwxCXYFCh5qm2bnkUYN62KB
 GI4zsZ3QPdVPX5uwuPO/U4/c//c7BAGS6uNQy9VF/EDvkMmHQOONHfT/s86RYUoMEv
 a+AkY30uLQx3Y/5jA5CFNmO980oPxzh9grMS6V9Hk/wCk+ABXvwJ8kj1Gv/MWNOUez
 14/khGOG4+Ylg==
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
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/15/19 2:47 PM, Matt Sickler wrote:
> It looks like Outlook is going to absolutely trash this email.  Hopefully it comes through okay.
> 
...
>>
>> Because this is a common pattern, and because the code here doesn't likely
>> need to set page dirty before the dma_unmap_sg call, I think the following
>> would be better (it's untested), instead of the above diff hunk:
>>
>> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c
>> b/drivers/staging/kpc2000/kpc_dma/fileops.c
>> index 48ca88bc6b0b..d486f9866449 100644
>> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
>> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
>> @@ -211,16 +211,13 @@ void  transfer_complete_cb(struct aio_cb_data
>> *acd, size_t xfr_count, u32 flags)
>>        BUG_ON(acd->ldev == NULL);
>>        BUG_ON(acd->ldev->pldev == NULL);
>>
>> -       for (i = 0 ; i < acd->page_count ; i++) {
>> -               if (!PageReserved(acd->user_pages[i])) {
>> -                       set_page_dirty(acd->user_pages[i]);
>> -               }
>> -       }
>> -
>>        dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
>>
>>        for (i = 0 ; i < acd->page_count ; i++) {
>> -               put_page(acd->user_pages[i]);
>> +               if (!PageReserved(acd->user_pages[i])) {
>> +                       put_user_pages_dirty(&acd->user_pages[i], 1);
>> +               else
>> +                       put_user_page(acd->user_pages[i]);
>>        }
>>
>>        sg_free_table(&acd->sgt);
> 
> I don't think I ever really knew the right way to do this. 
> 
> The changes Bharath suggested look okay to me.  I'm not sure about the check for PageReserved(), though.  At first glance it appears to be equivalent to what was there before, but maybe I should learn what that Reserved page flag really means.
> From [1], the only comment that seems applicable is
> * - MMIO/DMA pages. Some architectures don't allow to ioremap pages that are
>  *   not marked PG_reserved (as they might be in use by somebody else who does
>  *   not respect the caching strategy).
> 
> These pages should be coming from anonymous (RAM, not file backed) memory in userspace.  Sometimes it comes from hugepage backed memory, though I don't think that makes a difference.  I should note that transfer_complete_cb handles both RAM to device and device to RAM DMAs, if that matters.
> 
> [1] https://elixir.bootlin.com/linux/v5.2/source/include/linux/page-flags.h#L17
> 

I agree: the PageReserved check looks unnecessary here, from my outside-the-kpc_2000-team
perspective, anyway. Assuming that your analysis above is correct, you could collapse that
whole think into just:

@@ -211,17 +209,8 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
        BUG_ON(acd->ldev == NULL);
        BUG_ON(acd->ldev->pldev == NULL);
 
-       for (i = 0 ; i < acd->page_count ; i++) {
-               if (!PageReserved(acd->user_pages[i])) {
-                       set_page_dirty(acd->user_pages[i]);
-               }
-       }
-
        dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
-
-       for (i = 0 ; i < acd->page_count ; i++) {
-               put_page(acd->user_pages[i]);
-       }
+       put_user_pages_dirty(&acd->user_pages[i], acd->page_count);
 
        sg_free_table(&acd->sgt);
 
(Also, Matt, I failed to Cc: you on a semi-related cleanup that I just sent out for this
driver, as long as I have your attention:

   https://lore.kernel.org/r/20190715212123.432-1-jhubbard@nvidia.com
)

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
