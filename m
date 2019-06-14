Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7060146072
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 16:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B75687D3B;
	Fri, 14 Jun 2019 14:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EbG9R-1XaS49; Fri, 14 Jun 2019 14:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EEA787D48;
	Fri, 14 Jun 2019 14:17:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA531BF318
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:17:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 789C7860D1
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rhF1dpmH5c1n for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 14:17:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1968785D45
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 14:17:02 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-171-6ZL5OlDfPHWG6RvRpXiEQg-1; Fri, 14 Jun 2019 15:15:45 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 14 Jun 2019 15:15:44 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 14 Jun 2019 15:15:44 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@lst.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Ian Abbott" <abbotti@mev.co.uk>, H Hartley Sweeten
 <hsweeten@visionengravers.com>
Subject: RE: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Topic: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Index: AQHVIrfpTFjppS25RkWUhwqPPyqZ4qabLzdw
Date: Fri, 14 Jun 2019 14:15:44 +0000
Message-ID: <a90cf7ec5f1c4166b53c40e06d4d832a@AcuMS.aculab.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-17-hch@lst.de>
In-Reply-To: <20190614134726.3827-17-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: 6ZL5OlDfPHWG6RvRpXiEQg-1
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christoph Hellwig
> Sent: 14 June 2019 14:47
> 
> Many architectures (e.g. arm, m68 and sh) have always used exact
> allocation in their dma coherent allocator, which avoids a lot of
> memory waste especially for larger allocations.  Lift this behavior
> into the generic allocator so that dma-direct and the generic IOMMU
> code benefit from this behavior as well.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/dma-contiguous.h |  8 +++++---
>  kernel/dma/contiguous.c        | 17 +++++++++++------
>  2 files changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
> index c05d4e661489..2e542e314acf 100644
> --- a/include/linux/dma-contiguous.h
> +++ b/include/linux/dma-contiguous.h
> @@ -161,15 +161,17 @@ static inline struct page *dma_alloc_contiguous(struct device *dev, size_t size,
>  		gfp_t gfp)
>  {
>  	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
> -	size_t align = get_order(PAGE_ALIGN(size));
> +	void *cpu_addr = alloc_pages_exact_node(node, size, gfp);
> 
> -	return alloc_pages_node(node, gfp, align);
> +	if (!cpu_addr)
> +		return NULL;
> +	return virt_to_page(p);
>  }

Does this still guarantee that requests for 16k will not cross a 16k boundary?
It looks like you are losing the alignment parameter.

There may be drivers and hardware that also require 12k allocates
to not cross 16k boundaries (etc).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
