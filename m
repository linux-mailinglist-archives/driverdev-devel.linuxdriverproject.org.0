Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9E641ED3D
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 14:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B130406A8;
	Fri,  1 Oct 2021 12:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A18F7msjNsa5; Fri,  1 Oct 2021 12:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12B5A40599;
	Fri,  1 Oct 2021 12:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 657B21BF2B6
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 545E2607F1
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id OnuiEkU5am1r for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 12:19:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 6998960625
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 12:19:24 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633090766; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=f/2eL919u3xkJmcRONnoLnVQIj2Az0TQ9zKpjUlTIQM=;
 b=NvG7X4xR80uUnqVqFJuRIKU0F6w8GqDpMsscx+/2w5dZBxGJXn4AtELfsiJkKx1jlQ/gGTKq
 2vWhtTv/NIIZpa/Dpi56gDZuHcdBx52ADRyR52C7Dsdz9fdUBEEfX/Or7b4uB2aTGhLF2dFu
 8RuJF7MQErvq2WMy7rxBQuIOXaw=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 6156fc84a3e8d3c640fa6bb0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 12:18:12
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 83348C43618; Fri,  1 Oct 2021 12:18:11 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B0C26C43460;
 Fri,  1 Oct 2021 12:18:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org B0C26C43460
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-6-Jerome.Pouiller@silabs.com>
 <87y27dkslb.fsf@codeaurora.org> <2723787.uDASXpoAWK@pc-42>
