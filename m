Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7E2461F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 17:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C906882DB;
	Fri, 14 Jun 2019 15:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQgeXGLQ1ab7; Fri, 14 Jun 2019 15:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9131B878EA;
	Fri, 14 Jun 2019 15:01:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2634E1BF362
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 15:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22DDC87BF5
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 15:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0cCWnK5eg+L1 for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 15:01:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 71151814DB
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 15:01:28 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-6-Ae-vvi9EMKOPr28p6sbQQA-1;
 Fri, 14 Jun 2019 16:01:23 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri,
 14 Jun 2019 16:01:22 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 14 Jun 2019 16:01:22 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@lst.de>
Subject: RE: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Topic: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Index: AQHVIrfpTFjppS25RkWUhwqPPyqZ4qabLzdw///7eICAABIeYA==
Date: Fri, 14 Jun 2019 15:01:22 +0000
Message-ID: <d93fd4c2c1584d92a05dd641929f6d63@AcuMS.aculab.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-17-hch@lst.de>
 <a90cf7ec5f1c4166b53c40e06d4d832a@AcuMS.aculab.com>
 <20190614145001.GB9088@lst.de>
In-Reply-To: <20190614145001.GB9088@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: Ae-vvi9EMKOPr28p6sbQQA-1
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: 'Christoph Hellwig'
> Sent: 14 June 2019 15:50
> To: David Laight
> On Fri, Jun 14, 2019 at 02:15:44PM +0000, David Laight wrote:
> > Does this still guarantee that requests for 16k will not cross a 16k boundary?
> > It looks like you are losing the alignment parameter.
> 
> The DMA API never gave you alignment guarantees to start with,
> and you can get not naturally aligned memory from many of our
> current implementations.

Hmmm...
I thought that was even documented.

I'm pretty sure there is a lot of code out there that makes that assumption.
Without it many drivers will have to allocate almost double the
amount of memory they actually need in order to get the required alignment.
So instead of saving memory you'll actually make more be used.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
