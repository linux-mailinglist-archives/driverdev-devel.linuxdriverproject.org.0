Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7544A424F5B
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:36:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A5CB60F74;
	Thu,  7 Oct 2021 08:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g26kEpZAFE2T; Thu,  7 Oct 2021 08:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E35A260769;
	Thu,  7 Oct 2021 08:36:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F00791BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id DF3E840998
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id cD8Ulx_z9Mw9 for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:35:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 0D2834098C
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:35:53 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633595754; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=THqy+F0YtKNfeYDAR6Uu0AL5jJ4BrmAfvTC+DB6h4Dw=;
 b=xCLDmrJm0Q30BWRWZ3zVpXY/6Za88BS27cwsX4IoFDenGHK/k5gj70eX2dn5dJjAYLo1EiDa
 QZUq5k7U0hi6CofMqzTcHGc8+KLJpr7RzuQhl8i7b5jH+V4BWSb5rhWMb9h4s/hMtISv1Gdo
 qpSQsL415ekAmf0jkIdNHfJlhUk=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 615eb1689ebaf35aaa52c37c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 08:35:52
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 808B4C4360D; Thu,  7 Oct 2021 08:35:51 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D47DBC4338F;
 Thu,  7 Oct 2021 08:35:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org D47DBC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <2723787.uDASXpoAWK@pc-42> <87k0ixj5vn.fsf@codeaurora.org>
 <3570035.Z1gqkuQO5x@pc-42>
