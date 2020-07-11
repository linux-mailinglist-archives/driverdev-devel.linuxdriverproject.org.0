Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAD921C470
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 15:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A81D228BD;
	Sat, 11 Jul 2020 13:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HX+m5etdvWss; Sat, 11 Jul 2020 13:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A9E7227F7;
	Sat, 11 Jul 2020 13:38:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 496341BF29E
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 13:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45CD7895A6
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 13:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHxl2t3A9RlF for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 13:38:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp09.smtpout.orange.fr
 [80.12.242.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42611895A3
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 13:38:41 +0000 (UTC)
Received: from [192.168.42.210] ([93.22.151.150]) by mwinf5d84 with ME
 id 1ped2300E3Ewh7h03pedBR; Sat, 11 Jul 2020 15:38:39 +0200
X-ME-Helo: [192.168.42.210]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 11 Jul 2020 15:38:39 +0200
X-ME-IP: 93.22.151.150
Subject: Re: [PATCH] staging: comedi: s626: Remove pci-dma-compat wrapper APIs.
To: Suraj Upadhyay <usuraj35@gmail.com>, gregkh@linuxfoundation.org,
 abbotti@mev.co.uk, hsweeten@visionengravers.com
References: <20200711123533.GA15038@blackclown>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <6f701731-d0af-1bd5-5854-42f0ba39ed35@wanadoo.fr>
Date: Sat, 11 Jul 2020 15:38:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200711123533.GA15038@blackclown>
Content-Language: en-US
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

Le 11/07/2020 =E0 14:35, Suraj Upadhyay a =E9crit=A0:
> The legacy API wrappers in include/linux/pci-dma-compat.h
> should go away as it creates unnecessary midlayering
> for include/linux/dma-mapping.h APIs, instead use dma-mapping.h
> APIs directly.
>
> The patch has been generated with the coccinelle script below
> and compile-tested.
>
> [...]
> @@ expression E1, E2, E3; @@
> - pci_alloc_consistent(E1, E2, E3)
> + dma_alloc_coherent(&E1->dev, E2, E3, GFP_ATOMIC)
>
> @@ expression E1, E2, E3; @@
> - pci_zalloc_consistent(E1, E2, E3)
> + dma_alloc_coherent(&E1->dev, E2, E3, GFP_ATOMIC)

This is the tricky part of this kind of cleanup, see below.

GFP_ATOMIC can't be wrong because it is was exactly what was done with =

the pci_ function.
However, most of the time, it can safely be replaced by GFP_KERNEL which =

gives more opportunities to the memory allocator.

> [...]
> diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/come=
di/drivers/s626.c
> index 084a8e7b9fc2..c159416662fd 100644
> --- a/drivers/staging/comedi/drivers/s626.c
> +++ b/drivers/staging/comedi/drivers/s626.c
> @@ -2130,13 +2130,15 @@ static int s626_allocate_dma_buffers(struct comed=
i_device *dev)
>   	void *addr;
>   	dma_addr_t appdma;
>   =

> -	addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appdma);
> +	addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &appdma,
> +				  GFP_ATOMIC);
>   	if (!addr)
>   		return -ENOMEM;
>   	devpriv->ana_buf.logical_base =3D addr;
>   	devpriv->ana_buf.physical_base =3D appdma;
>   =

> -	addr =3D pci_alloc_consistent(pcidev, S626_DMABUF_SIZE, &appdma);
> +	addr =3D dma_alloc_coherent(&pcidev->dev, S626_DMABUF_SIZE, &appdma,
> +				  GFP_ATOMIC);
>   	if (!addr)
>   		return -ENOMEM;
>   	devpriv->rps_buf.logical_base =3D addr;
's626_allocate_dma_buffers()' is only called from 's626_auto_attach()'.
In this function, around the call to 's626_allocate_dma_buffers()', you =

can see:
 =A0 - a few lines before, a call to 'comedi_alloc_devpriv()'

 =A0 - a few lines after, a call to 'comedi_alloc_subdevices()'

These 2 functions make some memory allocation using GFP_KERNEL.

So it is likely that using GFP_KERNEL in your proposal is also valid.


Just my 2c.

CJ

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
