Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F020931D68D
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:28:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE1C587213;
	Wed, 17 Feb 2021 08:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CbKRygrLR2bb; Wed, 17 Feb 2021 08:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B600871D6;
	Wed, 17 Feb 2021 08:28:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B59091BF59C
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B1E0E81E48
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8VWBgKp4iiN for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:28:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4197E81A2F
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:28:16 +0000 (UTC)
Received: from [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350] (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E4BA41F44D79;
 Wed, 17 Feb 2021 08:28:12 +0000 (GMT)
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
To: Greg KH <gregkh@linuxfoundation.org>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
Date: Wed, 17 Feb 2021 09:28:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <YCzO7SRmBKzGeMUS@kroah.com>
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Anson.Huang@nxp.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org,
 shengjiu.wang@nxp.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDE3LzAyLzIwMjEgw6AgMDk6MDgsIEdyZWcgS0ggYSDDqWNyaXTCoDoKPiBPbiBXZWQsIEZl
YiAxNywgMjAyMSBhdCAwOTowMjo0OEFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToK
Pj4gVGhlIElNWDhNUSBnb3QgdHdvIFZQVXMgYnV0IHVudGlsIG5vdyBvbmx5IEcxIGhhcyBiZWVu
IGVuYWJsZWQuCj4+IFRoaXMgc2VyaWVzIGFpbSB0byBhZGQgdGhlIHNlY29uZCBWUFUgKGFrYSBH
MikgYW5kIHByb3ZpZGUgYmFzaWMKPj4gSEVWQyBkZWNvZGluZyBzdXBwb3J0Lgo+IFdoeSBhcmUg
eW91IGFkZGluZyB0aGlzIGRpcmVjdGx5IHRvIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS8gYW5kIG5v
dAo+IGRyaXZlcnMvbWVkaWEvPyAgV2h5IGNhbid0IHRoaXMganVzdCBnbyB0byB0aGUgbWFpbiBs
b2NhdGlvbiBhbmQgbm90Cj4gbGl2ZSBpbiBzdGFnaW5nPwoKRzIvSEVWQyBpcyBhZGRlZCBpbnNp
ZGUgdGhlIGFscmVhZHkgZXhpdGluZyBIYW50cm8gZHJpdmVyLCBpdCBpcyAianVzdCIKYW4gb3Ro
ZXIgY29kZWMgZnJvbSBIYW50cm8gZHJpdmVyIHBvaW50IG9mIHZpZXcuCkluIGFkZGl0aW9uIG9m
IHRoYXQgdjRsMi1oZXZjIHVBUEkgaXMgc3RpbGwgdW5zdGFibGUuCk9uZSBnb2FsIG9mIHRoaXMg
c2VyaWVzIGlzIHRvIGhhdmUgb25lIG1vcmUgY29uc3VtZXIgb2YgdGhpcyB2NGwyLWhldmMKdUFQ
SSBzbyBtYXliZSB3ZSBjYW4gY2xhaW0gaXQgdG8gYmUgc3RhYmxlIGVub3VnaCB0byBtb3ZlIGF3
YXkgZnJvbSBzdGFnaW5nCmFuZCB0aGVuIGRvIHRoZSBzYW1lIGZvciBIYW50cm8gZHJpdmVyLiBU
aGF0IHdvdWxkIGJlIGEgZ3JlYXQgYWNoaWV2ZW1lbnQgIQoKQmVuamFtaW4KCj4gdGhhbmtzLAo+
Cj4gZ3JlZyBrLWgKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
