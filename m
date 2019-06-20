Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A69B4CC47
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 12:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91F9E87E41;
	Thu, 20 Jun 2019 10:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-opFyf5aa1S; Thu, 20 Jun 2019 10:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13A4687E24;
	Thu, 20 Jun 2019 10:52:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 851351BF964
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 10:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81B3784E15
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 10:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yo7q3aFSzRE6 for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 10:51:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37B7C84D7A
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 10:51:56 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 558CF68B20; Thu, 20 Jun 2019 12:51:24 +0200 (CEST)
Date: Thu, 20 Jun 2019 12:51:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: use exact allocation for dma coherent memory
Message-ID: <20190620105124.GA25233@lst.de>
References: <20190614134726.3827-1-hch@lst.de> <20190617082148.GF28859@kadam>
 <20190617083342.GA7883@lst.de> <20190619162903.GF9360@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619162903.GF9360@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
 Christoph Hellwig <hch@lst.de>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-rdma@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDE6Mjk6MDNQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+ID4gWWVzLiAgVGhpcyB3aWxsIGJsb3cgdXAgYmFkbHkgb24gbWFueSBwbGF0Zm9y
bXMsIGFzIHNxLT5xdWV1ZQo+ID4gbWlnaHQgYmUgdm1hcHBlZCwgaW9yZW1hcHBlZCwgY29tZSBm
cm9tIGEgcG9vbCB3aXRob3V0IHBhZ2UgYmFja2luZy4KPiAKPiBHYWgsIHRoaXMgYWRkciBnZXRz
IGZlZCBpbnRvIGlvX3JlbWFwX3Bmbl9yYW5nZS9yZW1hcF9wZm5fcmFuZ2UgdG9vLi4KPiAKPiBQ
b3RudXJpLCB5b3Ugc2hvdWxkIGZpeCB0aGlzLi4gCj4gCj4gWW91IHByb2JhYmx5IG5lZWQgdG8g
dXNlIGRtYV9tbWFwX2Zyb21fZGV2X2NvaGVyZW50KCkgaW4gdGhlIG1tYXAgPwoKVGhlIGZ1bmN0
aW9uIHRvIHVzZSBpcyBkbWFfbW1hcF9jb2hlcmVudCwgZG1hX21tYXBfZnJvbV9kZXZfY29oZXJl
bnQgaXMKanVzdCBhbiBpbnRlcm5hbCBoZWxwZXIuCgpUaGF0IGJlacWLIHNhaWQgdGhlIGRyaXZl
cnMvaW5maW5pYmFuZCBjb2RlIGhhcyBhIGxvdCBvZgoqcmVtYXBfcGZuX3JhbmdlLCBhbmQgYSBs
b3Qgb2YgdGhlbSBsb29rIGxpa2UgdGhleSBtaWdodCBiZSBmb3IKRE1BIG1lbW9yeS4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
