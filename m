Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B0C1604D4
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Feb 2020 17:35:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 47C3920466;
	Sun, 16 Feb 2020 16:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmmlVTrbcfKB; Sun, 16 Feb 2020 16:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7357520449;
	Sun, 16 Feb 2020 16:35:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4055B1BF2FB
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 16:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D1C784D9F
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 16:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCgBRdPv3K7X for <devel@linuxdriverproject.org>;
 Sun, 16 Feb 2020 16:35:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F1D684E66
 for <devel@driverdev.osuosl.org>; Sun, 16 Feb 2020 16:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=+D/3GYgq8C/NhSHdkxyv41JosInjZ/rJm4gcnsJDCuc=; b=t6pU9gUm2k77mQzZ1DvGkWUSaT
 u5XLEw2Cq48TeeQF2ls+O6azM76RauhfLQcAf5AZz/a9rzLgOPv4P5Dh7pROKFD6S0lmGOJSKc+3Z
 diBKrT5PepFMq8evwmtIPC3ORwH8uoGkhgtKcRQWXswOM4OVikpnuSFKOZC06+E17NAShel9TjiwD
 ARIsS90kcbNy2QTNafTwlzou+dPT/PXUx4mQ4x3PohniRFjiahNIc5Oj6Q9HF9260RgnbDWTgY87E
 Uz2qDaEcIz45LGoo/Szzvm38xoGYe4LrJ2vd4cG1UMy6tlLM0my3QBS6o7RymaGK6eA6B+QPs0y7A
 fZhgHPKw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Msv-0007Ol-PT; Sun, 16 Feb 2020 16:35:09 +0000
Subject: Re: [PATCH] Documentation: DMA-API-HOWTO.txt: fixed grammer issues
 Fixed some of the grammer issues in DMA-API-HOWTO.txt using the software
 grammerly.
To: sunnypranay <mpranay2017@gmail.com>, hsweeten@visionengravers.com
References: <20200216141658.734-1-mpranay2017@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f249c324-a972-e0bc-2b0d-3f134bacd3d2@infradead.org>
Date: Sun, 16 Feb 2020 08:35:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200216141658.734-1-mpranay2017@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/16/20 6:16 AM, sunnypranay wrote:
> From: mpranay <mpranay2017@gmail.com>
> 


s/grammer/grammar/ et al.

Missing
Signed-off-by: <your real name> <email address>

> ---
>  Documentation/DMA-API-HOWTO.txt  | 628 +++++++++++++++----------------
>  drivers/staging/comedi/drivers.c |   2 +-

The /comedi/ part of this patch should not be here... and it is also wrong.

>  2 files changed, 311 insertions(+), 319 deletions(-)
> 
> diff --git a/Documentation/DMA-API-HOWTO.txt b/Documentation/DMA-API-HOWTO.txt
> index 358d495456d1..fa163470fde7 100644
> --- a/Documentation/DMA-API-HOWTO.txt
> +++ b/Documentation/DMA-API-HOWTO.txt
> @@ -102,9 +102,9 @@ pci_map_*() interfaces.
>  
>  First of all, you should make sure::
>  
> -	#include <linux/dma-mapping.h>
> +	#include <linux/dma-mapping.h>

what is the change above?

> @@ -142,7 +142,7 @@ in the same cache line, and one of them could be overwritten.)
>  Also, this means that you cannot take the return of a kmap()
>  call and DMA to/from that.  This is similar to vmalloc().
>  
> -What about block I/O and networking buffers?  The block I/O and
> +What about the block I/O and networking buffers?  The block I/O and

no thanks.

>  networking subsystems make sure that the buffers they use are valid
>  for you to DMA from/to.
>  
> @@ -163,35 +163,34 @@ your devices DMA addressing capabilities.
>  
>  This is performed via a call to dma_set_mask_and_coherent()::
>  
> -	int dma_set_mask_and_coherent(struct device *dev, u64 mask);
> +	int dma_set_mask_and_coherent(struct device *dev, u64 mask);

what is changed in the lines above?

