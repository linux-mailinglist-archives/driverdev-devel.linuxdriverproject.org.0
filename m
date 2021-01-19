Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CC02FB54C
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:24:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCFED84E5E;
	Tue, 19 Jan 2021 10:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2GYfPRVNdZXb; Tue, 19 Jan 2021 10:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E1C684B23;
	Tue, 19 Jan 2021 10:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F87F1BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A4358608B
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XYMEncWCH6h0 for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:24:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F3C0F85CCF
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:24:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A53A323117;
 Tue, 19 Jan 2021 10:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611051878;
 bh=FQ8vuI7rnmmuRUZMIggXwZqdsjlfTCLJ7dkcIDvr5kM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:Reply-To:From;
 b=LbhT2ScmFY4rlD8GVh6urB2JSQ+NOYnr2HfAANudxzlWNbnR3s2VBnRGhmPuQSZ9N
 6DIeOBO3wn2XRcqO9tOJFlAMtOEF4ap6rQwd90E3Xw3V6QeVlsbfF3U20rEHbuFiQ2
 L7C4sjYLofDYwfy/9mLHSxYPgYb9lLvh+MaF5AnJI/LXD7VdazOwbylfnNwi/IWzKI
 ZgpQ65OzAR//oqmn1o0abSivrCwwIbYDLViioonH3WLFxOHUoGlcdRuRUQ0zC6yyml
 F16udTXawLYtuYrVdKGKFVb3vJmKQ7miw7T9uVUBNsU0AgZdnL2LZqqBABWPd2eYfT
 E6FXYWndY/AnA==
Date: Tue, 19 Jan 2021 11:24:31 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 3/4] staging: hikey9xx: phy-hi3670-usb3.c:
 hi3670_is_abbclk_seleted() returns bool
Message-ID: <20210119112431.21ab73d0@coco.lan>
In-Reply-To: <20210119065630.GE2696@kadam>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
 <d1e0d94381e214157545d6808835fdfe99448f76.1610645385.git.mchehab+huawei@kernel.org>
 <d9ebc10ac5c4ba5231ed50ef0d2a15f424547736.camel@perches.com>
 <20210119065630.GE2696@kadam>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Reply-To: linux-kernel@vger.kernel.org
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yu Chen <chenyu56@huawei.com>, Vinod Koul <vkoul@kernel.org>,
 Joe Perches <joe@perches.com>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RW0gVHVlLCAxOSBKYW4gMjAyMSAwOTo1NjozMSArMDMwMApEYW4gQ2FycGVudGVyIDxkYW4uY2Fy