Date: Fri, 01 Oct 2021 15:18:04 +0300
In-Reply-To: <2723787.uDASXpoAWK@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Fri, 01 Oct 2021 11:44:17 +0200")
Message-ID: <87k0ixj5vn.fsf@codeaurora.org>
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
Cj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRlczoK
Pj4gCj4+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMu
Y29tPgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgo+PiAKPj4gWy4uLl0KPj4gCj4+ID4gKy8qIFRoZSBkZXZpY2Ug
bmVlZHMgZGF0YSBhYm91dCB0aGUgYW50ZW5uYSBjb25maWd1cmF0aW9uLiBUaGlzIGluZm9ybWF0
aW9uIGluCj4+ID4gKyAqIHByb3ZpZGVkIGJ5IFBEUyAoUGxhdGZvcm0gRGF0YSBTZXQsIHRoaXMg
aXMgdGhlIHdvcmRpbmcgdXNlZCBpbiBXRjIwMAo+PiA+ICsgKiBkb2N1bWVudGF0aW9uKSBmaWxl
cy4gRm9yIGhhcmR3YXJlIGludGVncmF0b3JzLCB0aGUgZnVsbCBwcm9jZXNzIHRvIGNyZWF0ZQo+
PiA+ICsgKiBQRFMgZmlsZXMgaXMgZGVzY3JpYmVkIGhlcmU6Cj4+ID4gKyAqICAgaHR0cHM6Z2l0
aHViLmNvbS9TaWxpY29uTGFicy93ZngtZmlybXdhcmUvYmxvYi9tYXN0ZXIvUERTL1JFQURNRS5t
ZAo+PiA+ICsgKgo+PiA+ICsgKiBTbyB0aGlzIGZ1bmN0aW9uIGFpbXMgdG8gc2VuZCBQRFMgdG8g
dGhlIGRldmljZS4gSG93ZXZlciwgdGhlIFBEUyBmaWxlIGlzCj4+ID4gKyAqIG9mdGVuIGJpZ2dl
ciB0aGFuIFJ4IGJ1ZmZlcnMgb2YgdGhlIGNoaXAsIHNvIGl0IGhhcyB0byBiZSBzZW50IGluIG11
bHRpcGxlCj4+ID4gKyAqIHBhcnRzLgo+PiA+ICsgKgo+PiA+ICsgKiBJbiBhZGQsIHRoZSBQRFMg
ZGF0YSBjYW5ub3QgYmUgc3BsaXQgYW55d2hlcmUuIFRoZSBQRFMgZmlsZXMgY29udGFpbnMgdHJl
ZQo+PiA+ICsgKiBzdHJ1Y3R1cmVzLiBCcmFjZXMgYXJlIHVzZWQgdG8gZW50ZXIvbGVhdmUgYSBs
ZXZlbCBvZiB0aGUgdHJlZSAoaW4gYSBKU09OCj4+ID4gKyAqIGZhc2hpb24pLiBQRFMgZmlsZXMg
Y2FuIG9ubHkgYmVlbiBzcGxpdCBiZXR3ZWVuIHJvb3Qgbm9kZXMuCj4+ID4gKyAqLwo+PiA+ICtp
bnQgd2Z4X3NlbmRfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1OCAqYnVmLCBzaXplX3QgbGVu
KQo+PiA+ICt7Cj4+ID4gKyAgICAgaW50IHJldDsKPj4gPiArICAgICBpbnQgc3RhcnQsIGJyYWNl
X2xldmVsLCBpOwo+PiA+ICsKPj4gPiArICAgICBzdGFydCA9IDA7Cj4+ID4gKyAgICAgYnJhY2Vf
bGV2ZWwgPSAwOwo+PiA+ICsgICAgIGlmIChidWZbMF0gIT0gJ3snKSB7Cj4+ID4gKyBkZXZfZXJy
KHdkZXYtPmRldiwgInZhbGlkIFBEUyBzdGFydCB3aXRoICd7Jy4gRGlkIHlvdSBmb3JnZXQgdG8K
Pj4gPiBjb21wcmVzcyBpdD9cbiIpOwo+PiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7
Cj4+ID4gKyAgICAgfQo+PiA+ICsgICAgIGZvciAoaSA9IDE7IGkgPCBsZW4gLSAxOyBpKyspIHsK
Pj4gPiArICAgICAgICAgICAgIGlmIChidWZbaV0gPT0gJ3snKQo+PiA+ICsgICAgICAgICAgICAg
ICAgICAgICBicmFjZV9sZXZlbCsrOwo+PiA+ICsgICAgICAgICAgICAgaWYgKGJ1ZltpXSA9PSAn
fScpCj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyYWNlX2xldmVsLS07Cj4+ID4gKyAgICAg
ICAgICAgICBpZiAoYnVmW2ldID09ICd9JyAmJiAhYnJhY2VfbGV2ZWwpIHsKPj4gPiArICAgICAg
ICAgICAgICAgICAgICAgaSsrOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoaSAtIHN0
YXJ0ICsgMSA+IFdGWF9QRFNfTUFYX1NJWkUpCj4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FRkJJRzsKPj4gPiArICAgICAgICAgICAgICAgICAgICAgYnVmW3N0YXJ0
XSA9ICd7JzsKPj4gPiArICAgICAgICAgICAgICAgICAgICAgYnVmW2ldID0gMDsKPj4gPiArICAg
ICAgICAgICAgICAgICAgICAgZGV2X2RiZyh3ZGV2LT5kZXYsICJzZW5kIFBEUyAnJXN9J1xuIiwg
YnVmICsgc3RhcnQpOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICBidWZbaV0gPSAnfSc7Cj4+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldCA9IGhpZl9jb25maWd1cmF0aW9uKHdkZXYsIGJ1
ZiArIHN0YXJ0LAo+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpIC0gc3RhcnQgKyAxKTsKPj4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKHJldCA+
IDApIHsKPj4gPiArIGRldl9lcnIod2Rldi0+ZGV2LCAiUERTIGJ5dGVzICVkIHRvICVkOiBpbnZh
bGlkIGRhdGEgKHVuc3VwcG9ydGVkCj4+ID4gb3B0aW9ucz8pXG4iLAo+PiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhcnQsIGkpOwo+PiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+PiA+ICsgICAgICAgICAgICAgICAgICAg
ICB9Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQgPT0gLUVUSU1FRE9VVCkgewo+
PiA+ICsgZGV2X2Vycih3ZGV2LT5kZXYsICJQRFMgYnl0ZXMgJWQgdG8gJWQ6IGNoaXAgZGlkbid0
IHJlcGx5IChjb3JydXB0ZWQKPj4gPiBmaWxlPylcbiIsCj4+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdGFydCwgaSk7Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPj4gPiArICAgICAgICAgICAgICAgICAgICAgfQo+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICBpZiAocmV0KSB7Cj4+ID4gKyBkZXZfZXJyKHdkZXYtPmRldiwg
IlBEUyBieXRlcyAlZCB0byAlZDogY2hpcCByZXR1cm5lZCBhbiB1bmtub3duCj4+ID4gZXJyb3Jc
biIsCj4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGFydCwgaSk7
Cj4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU87Cj4+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIH0KPj4gPiArICAgICAgICAgICAgICAgICAgICAgYnVmW2ldID0g
JywnOwo+PiA+ICsgICAgICAgICAgICAgICAgICAgICBzdGFydCA9IGk7Cj4+ID4gKyAgICAgICAg
ICAgICB9Cj4+ID4gKyAgICAgfQo+PiA+ICsgICAgIHJldHVybiAwOwo+PiA+ICt9Cj4+IAo+PiBJ
J20gbm90IHJlYWxseSBmb25kIG9mIGhhdmluZyB0aGlzIGtpbmQgb2YgQVNDSUkgYmFzZWQgcGFy
c2VyIGluIHRoZQo+PiBrZXJuZWwuIERvIHlvdSBoYXZlIGFuIGV4YW1wbGUgY29tcHJlc3NlZCBm
aWxlIHNvbWV3aGVyZT8KPgo+IEFuIGV4YW1wbGUgb2YgdW5jb21wcmVzc2VkIGNvbmZpZ3VyYXRp
b24gZmlsZSBjYW4gYmUgZm91bmQgaGVyZVsxXS4gT25jZQo+IGNvbXByZXNzZWQgd2l0aCBbMl0s
IHlvdSBnZXQ6Cj4KPiAgICAge2E6e2E6NCxiOjF9LGI6e2E6e2E6NCxiOjAsYzowLGQ6MCxlOkF9
LGI6e2E6NCxiOjAsYzowLGQ6MCxlOkJ9LGM6e2E6NCxiOjAsYzowLGQ6MCxlOkN9LGQ6e2E6NCxi
OjAsYzowLGQ6MCxlOkR9LGU6e2E6NCxiOjAsYzowLGQ6MCxlOkV9LGY6e2E6NCxiOjAsYzowLGQ6
MCxlOkZ9LGc6e2E6NCxiOjAsYzowLGQ6MCxlOkd9LGg6e2E6NCxiOjAsYzowLGQ6MCxlOkh9LGk6
e2E6NCxiOjAsYzowLGQ6MCxlOkl9LGo6e2E6NCxiOjAsYzowLGQ6MCxlOkp9LGs6e2E6NCxiOjAs
YzowLGQ6MCxlOkt9LGw6e2E6NCxiOjAsYzowLGQ6MSxlOkx9LG06e2E6NCxiOjAsYzowLGQ6MSxl
Ok19fSxjOnthOnthOjR9LGI6e2E6Nn0sYzp7YTo2LGM6MH0sZDp7YTo2fSxlOnthOjZ9LGY6e2E6
Nn19LGU6e2I6MCxjOjF9LGg6e2U6MCxhOjUwLGI6MCxkOjAsYzpbe2E6MSxiOlswLDAsMCwwLDAs
MF19LHthOjIsYjpbMCwwLDAsMCwwLDBdfSx7YTpbMyw5XSxiOlswLDAsMCwwLDAsMF19LHthOkEs
YjpbMCwwLDAsMCwwLDBdfSx7YTpCLGI6WzAsMCwwLDAsMCwwXX0se2E6W0MsRF0sYjpbMCwwLDAs
MCwwLDBdfSx7YTpFLGI6WzAsMCwwLDAsMCwwXX1dfSxqOnthOjAsYjowfX0KClNvIHdoYXQncyB0
aGUgZ3JhbmQgaWRlYSB3aXRoIHRoaXMgYnJhY2VzIGZvcm1hdD8gSSdtIG5vdCBnZXR0aW5nIGl0
LgoKVXN1YWxseSB0aGUgZHJpdmVycyBqdXN0IGNvbnNpZGVyIHRoaXMga2luZCBvZiBmaXJtd2Fy
ZSBjb25maWd1cmF0aW9uCmRhdGEgYXMgYSBiaW5hcnkgYmxvYiBhbmQgZHVtcCBpdCB0byB0aGUg
ZmlybXdhcmUsIHdpdGhvdXQga25vd2luZyB3aGF0CnRoZSBkYXRhIGNvbnRhaW5zLiBDYW4ndCB5
b3UgZG8gdGhlIHNhbWU/Cgo+PiBEb2VzIHRoZSBkZXZpY2Ugc3RpbGwgd29yayB3aXRob3V0IHRo
ZXNlIFBEUyBmaWxlcz8gSSBhc2sgYmVjYXVzZSBteQo+PiBzdWdnZXN0aW9uIGlzIHRvIHJlbW92
ZSB0aGlzIHBhcnQgYWx0b2dldGhlciBhbmQgcmV2aXNpdCBhZnRlciB0aGUKPj4gaW5pdGlhbCBk
cml2ZXIgaXMgbW92ZWQgdG8gZHJpdmVycy9uZXQvd2lyZWxlc3MuIEEgbG90IHNpbXBsZXIgdG8g
cmV2aWV3Cj4+IGNvbXBsZXggZmVhdHVyZXMgc2VwYXJhdGVseS4KPgo+IEkgdGhpbmsgd2Ugd2ls
bCBiZSBhYmxlIHRvIGNvbW11bmljYXRlIHdpdGggdGhlIGNoaXAuIEhvd2V2ZXIsIHRoZSBjaGlw
IHdvbid0Cj4gaGF2ZSBhbnkgYW50ZW5uYSBwYXJhbWV0ZXJzLiBUaHVzLCBJIHRoaW5rIHRoZSBS
RiB3b24ndCB3b3JrIHByb3Blcmx5LgoKUkYgbm90IHdvcmtpbmcgcHJvcGVybHkgaXMgYmFkLCBz
byB3ZSBjYW4ndCBkcm9wIFBEUyBmaWxlcyBmb3Igbm93LiBUb28KYmFkLCBpdCB3b3VsZCBoYXZl
IGJlZW4gc28gbXVjaCBmYXN0ZXIgaWYgd2Ugd291bGQgbm90IG5lZWQgdG8gd29ycnkKYWJvdXQg
UERTIGZpbGVzIGR1cmluZyByZXZpZXcuCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