>  
>  which will set the mask for both streaming and coherent APIs together.  If you
>  have some special requirements, then the following two separate calls can be
>  used instead:
>  
> -	The setup for streaming mappings is performed via a call to
> -	dma_set_mask()::
> +	The setup for streaming mappings is performed via a call to
> + 	dma_set_mask()::
>  
> -		int dma_set_mask(struct device *dev, u64 mask);
> +		int dma_set_mask(struct device *dev, u64 mask);
>  
> -	The setup for consistent allocations is performed via a call
> -	to dma_set_coherent_mask()::
> +	The setup for consistent allocations is performed via a call
> +	to dma_set_coherent_mask()::
>  
> -		int dma_set_coherent_mask(struct device *dev, u64 mask);
> +		int dma_set_coherent_mask(struct device *dev, u64 mask);

Too much invisible changes.  What is this?

>  
> -These calls usually return zero to indicated your device can perform DMA
> -properly on the machine given the address mask you provided, but they might
> +These calls usually return zero to indicate your device can perform DMA

good

> +properly on the machine given the address mask, you provided, but they might

added comma not good.

>  return an error if the mask is too small to be supportable on the given
>  system.  If it returns non-zero, your device cannot perform DMA properly on
>  this platform, and attempting to do so will result in undefined behavior.
>  You must not use DMA on this device unless the dma_set_mask family of
> -functions has returned success.
> +functions have returned success.

wrong. Subject is "family", not "functions".


[snip]


> @@ -278,7 +277,7 @@ Types of DMA mappings
>  
>  There are two types of DMA mappings:
>  
> -- Consistent DMA mappings which are usually mapped at driver
> +- Consistent DMA mappings which are usually mapped at a driver

no thanks.

>    initialization, unmapped at the end and for which the hardware should
>    guarantee that the device and the CPU can access the data
>    in parallel and will see updates made by each other without any
> @@ -287,40 +286,36 @@ There are two types of DMA mappings:
>    Think of "consistent" as "synchronous" or "coherent".
>  
>    The current default is to return consistent memory in the low 32
> -  bits of the DMA space.  However, for future compatibility you should
> -  set the consistent mask even if this default is fine for your
> -  driver.
> +  bits of the DMA space.  However, for future compatibility, you should set a consistent mask even if this default is fine for your driver.

text line too long. We try to limit doc text lines to < 80 characters.

> -	     Consistent DMA memory does not preclude the usage of
> -	     proper memory barriers.  The CPU may reorder stores to
> -	     consistent memory just as it may normal memory.  Example:
> -	     if it is important for the device to see the first word
> -	     of a descriptor updated before the second, you must do
> -	     something like::
> +            Consistent DMA memory does not preclude the usage of
> +            proper memory barriers.  The CPU may reorder stores to
> +            consistent memory just as it may normal memory.  Example:
> +            if the device needs to see the first word
> +            of a descriptor updated before the second, you must do
> +            something like::

why the indentation change?

> -	     Also, on some platforms your driver may need to flush CPU write
> -	     buffers in much the same way as it needs to flush write buffers
> -	     found in PCI bridges (such as by reading a register's value
> -	     after writing it).
> +            Also, on some platforms, your driver may need to flush CPU write
> +            buffers in much the same way as it needs to flush write buffers
> +            found in PCI bridges (such as by reading a register's value
> +            after writing it).

ditto.

> @@ -351,11 +344,11 @@ Using Consistent DMA mappings
>  To allocate and map large (PAGE_SIZE or so) consistent DMA regions,
>  you should do::
>  
> -	dma_addr_t dma_handle;
> +    	dma_addr_t dma_handle;

change from tab to spaces is not good.

>  
> -	cpu_addr = dma_alloc_coherent(dev, size, &dma_handle, gfp);
> +    	cpu_addr = dma_alloc_coherent(dev, size, &dma_handle, gfp);

ditto.

>  
> -where device is a ``struct device *``. This may be called in interrupt
> +where the device is a ``struct device *``. This may be called in interrupt

no.