cGVudGVyQG9yYWNsZS5jb20+IGVzY3JldmV1OgoKPiBPbiBUaHUsIEphbiAxNCwgMjAyMSBhdCAw
OTo1Njo0MUFNIC0wODAwLCBKb2UgUGVyY2hlcyB3cm90ZToKPiA+IE9uIFRodSwgMjAyMS0wMS0x
NCBhdCAxODozNSArMDEwMCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOiAgCj4gPiA+IElu
c3RlYWQgb2YgdXNpbmcgMS8wIGZvciB0cnVlL2ZhbHNlLCBjaGFuZ2UgdGhlIHR5cGUgdG8gYm9v
bGVhbgo+ID4gPiBhbmQgY2hhbmdlIHRoZSByZXR1cm5lZCB2YWx1ZS4gIAo+ID4gW10gIAo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2hpa2V5OXh4L3BoeS1oaTM2NzAtdXNiMy5j
IGIvZHJpdmVycy9zdGFnaW5nL2hpa2V5OXh4L3BoeS1oaTM2NzAtdXNiMy5jICAKPiA+IFtdICAK
PiA+ID4gQEAgLTMyNiwyNCArMzI2LDI0IEBAIHN0YXRpYyBpbnQgaGkzNjcwX3BoeV9zZXRfcGFy
YW1zKHN0cnVjdCBoaTM2NzBfcHJpdiAqcHJpdikKPiA+ID4gwqAJcmV0dXJuIHJldDsKPiA+ID4g
wqB9Cj4gPiA+IAo+ID4gPiAtc3RhdGljIGludCBoaTM2NzBfaXNfYWJiY2xrX3NlbGV0ZWQoc3Ry
dWN0IGhpMzY3MF9wcml2ICpwcml2KQo+ID4gPiArc3RhdGljIGJvb2wgaGkzNjcwX2lzX2FiYmNs
a19zZWxldGVkKHN0cnVjdCBoaTM2NzBfcHJpdiAqcHJpdikgIAo+ID4gCj4gPiBQcmVzdW1hYmx5
IHRoaXMgc2hvdWxkIGJlICJzZWxlY3RlZCIgbm90ICJzZWxldGVkIgoKVHJ1ZS4gSSdsbCBmaXgg
aXQuCgo+ID4gICAKPiA+ID4gwqB7Cj4gPiA+IMKgCXUzMiByZWc7Cj4gPiA+IAo+ID4gPiDCoAlp
ZiAoIXByaXYtPnNjdHJsKSB7Cj4gPiA+IMKgCQlkZXZfZXJyKHByaXYtPmRldiwgInByaXYtPnNj
dHJsIGlzIG51bGwhXG4iKTsKPiA+ID4gLQkJcmV0dXJuIDE7Cj4gPiA+ICsJCXJldHVybiB0cnVl
Owo+ID4gPiDCoAl9Cj4gPiA+IAo+ID4gPiDCoAlpZiAocmVnbWFwX3JlYWQocHJpdi0+c2N0cmws
IFNDVFJMX1NDREVFUFNMRUVQRUQsICZyZWcpKSB7Cj4gPiA+IMKgCQlkZXZfZXJyKHByaXYtPmRl
diwgIlNDVFJMX1NDREVFUFNMRUVQRUQgcmVhZCBmYWlsZWQhXG4iKTsKPiA+ID4gLQkJcmV0dXJu
IDE7Cj4gPiA+ICsJCXJldHVybiB0cnVlOwo+ID4gPiDCoAl9Cj4gPiA+IAo+ID4gPiDCoAlpZiAo
KHJlZyAmIFVTQl9DTEtfU0VMRUNURUQpID09IDApCj4gPiA+IC0JCXJldHVybiAxOwo+ID4gPiAr
CQlyZXR1cm4gdHJ1ZTsKPiA+ID4gCj4gPiA+IC0JcmV0dXJuIDA7Cj4gPiA+ICsJcmV0dXJuIGZh
bHNlOwo+ID4gPiDCoH0gIAo+ID4gCj4gPiAJaWYgKGZvbykKPiA+IAkJcmV0dXJuIHRydWU7Cj4g
PiAJcmV0dXJuIGZhbHNlOwo+ID4gCj4gPiBzaG91bGQgZ2VuZXJhbGx5IGJlIGNvbnNvbGlkYXRl
ZCBpbnRvIGEgc2luZ2xlIHRlc3QuICAKPiAKPiBJIHF1aXRlIHByZWZlciB0aGUgb3JpZ2luYWwg
Zm9ybWF0LCBidXQgeW91J3JlIHJpZ2h0IGFib3V0IHRoZSByZXR1cm4KPiBsb29raW5nIHJldmVy
c2VkLiAgVXNpbmcgInJldHVybiAhIShyZWcgJiBVU0JfQ0xLX1NFTEVDVEVEKTsiIGlzCj4gZXNw
ZWNpYWxseSBwcm9ibGVtYXRpYy4gIEkgbGlrZSAhISBidXQgTGludXMgaGFzIGNvbW1lbnRlZCBh
IGNvdXBsZQo+IHRpbWVzIHRoYXQgaGUgZG9lc24ndCBsaWtlICEhLgoKTWUgdG8uICJyZXR1cm4g
ISEocmVnICYgVVNCX0NMS19TRUxFQ1RFRCkiIGp1c3Qgb2JmdXNjYXRlcyB0aGUKc291cmNlIGNv
ZGUsIGltaG8gZm9yIG5vIGdvb2QgcmVhc29uLiBJdCBzb3VuZHMgYSBsb3QgZWFzaWVyIHRvCnJl
YWQgc29tZXRoaW5nIGxpa2U6CgoJaWYgKGNvbmQxKQoJCXJldHVybiB0cnVlOwoJaWYgKGNvbmQy
KQoJCXJldHVybiB0cnVlOwoJaWYgKGNvbmQzKQoJCXJldHVybiB0cnVlOwoKCXJldHVybiBmYWxz
ZTsKCllldCwgSSBhZ3JlZSB0aGF0IHRoZSBsb2dpYyBoZXJlIHNlZW1zIHRvIGJlIGludmVydGVk
LgoKCj4gCj4gcmVnYXJkcywKPiBkYW4gY2FycGVudGVyCj4gCj4gCgoKClRoYW5rcywKTWF1cm8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
