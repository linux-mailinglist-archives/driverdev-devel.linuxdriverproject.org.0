Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACCB226B7
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6254886214;
	Sun, 19 May 2019 11:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ySVB0r+YOTQn; Sun, 19 May 2019 11:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C794D861D2;
	Sun, 19 May 2019 11:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6441BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 852CE860FF
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0nAFo8GSxnP for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:09:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F98086233
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:09:05 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 261A121773;
 Sun, 19 May 2019 11:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558264144;
 bh=EWgtkwVlfGD1NpiyhG72Pl8PdGw5ndsf4DuG+VXBfoQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SU6WiHoGoZwJA0tSPSr8Ct/WNAg1LtBoU6srRdyCmijlkebPylyz4FaGaB3XPni5e
 3IYxkD1ZBKMrCjjzwLIpMg3xsk8CW+vwXEt/hC9rVDq4QVdm95e5JGj05RMiX1jJZn
 KruLdpWUU8gLN7dBNDKMrc8SYGvZisuKG077+660=
Date: Sun, 19 May 2019 12:09:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
Subject: Re: [PATCH] staging: iio: ad7746: add device tree support
Message-ID: <20190519120900.3bef9481@archlinux>
In-Reply-To: <20190519120250.4644c255@archlinux>
References: <20190518222733.2ttcgvy7fct4awra@smtp.gmail.com>
 <20190519120250.4644c255@archlinux>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCAxOSBNYXkgMjAxOSAxMjowMjo1MCArMDEwMApKb25hdGhhbiBDYW1lcm9uIDxqaWMy
M0BrZXJuZWwub3JnPiB3cm90ZToKCj4gT24gU2F0LCAxOCBNYXkgMjAxOSAxOToyNzozMyAtMDMw
MAo+IEpvw6NvIFNlY2tsZXIgPGpvYW9zZWNrbGVyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gPiBB
ZGQgYSBvZl9kZXZpY2VfaWQgc3RydWN0IHZhcmlhYmxlIGFuZCBzdWJzZXF1ZW50IGNhbGwgdG8K
PiA+IE1PRFVMRV9ERVZJQ0VfVEFCTEUgbWFjcm8gdG8gc3VwcG9ydCBkZXZpY2UgdHJlZS4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogSm/Do28gU2Vja2xlciA8am9hb3NlY2tsZXJAZ21haWwuY29t
Pgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgT3NoaXJvIDxsdWNhc3NlaWtpb3NoaXJvQGdtYWls
LmNvbT4KPiA+IENvLWRldmVsb3BlZC1ieTogTHVjYXMgT3NoaXJvIDxsdWNhc3NlaWtpb3NoaXJv
QGdtYWlsLmNvbT4gIAo+IEFwcGxpZWQgdG8gdGhlIHRvZ3JlZyBicmFuY2ggb2YgaWlvLmdpdCBh
bmQgcHVzaGVkIG91dCBhcyB0ZXN0aW5nCj4gZm9yIHRoZSBhdXRvYnVpbGRlcnMgdG8gcGxheSB3
aXRoIGl0Lgo+IAo+IEZvciBhIGZ1dHVyZSBpbXByb3ZlbWVudCwgdHJ5IHRvIGV4cGxhaW4gdGhl
ICd3aHknIHJhdGhlciB0aGFuCj4gJ3doYXQnIG9mIGEgcGF0Y2ggaW4gdGhlIGRlc2NyaXB0aW9u
LiAgIFRoaXMgcGFydGljdWxhciBjaGFuZ2UKPiBpcyBzbyBjb21tb24gSSBkb24ndCBtaW5kIHRo
YXQgbXVjaCwgYnV0IGl0IGlzIGEgZ29vZCBoYWJpdCB0bwo+IGdldCBpbnRvIQpBaCwgeW91IGRv
IHNheSB0byBzdXBwb3J0IGRldmljZSB0cmVlIGF0IHRoZSBlbmQsIGJ1dCBtb3JlCmRldGFpbCBv
biB0aGF0IHdvdWxkIGhhdmUgYmVlbiBnb29kIQoKVGhhbmtzLAoKSgo+IAo+IFRoYW5rcywKPiAK
PiBKb25hdGhhbgo+ID4gLS0tCj4gPiAgZHJpdmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3NzQ2LmMg
fCAxMCArKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+
IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzc0Ni5jIGIvZHJp
dmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3NzQ2LmMKPiA+IGluZGV4IDQ3NjEwZDg2MzkwOC4uMjE1
MjdkODRmOTQwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3NzQ2
LmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzc0Ni5jCj4gPiBAQCAtNzQ4
LDkgKzc0OCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgYWQ3NzQ2X2lk
W10gPSB7Cj4gPiAgCj4gPiAgTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIGFkNzc0Nl9pZCk7Cj4g
PiAgCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYWQ3NzQ2X29mX21hdGNo
W10gPSB7Cj4gPiArCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzc0NSIgfSwKPiA+ICsJeyAuY29t
cGF0aWJsZSA9ICJhZGksYWQ3NzQ2IiB9LAo+ID4gKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDc3
NDciIH0sCj4gPiArCXsgfSwKPiA+ICt9Owo+ID4gKwo+ID4gK01PRFVMRV9ERVZJQ0VfVEFCTEUo
b2YsIGFkNzc0Nl9vZl9tYXRjaCk7Cj4gPiArCj4gPiAgc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVy
IGFkNzc0Nl9kcml2ZXIgPSB7Cj4gPiAgCS5kcml2ZXIgPSB7Cj4gPiAgCQkubmFtZSA9IEtCVUlM
RF9NT0ROQU1FLAo+ID4gKwkJLm9mX21hdGNoX3RhYmxlID0gYWQ3NzQ2X29mX21hdGNoLAo+ID4g
IAl9LAo+ID4gIAkucHJvYmUgPSBhZDc3NDZfcHJvYmUsCj4gPiAgCS5pZF90YWJsZSA9IGFkNzc0
Nl9pZCwgIAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
