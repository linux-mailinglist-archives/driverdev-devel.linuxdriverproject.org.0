Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C21145FE6
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 16:02:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A90A869DE;
	Fri, 14 Jun 2019 14:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j12Crpp0Bxy7; Fri, 14 Jun 2019 14:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23E5B869D1;
	Fri, 14 Jun 2019 14:02:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A94D1BF3A9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 27A7A87CE7
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7i1da-tCzpYX for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 14:02:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA3E787CEB
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 14:02:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10F42064A;
 Fri, 14 Jun 2019 14:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560520961;
 bh=yuQRJdK0c0k8QDLCPmaaUBPA4Gh5iMSc87ydddzUjLY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Adj/ubhVrddpf3XNZqH7bla3F/OQLtlWktGpnu78fRXaEWJVclE8EAVB7iVcwuXIj
 MgEu3GKKHjwm4kv6V7mrBTfmdB65iAPolSabTzDn8Y8MigqQqnxVgShMq6aUvnqaEX
 cqT5x9DBfftx8QKc8qPay9S9idxZcSOh+UlLdp+0=
Date: Fri, 14 Jun 2019 16:02:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 12/16] staging/comedi: mark as broken
Message-ID: <20190614140239.GA7234@kroah.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-13-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-13-hch@lst.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-media@vger.kernel.org, Intel Linux Wireless <linuxwifi@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 14, 2019 at 03:47:22PM +0200, Christoph Hellwig wrote:
> comedi_buf.c abuse the DMA API in gravely broken ways, as it assumes it
> can call virt_to_page on the result, and the just remap it as uncached
> using vmap.  Disable the driver until this API abuse has been fixed.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/staging/comedi/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/comedi/Kconfig b/drivers/staging/comedi/Kconfig
> index 049b659fa6ad..e7c021d76cfa 100644
> --- a/drivers/staging/comedi/Kconfig
> +++ b/drivers/staging/comedi/Kconfig
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  config COMEDI
>  	tristate "Data acquisition support (comedi)"
> +	depends on BROKEN

Um, that's a huge sledgehammer.

Perhaps a hint as to how we can fix this up?  This is the first time
I've heard of the comedi code not handling dma properly.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