Date: Thu, 07 Oct 2021 11:35:43 +0300
In-Reply-To: <3570035.Z1gqkuQO5x@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Wed, 06 Oct 2021 09:32:49 +0200")
Message-ID: <875yu9cjvk.fsf@codeaurora.org>
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
IEhpIEthbGxlLAo+Cj4gT24gRnJpZGF5IDEgT2N0b2JlciAyMDIxIDE0OjE4OjA0IENFU1QgS2Fs
bGUgVmFsbyB3cm90ZToKPj4gSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxh
YnMuY29tPiB3cml0ZXM6Cj4+IAo+PiA+IE9uIEZyaWRheSAxIE9jdG9iZXIgMjAyMSAxMToyMjow
OCBDRVNUIEthbGxlIFZhbG8gd3JvdGU6Cj4+ID4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBv
dWlsbGVyQHNpbGFicy5jb20+IHdyaXRlczoKPj4gPj4gCj4+ID4+ID4gRnJvbTogSsOpcsO0bWUg
UG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+PiA+PiA+Cj4+ID4+ID4gU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
Pgo+PiA+PiAKPj4gPj4gWy4uLl0KPj4gPj4gCj4+ID4+ID4gKy8qIFRoZSBkZXZpY2UgbmVlZHMg
ZGF0YSBhYm91dCB0aGUgYW50ZW5uYSBjb25maWd1cmF0aW9uLiBUaGlzIGluZm9ybWF0aW9uIGlu
Cj4+ID4+ID4gKyAqIHByb3ZpZGVkIGJ5IFBEUyAoUGxhdGZvcm0gRGF0YSBTZXQsIHRoaXMgaXMg
dGhlIHdvcmRpbmcgdXNlZCBpbiBXRjIwMAo+PiA+PiA+ICsgKiBkb2N1bWVudGF0aW9uKSBmaWxl
cy4gRm9yIGhhcmR3YXJlIGludGVncmF0b3JzLCB0aGUgZnVsbCBwcm9jZXNzIHRvIGNyZWF0ZQo+
PiA+PiA+ICsgKiBQRFMgZmlsZXMgaXMgZGVzY3JpYmVkIGhlcmU6Cj4+ID4+ID4gKyAqICAgaHR0
cHM6Z2l0aHViLmNvbS9TaWxpY29uTGFicy93ZngtZmlybXdhcmUvYmxvYi9tYXN0ZXIvUERTL1JF
QURNRS5tZAo+PiA+PiA+ICsgKgo+PiA+PiA+ICsgKiBTbyB0aGlzIGZ1bmN0aW9uIGFpbXMgdG8g
c2VuZCBQRFMgdG8gdGhlIGRldmljZS4gSG93ZXZlciwgdGhlIFBEUyBmaWxlIGlzCj4+ID4+ID4g
KyAqIG9mdGVuIGJpZ2dlciB0aGFuIFJ4IGJ1ZmZlcnMgb2YgdGhlIGNoaXAsIHNvIGl0IGhhcyB0
byBiZSBzZW50IGluIG11bHRpcGxlCj4+ID4+ID4gKyAqIHBhcnRzLgo+PiA+PiA+ICsgKgo+PiA+
PiA+ICsgKiBJbiBhZGQsIHRoZSBQRFMgZGF0YSBjYW5ub3QgYmUgc3BsaXQgYW55d2hlcmUuIFRo
ZSBQRFMgZmlsZXMgY29udGFpbnMgdHJlZQo+PiA+PiA+ICsgKiBzdHJ1Y3R1cmVzLiBCcmFjZXMg
YXJlIHVzZWQgdG8gZW50ZXIvbGVhdmUgYSBsZXZlbCBvZiB0aGUgdHJlZSAoaW4gYSBKU09OCj4+
ID4+ID4gKyAqIGZhc2hpb24pLiBQRFMgZmlsZXMgY2FuIG9ubHkgYmVlbiBzcGxpdCBiZXR3ZWVu
IHJvb3Qgbm9kZXMuCj4+ID4+ID4gKyAqLwo+PiA+PiA+ICtpbnQgd2Z4X3NlbmRfcGRzKHN0cnVj
dCB3ZnhfZGV2ICp3ZGV2LCB1OCAqYnVmLCBzaXplX3QgbGVuKQo+PiA+PiA+ICt7Cj4+ID4+ID4g
KyAgICAgaW50IHJldDsKPj4gPj4gPiArICAgICBpbnQgc3RhcnQsIGJyYWNlX2xldmVsLCBpOwo+
PiA+PiA+ICsKPj4gPj4gPiArICAgICBzdGFydCA9IDA7Cj4+ID4+ID4gKyAgICAgYnJhY2VfbGV2
ZWwgPSAwOwo+PiA+PiA+ICsgICAgIGlmIChidWZbMF0gIT0gJ3snKSB7Cj4+ID4+ID4gKyBkZXZf
ZXJyKHdkZXYtPmRldiwgInZhbGlkIFBEUyBzdGFydCB3aXRoICd7Jy4gRGlkIHlvdSBmb3JnZXQg
dG8KPj4gPj4gPiBjb21wcmVzcyBpdD9cbiIpOwo+PiA+PiA+ICsgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7Cj4+ID4+ID4gKyAgICAgfQo+PiA+PiA+ICsgICAgIGZvciAoaSA9IDE7IGkgPCBs
ZW4gLSAxOyBpKyspIHsKPj4gPj4gPiArICAgICAgICAgICAgIGlmIChidWZbaV0gPT0gJ3snKQo+
PiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICBicmFjZV9sZXZlbCsrOwo+PiA+PiA+ICsgICAg
ICAgICAgICAgaWYgKGJ1ZltpXSA9PSAnfScpCj4+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGJyYWNlX2xldmVsLS07Cj4+ID4+ID4gKyAgICAgICAgICAgICBpZiAoYnVmW2ldID09ICd9JyAm
JiAhYnJhY2VfbGV2ZWwpIHsKPj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgaSsrOwo+PiA+
PiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoaSAtIHN0YXJ0ICsgMSA+IFdGWF9QRFNfTUFY
X1NJWkUpCj4+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FRkJJ
RzsKPj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgYnVmW3N0YXJ0XSA9ICd7JzsKPj4gPj4g
PiArICAgICAgICAgICAgICAgICAgICAgYnVmW2ldID0gMDsKPj4gPj4gPiArICAgICAgICAgICAg
ICAgICAgICAgZGV2X2RiZyh3ZGV2LT5kZXYsICJzZW5kIFBEUyAnJXN9J1xuIiwgYnVmICsgc3Rh
cnQpOwo+PiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICBidWZbaV0gPSAnfSc7Cj4+ID4+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHJldCA9IGhpZl9jb25maWd1cmF0aW9uKHdkZXYsIGJ1ZiAr
IHN0YXJ0LAo+PiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpIC0gc3RhcnQgKyAxKTsKPj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKHJl
dCA+IDApIHsKPj4gPj4gPiArIGRldl9lcnIod2Rldi0+ZGV2LCAiUERTIGJ5dGVzICVkIHRvICVk
OiBpbnZhbGlkIGRhdGEgKHVuc3VwcG9ydGVkCj4+ID4+ID4gb3B0aW9ucz8pXG4iLAo+PiA+PiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhcnQsIGkpOwo+PiA+PiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+PiA+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICB9Cj4+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmIChy
ZXQgPT0gLUVUSU1FRE9VVCkgewo+PiA+PiA+ICsgZGV2X2Vycih3ZGV2LT5kZXYsICJQRFMgYnl0
ZXMgJWQgdG8gJWQ6IGNoaXAgZGlkbid0IHJlcGx5IChjb3JydXB0ZWQKPj4gPj4gPiBmaWxlPylc
biIsCj4+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGFydCwg
aSk7Cj4+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4g
Pj4gPiArICAgICAgICAgICAgICAgICAgICAgfQo+PiA+PiA+ICsgICAgICAgICAgICAgICAgICAg
ICBpZiAocmV0KSB7Cj4+ID4+ID4gKyBkZXZfZXJyKHdkZXYtPmRldiwgIlBEUyBieXRlcyAlZCB0
byAlZDogY2hpcCByZXR1cm5lZCBhbiB1bmtub3duCj4+ID4+ID4gZXJyb3JcbiIsCj4+ID4+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGFydCwgaSk7Cj4+ID4+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU87Cj4+ID4+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIH0KPj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgYnVmW2ldID0g
JywnOwo+PiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICBzdGFydCA9IGk7Cj4+ID4+ID4gKyAg
ICAgICAgICAgICB9Cj4+ID4+ID4gKyAgICAgfQo+PiA+PiA+ICsgICAgIHJldHVybiAwOwo+PiA+
PiA+ICt9Cj4+ID4+IAo+PiA+PiBJJ20gbm90IHJlYWxseSBmb25kIG9mIGhhdmluZyB0aGlzIGtp
bmQgb2YgQVNDSUkgYmFzZWQgcGFyc2VyIGluIHRoZQo+PiA+PiBrZXJuZWwuIERvIHlvdSBoYXZl
IGFuIGV4YW1wbGUgY29tcHJlc3NlZCBmaWxlIHNvbWV3aGVyZT8KPj4gPgo+PiA+IEFuIGV4YW1w
bGUgb2YgdW5jb21wcmVzc2VkIGNvbmZpZ3VyYXRpb24gZmlsZSBjYW4gYmUgZm91bmQgaGVyZVsx
XS4gT25jZQo+PiA+IGNvbXByZXNzZWQgd2l0aCBbMl0sIHlvdSBnZXQ6Cj4+ID4KPj4gPiAgICAg
e2E6e2E6NCxiOjF9LGI6e2E6e2E6NCxiOjAsYzowLGQ6MCxlOkF9LGI6e2E6NCxiOjAsYzowLGQ6
MCxlOkJ9LGM6e2E6NCxiOjAsYzowLGQ6MCxlOkN9LGQ6e2E6NCxiOjAsYzowLGQ6MCxlOkR9LGU6
e2E6NCxiOjAsYzowLGQ6MCxlOkV9LGY6e2E6NCxiOjAsYzowLGQ6MCxlOkZ9LGc6e2E6NCxiOjAs
YzowLGQ6MCxlOkd9LGg6e2E6NCxiOjAsYzowLGQ6MCxlOkh9LGk6e2E6NCxiOjAsYzowLGQ6MCxl
Okl9LGo6e2E6NCxiOjAsYzowLGQ6MCxlOkp9LGs6e2E6NCxiOjAsYzowLGQ6MCxlOkt9LGw6e2E6
NCxiOjAsYzowLGQ6MSxlOkx9LG06e2E6NCxiOjAsYzowLGQ6MSxlOk19fSxjOnthOnthOjR9LGI6
e2E6Nn0sYzp7YTo2LGM6MH0sZDp7YTo2fSxlOnthOjZ9LGY6e2E6Nn19LGU6e2I6MCxjOjF9LGg6
e2U6MCxhOjUwLGI6MCxkOjAsYzpbe2E6MSxiOlswLDAsMCwwLDAsMF19LHthOjIsYjpbMCwwLDAs
MCwwLDBdfSx7YTpbMyw5XSxiOlswLDAsMCwwLDAsMF19LHthOkEsYjpbMCwwLDAsMCwwLDBdfSx7
YTpCLGI6WzAsMCwwLDAsMCwwXX0se2E6W0MsRF0sYjpbMCwwLDAsMCwwLDBdfSx7YTpFLGI6WzAs
MCwwLDAsMCwwXX1dfSxqOnthOjAsYjowfX0KPj4gCj4+IFNvIHdoYXQncyB0aGUgZ3JhbmQgaWRl
YSB3aXRoIHRoaXMgYnJhY2VzIGZvcm1hdD8gSSdtIG5vdCBnZXR0aW5nIGl0Lgo+Cj4gICAtIEl0
IGFsbG93cyB0byBkZXNjcmliZSBhIHRyZWUgc3RydWN0dXJlCj4gICAtIEl0IGlzIGFzY2lpIChl
YXN5IHRvIGR1bXAsIGVhc3kgdG8gY29weS1wYXN0ZSkKPiAgIC0gSXQgaXMgc21hbGwgKGFzIEkg
ZXhwbGFpbiBiZWxvdywgc2l6ZSBtYXR0ZXJzKQo+ICAgLSBTaW5jZSBpdCBpcyBzaW1pbGFyIHRv
IEpTT04sIHRoZSBzdHJ1Y3R1cmUgaXMgb2J2aW91cyB0byBtYW55IHBlb3BsZQo+Cj4gQW55d2F5
LCBJIGFtIG5vdCB0aGUgYXV0aG9yIG9mIHRoYXQgYW5kIEkgaGF2ZSB0byBkZWFsIHdpdGggaXQu
CgpJJ20gYSBzdXBwb3J0ZWQgZm9yIEpTT04gbGlrZSBmb3JtYXRzLCBmbGV4aWJpbGl0eSBhbmQg
YWxsIHRoYXQuIEJ1dAp0aGV5IGJlbG9uZyB0byB1c2VyIHNwYWNlLCBub3Qga2VybmVsLgoKPj4g
VXN1YWxseSB0aGUgZHJpdmVycyBqdXN0IGNvbnNpZGVyIHRoaXMga2luZCBvZiBmaXJtd2FyZSBj
b25maWd1cmF0aW9uCj4+IGRhdGEgYXMgYSBiaW5hcnkgYmxvYiBhbmQgZHVtcCBpdCB0byB0aGUg
ZmlybXdhcmUsIHdpdGhvdXQga25vd2luZyB3aGF0Cj4+IHRoZSBkYXRhIGNvbnRhaW5zLiBDYW4n
dCB5b3UgZG8gdGhlIHNhbWU/Cj4KPiBbSSBkaWRuJ3QgaGFkIHJlY2VpdmVkIHRoaXMgbWFpbCA6
KCBdCj4KPiBUaGUgaWRlYSB3YXMgYWxzbyB0byBzZW5kIGl0IGFzIGEgYmluYXJ5IGJsb2IuIEhv
d2V2ZXIsIHRoZSBmaXJtd2FyZSB1c2UKPiBhIGxpbWl0ZWQgYnVmZmVyICgxNTAwIGJ5dGVzKSB0
byBwYXJzZSBpdC4gSW4gbW9zdCBvZiBjYXNlIHRoZSBQRFMgZXhjZWVkcwo+IHRoaXMgc2l6ZS4g
U28sIHdlIGhhdmUgdG8gc3BsaXQgdGhlIFBEUyBiZWZvcmUgdG8gc2VuZCBpdC4KPgo+IFVuZm9y
dHVuYXRlbHksIHdlIGNhbid0IHNwbGl0IGl0IGFueXdoZXJlLiBUaGUgUERTIGlzIGEgdHJlZSBz
dHJ1Y3R1cmUgYW5kCj4gdGhlIGZpcm13YXJlIGV4cGVjdHMgdG8gcmVjZWl2ZSBhIHdlbGwgZm9y
bWF0dGVkIHRyZWUuCj4KPiBTbywgdGhlIGVhc2llc3Qgd2F5IHRvIHNlbmQgaXQgdG8gdGhlIGZp
cm13YXJlIGlzIHRvIHNwbGl0IHRoZSB0cmVlCj4gYmV0d2VlbiBlYWNoIHJvb3Qgbm9kZXMgYW5k
IHNlbmQgZWFjaCBzdWJ0cmVlIHNlcGFyYXRlbHkgKHNlZSBhbHNvIHRoZQo+IGNvbW1lbnQgYWJv
dmUgd2Z4X3NlbmRfcGRzKCkpLgo+Cj4gQW55d2F5LCBzb21lb25lIGhhcyB0byBjb29rIHRoaXMg
Y29uZmlndXJhdGlvbiBiZWZvcmUgdG8gc2VuZCBpdCB0byB0aGUKPiBmaXJtd2FyZS4gVGhpcyBj
b3VsZCBiZSBkb25lIGJ5IGEgc2NyaXB0IG91dHNpZGUgb2YgdGhlIGtlcm5lbC4gVGhlbiB3ZQo+
IGNvdWxkIGNoYW5nZSB0aGUgaW5wdXQgZm9ybWF0IHRvIHNpbXBsaWZ5IGEgYml0IHRoZSBwcm9j
ZXNzaW5nIGluIHRoZQo+IGtlcm5lbC4KCkkgdGhpbmsgYSBiaW5hcnkgZmlsZSB3aXRoIFRMViBm
b3JtYXQgd291bGQgYmUgbXVjaCBiZXR0ZXIsIGJ1dCBJJ20gc3VyZQp0aGVyZSBhbHNvIG90aGVy
IGdvb2QgY2hvaXNlcy4KCj4gSG93ZXZlciwgdGhlIGRyaXZlciBoYXMgYWxyZWFkeSBzb21lIHVz
ZXJzIGFuZCBJIHdvcnJ5IHRoYXQgY2hhbmdpbmcKPiB0aGUgaW5wdXQgZm9ybWF0IHdvdWxkIGxl
YWQgdG8gYSBtZXNzLgoKWW91IGNhbiBpbXBsZW1lbnQgYSBzY3JpcHQgd2hpY2ggY29udmVydHMg
dGhlIG9sZCBmb3JtYXQgdG8gdGhlIG5ldwpmb3JtYXQuIEFuZCB5b3UgY2FuIHVzZSBkaWZmZXJl
bnQgbmFtaW5nIHNjaGVtZSBpbiB0aGUgbmV3IGZvcm1hdCBzbwp0aGF0IHdlIGRvbid0IGFjY2lk
ZW50YWxseSBsb2FkIHRoZSBvbGQgZm9ybWF0LiBBbmQgZXZlbiBiZXR0ZXIgaWYgeW91CmFkZCBh
IHNvbWUga2luZCBvZiBzaWduYXR1cmUgaW4gdGhlIG5ldyBmb3JtYXQgYW5kIGdpdmUgYSBwcm9w
ZXIgZXJyb3IKZnJvbSB0aGUgZHJpdmVyIGlmIGl0IGRvZXNuJ3QgbWF0Y2guCgotLSAKaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRw
czovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24v
c3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