>  context with the GFP_ATOMIC flag.
>  
>  Size is the length of the region you want to allocate, in bytes.
> @@ -400,9 +393,9 @@ like queue heads needing to be aligned on N byte boundaries.
>  
>  Create a dma_pool like this::
>  
> -	struct dma_pool *pool;
> +       struct dma_pool *pool;
>  
> -	pool = dma_pool_create(name, dev, size, align, boundary);
> +       pool = dma_pool_create(name, dev, size, align, boundary);

noooo.

> @@ -487,7 +480,7 @@ working on.
>  
>  For Networking drivers, it's a rather simple affair.  For transmit
>  packets, map/unmap them with the DMA_TO_DEVICE direction
> -specifier.  For receive packets, just the opposite, map/unmap them
> +specifier.  To receive packets, just the opposite, map/unmap them

no.

>  with the DMA_FROM_DEVICE direction specifier.
>  
>  Using Streaming DMA mappings
> @@ -496,28 +489,28 @@ Using Streaming DMA mappings
>  The streaming DMA mapping routines can be called from interrupt
>  context.  There are two versions of each map/unmap, one which will
>  map/unmap a single memory region, and one which will map/unmap a
> -scatterlist.
> +scatter list.

no, the struct is named "scatterlist".


> @@ -823,7 +816,7 @@ and return NETDEV_TX_OK if the DMA mapping fails on the transmit hook
>  the failure case.
>  
>  SCSI drivers must return SCSI_MLQUEUE_HOST_BUSY if the DMA mapping
> -fails in the queuecommand hook. This means that the SCSI subsystem
> +fails in the queue command hook. This means that the SCSI subsystem
>  passes the command to the driver again later.

no, the hook is called "queuecommand".


> @@ -890,7 +883,7 @@ If you are just writing drivers for Linux and do not maintain
>  an architecture port for the kernel, you can safely skip down
>  to "Closing".
>  
> -1) Struct scatterlist requirements.
> +1) Struct scatter list requirements.

no, the struct is /scatterlist/

> @@ -918,12 +910,12 @@ form without the feedback and suggestions from numerous individuals.
>  We would like to specifically mention, in no particular order, the
>  following people::
>  
> -	Russell King <rmk@arm.linux.org.uk>
> -	Leo Dagum <dagum@barrel.engr.sgi.com>
> -	Ralf Baechle <ralf@oss.sgi.com>
> -	Grant Grundler <grundler@cup.hp.com>
> -	Jay Estabrook <Jay.Estabrook@compaq.com>
> -	Thomas Sailer <sailer@ife.ee.ethz.ch>
> -	Andrea Arcangeli <andrea@suse.de>
> -	Jens Axboe <jens.axboe@oracle.com>
> -	David Mosberger-Tang <davidm@hpl.hp.com>
> +    	Russell King <rmk@arm.linux.org.uk>
> +    	Leo Dagum <dagum@barrel.engr.sgi.com>
> +    	Ralf Baechle <ralf@oss.sgi.com>
> +    	Grant Grundler <grundler@cup.hp.com>
> +    	Jay Estabrook <Jay.Estabrook@compaq.com>
> +    	Thomas Sailer <sailer@ife.ee.ethz.ch>
> +    	Andrea Arcangeli <andrea@suse.de>
> +    	Jens Axboe <jens.axboe@oracle.com>
> +    	David Mosberger-Tang <davidm@hpl.hp.com>

Unwelcome change from tab to spaces.

> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index 750a6ff3c03c..4e5c0b915841 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -133,7 +133,7 @@ EXPORT_SYMBOL_GPL(comedi_alloc_subdevices);
>   * On success, @s->readback points to the first element of the array, which
>   * is zero-filled.  The low-level driver is responsible for updating its
>   * contents.  @s->insn_read will be set to comedi_readback_insn_read()
> - * unless it is already non-NULL.
> + * Unless it is already non-NULL.

huh?  why?

>   *
>   * Returns 0 on success, -EINVAL if the subdevice has no channels, or
>   * -ENOMEM on allocation failure.
> 


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
