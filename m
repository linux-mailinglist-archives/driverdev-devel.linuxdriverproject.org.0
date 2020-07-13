Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E659521D783
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FEFA23223;
	Mon, 13 Jul 2020 13:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olnNcPoQH7F3; Mon, 13 Jul 2020 13:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2C96B21563;
	Mon, 13 Jul 2020 13:48:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB4A1BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C41F876C9
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cftr36LFk7CF for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:48:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp69.iad3b.emailsrvr.com (smtp69.iad3b.emailsrvr.com
 [146.20.161.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60AF7870BA
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1594648123;
 bh=ZL3NTHkoX90gLzQnZ0aZs8xRP/+7qcKArta1NiGzOzo=;
 h=Subject:To:From:Date:From;
 b=uZ801dGaFUNVS/zXEtlEWyhPXGSRfDInrDXUbwXoX4cXqyKsAtDBrVIKyl3qImXUA
 /lDhXbEqIBk/Q2W8Ee4xkJXSXdf94iwJfSiwJZY2QwXLLY2cQDEvjJnGj+9r1gbyfI
 jeWBtUMrH1kZfdcB6I5AeF7dEFLwYOH8BuzqsUUI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594648123;
 bh=ZL3NTHkoX90gLzQnZ0aZs8xRP/+7qcKArta1NiGzOzo=;
 h=Subject:To:From:Date:From;
 b=biSxwrFSDhUFuZJkjC9mbxXzvogmAU14OkdrrkjOo/BqwnCaIHyRr49wdqjXUO+Ub
 5Cij1iWBKkpuD9mpA/x0Cay+SLTaiIe1pTrdVKCz/tvacCl2R66g5dgex1Bz05AjHW
 lWppyN8OlkKj46JYx+4MHk0cWWJdmmn+SpIKCtsw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 9B295601EA; 
 Mon, 13 Jul 2020 09:48:42 -0400 (EDT)
Subject: Re: [PATCH] staging: comedi: s626: Remove pci-dma-compat wrapper APIs.
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Suraj Upadhyay <usuraj35@gmail.com>, gregkh@linuxfoundation.org,
 hsweeten@visionengravers.com
References: <20200711123533.GA15038@blackclown>
 <6f701731-d0af-1bd5-5854-42f0ba39ed35@wanadoo.fr>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <3747ce02-feb3-359f-c60d-233e412c6062@mev.co.uk>
Date: Mon, 13 Jul 2020 14:48:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <6f701731-d0af-1bd5-5854-42f0ba39ed35@wanadoo.fr>
Content-Language: en-GB
X-Classification-ID: 0cf2f086-3d08-420b-90a6-83a28112867a-1-1
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11/07/2020 14:38, Christophe JAILLET wrote:
> Le 11/07/2020 =E0 14:35, Suraj Upadhyay a =E9crit=A0:
>> The legacy API wrappers in include/linux/pci-dma-compat.h
>> should go away as it creates unnecessary midlayering
>> for include/linux/dma-mapping.h APIs, instead use dma-mapping.h
>> APIs directly.
>>
>> The patch has been generated with the coccinelle script below
>> and compile-tested.
>>
>> [...]
>> @@ expression E1, E2, E3; @@
>> - pci_alloc_consistent(E1, E2, E3)
>> + dma_alloc_coherent(&E1->dev, E2, E3, GFP_ATOMIC)
>>
>> @@ expression E1, E2, E3; @@
>> - pci_zalloc_consistent(E1, E2, E3)
>> + dma_alloc_coherent(&E1->dev, E2, E3, GFP_ATOMIC)
> =

> This is the tricky part of this kind of cleanup, see below.
> =

> GFP_ATOMIC can't be wrong because it is was exactly what was done with =

> the pci_ function.
> However, most of the time, it can safely be replaced by GFP_KERNEL which =

> gives more opportunities to the memory allocator.
> =

>> [...]
>> diff --git a/drivers/staging/comedi/drivers/s626.c =

>> b/drivers/staging/comedi/drivers/s626.c
>> index 084a8e7b9fc2..c159416662fd 100644
>> --- a/drivers/staging/comedi/drivers/s626.c
>> +++ b/drivers/staging/comedi/drivers/s626.c
>> @@ -2130,13 +2130,15 @@ static int s626_allocate_dma_buffers(struct =

>> comedi_device *dev)
>> =A0=A0=A0=A0=A0 void *addr;
>> =A0=A0=A0=A0=A0 dma_addr_t appdma;
>> -=A0=A0=A0 addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appd=
ma);
>> +=A0=A0=A0 addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &=
appdma,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 GFP_ATOMIC);
>> =A0=A0=A0=A0=A0 if (!addr)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENOMEM;
>> =A0=A0=A0=A0=A0 devpriv->ana_buf.logical_base =3D addr;
>> =A0=A0=A0=A0=A0 devpriv->ana_buf.physical_base =3D appdma;
>> -=A0=A0=A0 addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appd=
ma);
>> +=A0=A0=A0 addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &=
appdma,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 GFP_ATOMIC);
>> =A0=A0=A0=A0=A0 if (!addr)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENOMEM;
>> =A0=A0=A0=A0=A0 devpriv->rps_buf.logical_base =3D addr;
> 's626_allocate_dma_buffers()' is only called from 's626_auto_attach()'.
> In this function, around the call to 's626_allocate_dma_buffers()', you =

> can see:
>  =A0 - a few lines before, a call to 'comedi_alloc_devpriv()'
> =

>  =A0 - a few lines after, a call to 'comedi_alloc_subdevices()'
> =

> These 2 functions make some memory allocation using GFP_KERNEL.
> =

> So it is likely that using GFP_KERNEL in your proposal is also valid.

Indeed, GFP_KERNEL is perfectly fine here.  It could be done as a =

follow-up patch, or done in a v2 of this patch with a mention in the =

patch description.

-- =

-=3D( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=3D-
-=3D( MEV Ltd. is a company registered in England & Wales. )=3D-
-=3D( Registered number: 02862268.  Registered address:    )=3D-
-=3D( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=3D-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
