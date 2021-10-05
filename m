Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC34421E7E
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 07:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CA4D40795;
	Tue,  5 Oct 2021 05:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YVw2NyJpG2k6; Tue,  5 Oct 2021 05:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29F094077D;
	Tue,  5 Oct 2021 05:57:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0D81BF301
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 05:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 0C59483D0B
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 05:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id bTblMn1pLVXE for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 05:57:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 33AAC83C0F
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 05:57:16 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633413438; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=YmROy8vchD7nTW7VEG0tMTR10D8w5HdNqectY0pOlr4=;
 b=JEpAki10hnBs5tXyKcI+n/VkiRjKIHBRy/WW6n03ApFp8h7M7HTm+ahl1VvShmO9l1cX6VGd
 AnSoLQvj4ZfW8WRKe3wuBgYJZSYNPQvkn8PeA3gR8IBQc8X7Kn2Gc2IQUE0K13R6epoJ/jyp
 sXMQZbqUm4gGf4NJ+5O31/vM1s8=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 615be92f63b1f186588c9aaf (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 05 Oct 2021 05:57:03
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A639AC43619; Tue,  5 Oct 2021 05:57:02 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C83CBC4338F;
 Tue,  5 Oct 2021 05:56:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org C83CBC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-6-Jerome.Pouiller@silabs.com>
 <87y27dkslb.fsf@codeaurora.org> <3660480.PpQ1LQVJpD@pc-42>
Date: Tue, 05 Oct 2021 08:56:53 +0300
In-Reply-To: <3660480.PpQ1LQVJpD@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Fri, 01 Oct 2021 17:29:57 +0200")
Message-ID: <8735pgggka.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIEZyaWRheSAxIE9jdG9iZXIgMjAyMSAxMToyMjowOCBDRVNUIEthbGxlIFZhbG8gd3JvdGU6
Cj4+IENBVVRJT046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgb2YgdGhlIG9y
Z2FuaXphdGlvbi4gRG8KPj4gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5s
ZXNzIHlvdSByZWNvZ25pemUgdGhlIHNlbmRlcgo+PiBhbmQga25vdyB0aGUgY29udGVudCBpcyBz
YWZlLgo+PiAKPj4gCj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5j
b20+IHdyaXRlczoKPj4gCj4+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3Vp
bGxlckBzaWxhYnMuY29tPgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxs
ZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+PiAKPj4gWy4uLl0KPj4gCj4+ID4gKy8q
IFRoZSBkZXZpY2UgbmVlZHMgZGF0YSBhYm91dCB0aGUgYW50ZW5uYSBjb25maWd1cmF0aW9uLiBU
aGlzIGluZm9ybWF0aW9uIGluCj4+ID4gKyAqIHByb3ZpZGVkIGJ5IFBEUyAoUGxhdGZvcm0gRGF0
YSBTZXQsIHRoaXMgaXMgdGhlIHdvcmRpbmcgdXNlZCBpbiBXRjIwMAo+PiA+ICsgKiBkb2N1bWVu
dGF0aW9uKSBmaWxlcy4gRm9yIGhhcmR3YXJlIGludGVncmF0b3JzLCB0aGUgZnVsbCBwcm9jZXNz
IHRvIGNyZWF0ZQo+PiA+ICsgKiBQRFMgZmlsZXMgaXMgZGVzY3JpYmVkIGhlcmU6Cj4+ID4gKyAq
ICAgaHR0cHM6Z2l0aHViLmNvbS9TaWxpY29uTGFicy93ZngtZmlybXdhcmUvYmxvYi9tYXN0ZXIv
UERTL1JFQURNRS5tZAo+PiA+ICsgKgo+PiA+ICsgKiBTbyB0aGlzIGZ1bmN0aW9uIGFpbXMgdG8g
c2VuZCBQRFMgdG8gdGhlIGRldmljZS4gSG93ZXZlciwgdGhlIFBEUyBmaWxlIGlzCj4+ID4gKyAq
IG9mdGVuIGJpZ2dlciB0aGFuIFJ4IGJ1ZmZlcnMgb2YgdGhlIGNoaXAsIHNvIGl0IGhhcyB0byBi
ZSBzZW50IGluIG11bHRpcGxlCj4+ID4gKyAqIHBhcnRzLgo+PiA+ICsgKgo+PiA+ICsgKiBJbiBh
ZGQsIHRoZSBQRFMgZGF0YSBjYW5ub3QgYmUgc3BsaXQgYW55d2hlcmUuIFRoZSBQRFMgZmlsZXMg
Y29udGFpbnMgdHJlZQo+PiA+ICsgKiBzdHJ1Y3R1cmVzLiBCcmFjZXMgYXJlIHVzZWQgdG8gZW50
ZXIvbGVhdmUgYSBsZXZlbCBvZiB0aGUgdHJlZSAoaW4gYSBKU09OCj4+ID4gKyAqIGZhc2hpb24p
LiBQRFMgZmlsZXMgY2FuIG9ubHkgYmVlbiBzcGxpdCBiZXR3ZWVuIHJvb3Qgbm9kZXMuCj4+ID4g
KyAqLwo+PiA+ICtpbnQgd2Z4X3NlbmRfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1OCAqYnVm
LCBzaXplX3QgbGVuKQo+PiA+ICt7Cj4+ID4gKyAgICAgaW50IHJldDsKPj4gPiArICAgICBpbnQg
c3RhcnQsIGJyYWNlX2xldmVsLCBpOwo+PiA+ICsKPj4gPiArICAgICBzdGFydCA9IDA7Cj4+ID4g
KyAgICAgYnJhY2VfbGV2ZWwgPSAwOwo+PiA+ICsgICAgIGlmIChidWZbMF0gIT0gJ3snKSB7Cj4+
ID4gKyBkZXZfZXJyKHdkZXYtPmRldiwgInZhbGlkIFBEUyBzdGFydCB3aXRoICd7Jy4gRGlkIHlv
dSBmb3JnZXQgdG8KPj4gPiBjb21wcmVzcyBpdD9cbiIpOwo+PiA+ICsgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7Cj4+ID4gKyAgICAgfQo+PiA+ICsgICAgIGZvciAoaSA9IDE7IGkgPCBsZW4g
LSAxOyBpKyspIHsKPj4gPiArICAgICAgICAgICAgIGlmIChidWZbaV0gPT0gJ3snKQo+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICBicmFjZV9sZXZlbCsrOwo+PiA+ICsgICAgICAgICAgICAgaWYg
KGJ1ZltpXSA9PSAnfScpCj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyYWNlX2xldmVsLS07
Cj4+ID4gKyAgICAgICAgICAgICBpZiAoYnVmW2ldID09ICd9JyAmJiAhYnJhY2VfbGV2ZWwpIHsK
Pj4gPiArICAgICAgICAgICAgICAgICAgICAgaSsrOwo+PiA+ICsgICAgICAgICAgICAgICAgICAg
ICBpZiAoaSAtIHN0YXJ0ICsgMSA+IFdGWF9QRFNfTUFYX1NJWkUpCj4+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FRkJJRzsKPj4gPiArICAgICAgICAgICAgICAgICAg
ICAgYnVmW3N0YXJ0XSA9ICd7JzsKPj4gPiArICAgICAgICAgICAgICAgICAgICAgYnVmW2ldID0g
MDsKPj4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2RiZyh3ZGV2LT5kZXYsICJzZW5kIFBE
UyAnJXN9J1xuIiwgYnVmICsgc3RhcnQpOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICBidWZb
aV0gPSAnfSc7Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldCA9IGhpZl9jb25maWd1cmF0
aW9uKHdkZXYsIGJ1ZiArIHN0YXJ0LAo+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpIC0gc3RhcnQgKyAxKTsKPj4gPiArICAgICAgICAgICAgICAgICAg
ICAgaWYgKHJldCA+IDApIHsKPj4gPiArIGRldl9lcnIod2Rldi0+ZGV2LCAiUERTIGJ5dGVzICVk
IHRvICVkOiBpbnZhbGlkIGRhdGEgKHVuc3VwcG9ydGVkCj4+ID4gb3B0aW9ucz8pXG4iLAo+PiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhcnQsIGkpOwo+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+PiA+ICsgICAgICAg
ICAgICAgICAgICAgICB9Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQgPT0gLUVU
SU1FRE9VVCkgewo+PiA+ICsgZGV2X2Vycih3ZGV2LT5kZXYsICJQRFMgYnl0ZXMgJWQgdG8gJWQ6
IGNoaXAgZGlkbid0IHJlcGx5IChjb3JydXB0ZWQKPj4gPiBmaWxlPylcbiIsCj4+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGFydCwgaSk7Cj4+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4gPiArICAgICAgICAgICAgICAgICAg
ICAgfQo+PiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAocmV0KSB7Cj4+ID4gKyBkZXZfZXJy
KHdkZXYtPmRldiwgIlBEUyBieXRlcyAlZCB0byAlZDogY2hpcCByZXR1cm5lZCBhbiB1bmtub3du
Cj4+ID4gZXJyb3JcbiIsCj4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdGFydCwgaSk7Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1F
SU87Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIH0KPj4gPiArICAgICAgICAgICAgICAgICAg
ICAgYnVmW2ldID0gJywnOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICBzdGFydCA9IGk7Cj4+
ID4gKyAgICAgICAgICAgICB9Cj4+ID4gKyAgICAgfQo+PiA+ICsgICAgIHJldHVybiAwOwo+PiA+
ICt9Cj4+IAo+PiBJJ20gbm90IHJlYWxseSBmb25kIG9mIGhhdmluZyB0aGlzIGtpbmQgb2YgQVND
SUkgYmFzZWQgcGFyc2VyIGluIHRoZQo+PiBrZXJuZWwuIERvIHlvdSBoYXZlIGFuIGV4YW1wbGUg
Y29tcHJlc3NlZCBmaWxlIHNvbWV3aGVyZT8KPj4gCj4+IERvZXMgdGhlIGRldmljZSBzdGlsbCB3
b3JrIHdpdGhvdXQgdGhlc2UgUERTIGZpbGVzPyBJIGFzayBiZWNhdXNlIG15Cj4+IHN1Z2dlc3Rp
b24gaXMgdG8gcmVtb3ZlIHRoaXMgcGFydCBhbHRvZ2V0aGVyIGFuZCByZXZpc2l0IGFmdGVyIHRo
ZQo+PiBpbml0aWFsIGRyaXZlciBpcyBtb3ZlZCB0byBkcml2ZXJzL25ldC93aXJlbGVzcy4gQSBs
b3Qgc2ltcGxlciB0byByZXZpZXcKPj4gY29tcGxleCBmZWF0dXJlcyBzZXBhcmF0ZWx5Lgo+Cj4g
RG8geW91IHdhbnQgSSByZW1vdmUgdGhpcyBmdW5jdGlvbiBmcm9tIHRoaXMgcGF0Y2ggYW5kIHBs
YWNlIGl0IGEgbmV3Cj4gcGF0Y2ggYXQgdGhlIGVuZCBvZiB0aGlzIHNlcmllcz8KCkkgZG9uJ3Qg
dW5kZXJzdGFuZCwgaG93IHRoYXQgd291bGQgaGVscD8gVGhlIHByb2JsZW0gaGVyZSBpcyB0aGUg
ZmlsZQpmb3JtYXQgYW5kIHRoYXQncyB3aGF0IHdlIHNob3VsZCB0cnkgdG8gZml4LgoKLS0gCmh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoK
aHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0
aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
