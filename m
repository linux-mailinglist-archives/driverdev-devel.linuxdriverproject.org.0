Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0B01202B8
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 11:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79DD785D4C;
	Mon, 16 Dec 2019 10:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rMS-xq_Mb1OM; Mon, 16 Dec 2019 10:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93E4F85C4C;
	Mon, 16 Dec 2019 10:36:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9F0A1BF2B5
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 10:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A53A6204C4
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 10:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2WDPMszwvjud for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 10:36:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp71.ord1d.emailsrvr.com (smtp71.ord1d.emailsrvr.com
 [184.106.54.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 8065C20463
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 10:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1576492593;
 bh=AK1LJ3KblE6GDo+Gln+ScoyharN9JqkHG34xHm9NG0c=;
 h=Subject:To:From:Date:From;
 b=sJKlpfmEhT9C9F1RljRyH4Il8+GyJufNI3ScEkxDHRqcb3dOzwQVY7Q/uLFn1Ph2Q
 +dtnoPlzKE/opH0bNh6mWoUIgRdsrOeVFZ7PafZSyAbt1dBqWxaGQTVa5MnHUtUDwA
 SUyZ4E5McBGNamhVzBXPUeM7pj4WaTGgQqt+u3ZI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1576492593;
 bh=AK1LJ3KblE6GDo+Gln+ScoyharN9JqkHG34xHm9NG0c=;
 h=Subject:To:From:Date:From;
 b=EGfkJ+0mGtNEdlLvYR+ZiibBlOSwK4znGDToxgbdGt1oVwSshoqaO5TN4FiE4bYxL
 fMLD4mTw/tSGdvPQzO40pd3EwLwjDtq3tg//enweZN1RE2WSb5bYLoPd0USAmUHPok
 Chj+PEMGTtttfOxf5e4NE+eaq33/KTuQZ5Cbdiyw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp9.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 1D1B9C00DB; 
 Mon, 16 Dec 2019 05:36:32 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 16 Dec 2019 05:36:33 -0500
Subject: Re: [PATCH] staging: comedi: drivers: Fix memory leak in
 gsc_hpdi_auto_attach
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20191215013306.18880-1-navid.emamdoost@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <6159c10a-2f5f-e6ef-7a64-4b613e422efa@mev.co.uk>
Date: Mon, 16 Dec 2019 10:36:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191215013306.18880-1-navid.emamdoost@gmail.com>
Content-Language: en-GB
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
Cc: emamd001@umn.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 15/12/2019 01:33, Navid Emamdoost wrote:
> In the implementation of gsc_hpdi_auto_attach(), the allocated dma
> description is leaks in case of alignment error, or failure of
> gsc_hpdi_setup_dma_descriptors() or comedi_alloc_subdevices(). Release
> devpriv->dma_desc via dma_free_coherent().
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Actually, there is no memory leak (although there is another problem 
that I'll mention below).  If the "auto_attach" handler 
gsc_hpdi_auto_attach() returns an error, then the "detach" handler 
gsc_hpdi_detach() will be called automatically to clean up.  (This is 
true for all comedi drivers).  gsc_hpdi_detach() calls 
gsc_hpdi_free_dma() to free the DMA buffers and DMA descriptors.

> ---
>   drivers/staging/comedi/drivers/gsc_hpdi.c | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
> index 4bdf44d82879..c0c7047a6d1b 100644
> --- a/drivers/staging/comedi/drivers/gsc_hpdi.c
> +++ b/drivers/staging/comedi/drivers/gsc_hpdi.c
> @@ -633,16 +633,17 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
>   	if (devpriv->dma_desc_phys_addr & 0xf) {
>   		dev_warn(dev->class_dev,
>   			 " dma descriptors not quad-word aligned (bug)\n");
> -		return -EIO;
> +		retval = -EIO;
> +		goto release_dma_desc;
>   	}
>   
>   	retval = gsc_hpdi_setup_dma_descriptors(dev, 0x1000);
>   	if (retval < 0)
> -		return retval;
> +		goto release_dma_desc;
>   
>   	retval = comedi_alloc_subdevices(dev, 1);
>   	if (retval)
> -		return retval;
> +		goto release_dma_desc;
>   
>   	/* Digital I/O subdevice */
>   	s = &dev->subdevices[0];
> @@ -660,6 +661,15 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
>   	s->cancel	= gsc_hpdi_cancel;
>   
>   	return gsc_hpdi_init(dev);
> +
> +release_dma_desc:
> +	if (devpriv->dma_desc)
> +		dma_free_coherent(&pcidev->dev,
> +				  sizeof(struct plx_dma_desc) *
> +				NUM_DMA_DESCRIPTORS,
> +				devpriv->dma_desc,
> +				devpriv->dma_desc_phys_addr);
> +	return retval;
>   }
>   
>   static void gsc_hpdi_detach(struct comedi_device *dev)
> 

This patch could actually result in devpriv->dma_desc being freed twice 
- once in the 'release_dma_desc:' code and again when gsc_hpdi_detach() 
is called externally as part of the clean-up.

The real bug in the original code is that it does not check whether any 
of the calls to dma_alloc_coherent() returned NULL.  If any of the calls 
to dma_alloc_coherent() returns NULL, gsc_hpdi_auto_attach() needs to 
return an error (-ENOMEM).  The subsequent call to gsc_hpdi_detach() 
will then free whatever DMA coherent buffers where allocated.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
