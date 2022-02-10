Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 028464B102D
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Feb 2022 15:21:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3446340977;
	Thu, 10 Feb 2022 14:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FPIzso91m-bm; Thu, 10 Feb 2022 14:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADDA54091D;
	Thu, 10 Feb 2022 14:21:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A60081BF2AA
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 14:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A1F1382B08
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 14:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjX5arKUxHlV for <devel@linuxdriverproject.org>;
 Thu, 10 Feb 2022 14:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96F498299E
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 14:21:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 79F70B8253C;
 Thu, 10 Feb 2022 14:21:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B627C004E1;
 Thu, 10 Feb 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644502862;
 bh=OPamVJysT9X+tCU5hCEJCZxcXEaQ2x6awutvO1oiFc0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=EtaQxZJqyN2b4cGyGEWmjEPZuXiBpcBqNw+tfobaM4s25xnsh1uVkaz8b/0QVQHN/
 6ppuT2sr3SCNunBk0hGU75PyTWD2a3gLyIQM9rX6MEmu19FCOpdSw9jKU8kp/Xo7Pn
 RsRA6XKSx7QPdMKqfx9i4wuLu72nEtlgalFk7lcW76lv5L2H6Y7kA9O+itqk8zlDMq
 MGtINmZnk9nW900s6SVWuh89+uvvrXED/we4bdwIkDzxt7BENd03ASECMYpH+RTC7o
 i8v3p1EJr9q4RuFt+B8u7MptkfKJm0NketNO01xy9VG6mq52J/rWE2UL/uGg04vsU4
 R2C1BJC/A7R6g==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 05/24] wfx: add main.c/main.h
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-6-Jerome.Pouiller@silabs.com>
 <2898137.rlL8Y2EFai@pc-42>
Date: Thu, 10 Feb 2022 16:20:56 +0200
In-Reply-To: <2898137.rlL8Y2EFai@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Wed, 26 Jan 2022 09:20:05 +0100")
Message-ID: <87r18a3irb.fsf@kernel.org>
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
IEhpIEthbGxlLAo+Cj4gT24gVHVlc2RheSAxMSBKYW51YXJ5IDIwMjIgMTg6MTQ6MDUgQ0VUIEpl
cm9tZSBQb3VpbGxlciB3cm90ZToKPj4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxs
ZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvbmV0L3dp
cmVsZXNzL3NpbGFicy93ZngvbWFpbi5jIHwgNDg1ICsrKysrKysrKysrKysrKysrKysrKysrKysK
Pj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvbWFpbi5oIHwgIDQyICsrKwo+PiAg
MiBmaWxlcyBjaGFuZ2VkLCA1MjcgaW5zZXJ0aW9ucygrKQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvbWFpbi5jCj4+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9tYWluLmgKPj4gCj4gWy4uLl0K
Pj4gKy8qIFRoZSBkZXZpY2UgbmVlZHMgZGF0YSBhYm91dCB0aGUgYW50ZW5uYSBjb25maWd1cmF0
aW9uLiBUaGlzIGluZm9ybWF0aW9uIGluCj4+ICsgKiBwcm92aWRlZCBieSBQRFMgKFBsYXRmb3Jt
IERhdGEgU2V0LCB0aGlzIGlzIHRoZSB3b3JkaW5nIHVzZWQgaW4gV0YyMDAKPj4gKyAqIGRvY3Vt
ZW50YXRpb24pIGZpbGVzLiBGb3IgaGFyZHdhcmUgaW50ZWdyYXRvcnMsIHRoZSBmdWxsIHByb2Nl
c3MgdG8gY3JlYXRlCj4+ICsgKiBQRFMgZmlsZXMgaXMgZGVzY3JpYmVkIGhlcmU6Cj4+ICsgKiAg
IGh0dHBzOmdpdGh1Yi5jb20vU2lsaWNvbkxhYnMvd2Z4LWZpcm13YXJlL2Jsb2IvbWFzdGVyL1BE
Uy9SRUFETUUubWQKPj4gKyAqCj4+ICsgKiBUaGUgUERTIGZpbGUgaXMgYW4gYXJyYXkgb2YgVGlt
ZS1MZW5ndGgtVmFsdWUgc3RydWN0cy4KPj4gKyAqLwo+PiArIGludCB3Znhfc2VuZF9wZHMoc3Ry
dWN0IHdmeF9kZXYgKndkZXYsIHU4ICpidWYsIHNpemVfdCBsZW4pCj4+ICt7Cj4+ICsJaW50IHJl
dCwgY2h1bmtfdHlwZSwgY2h1bmtfbGVuLCBjaHVua19udW0gPSAwOwo+PiArCj4+ICsJaWYgKCpi
dWYgPT0gJ3snKSB7Cj4+ICsJCWRldl9lcnIod2Rldi0+ZGV2LCAiUERTOiBtYWxmb3JtZWQgZmls
ZSAobGVnYWN5IGZvcm1hdD8pXG4iKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiAr
CXdoaWxlIChsZW4gPiAwKSB7Cj4+ICsJCWNodW5rX3R5cGUgPSBnZXRfdW5hbGlnbmVkX2xlMTYo
YnVmICsgMCk7Cj4+ICsJCWNodW5rX2xlbiA9IGdldF91bmFsaWduZWRfbGUxNihidWYgKyAyKTsK
Pj4gKwkJaWYgKGNodW5rX2xlbiA+IGxlbikgewo+PiArCQkJZGV2X2Vycih3ZGV2LT5kZXYsICJQ
RFM6JWQ6IGNvcnJ1cHRlZCBmaWxlXG4iLCBjaHVua19udW0pOwo+PiArCQkJcmV0dXJuIC1FSU5W
QUw7Cj4+ICsJCX0KPj4gKwkJaWYgKGNodW5rX3R5cGUgIT0gV0ZYX1BEU19UTFZfVFlQRSkgewo+
PiArCQkJZGV2X2luZm8od2Rldi0+ZGV2LCAiUERTOiVkOiBza2lwIHVua25vd24gZGF0YVxuIiwg
Y2h1bmtfbnVtKTsKPj4gKwkJCWdvdG8gbmV4dDsKPj4gKwkJfQo+PiArCQlpZiAoY2h1bmtfbGVu
ID4gV0ZYX1BEU19NQVhfQ0hVTktfU0laRSkKPj4gKyBkZXZfd2Fybih3ZGV2LT5kZXYsICJQRFM6
JWQ6IHVuZXhwZWN0bHkgbGFyZ2UgY2h1bmtcbiIsCj4+IGNodW5rX251bSk7Cj4+ICsJCWlmIChi
dWZbNF0gIT0gJ3snIHx8IGJ1ZltjaHVua19sZW4gLSAxXSAhPSAnfScpCj4+ICsgZGV2X3dhcm4o
d2Rldi0+ZGV2LCAiUERTOiVkOiB1bmV4cGVjdGVkIGNvbnRlbnRcbiIsIGNodW5rX251bSk7Cj4+
ICsKPj4gKwkJcmV0ID0gd2Z4X2hpZl9jb25maWd1cmF0aW9uKHdkZXYsIGJ1ZiArIDQsIGNodW5r
X2xlbiAtIDQpOwo+PiArCQlpZiAocmV0ID4gMCkgewo+PiArIGRldl9lcnIod2Rldi0+ZGV2LCAi
UERTOiVkOiBpbnZhbGlkIGRhdGEgKHVuc3VwcG9ydGVkCj4+IG9wdGlvbnM/KVxuIiwKPj4gKwkJ
CQljaHVua19udW0pOwo+PiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJCX0KPj4gKwkJaWYgKHJl
dCA9PSAtRVRJTUVET1VUKSB7Cj4+ICsgZGV2X2Vycih3ZGV2LT5kZXYsICJQRFM6JWQ6IGNoaXAg
ZGlkbid0IHJlcGx5IChjb3JydXB0ZWQKPj4gZmlsZT8pXG4iLAo+PiArCQkJCWNodW5rX251bSk7
Cj4+ICsJCQlyZXR1cm4gcmV0Owo+PiArCQl9Cj4+ICsJCWlmIChyZXQpIHsKPj4gKyBkZXZfZXJy
KHdkZXYtPmRldiwgIlBEUzolZDogY2hpcCByZXR1cm5lZCBhbiB1bmtub3duIGVycm9yXG4iLAo+
PiBjaHVua19udW0pOwo+PiArCQkJcmV0dXJuIC1FSU87Cj4+ICsJCX0KPj4gK25leHQ6Cj4+ICsJ
CWNodW5rX251bSsrOwo+PiArCQlsZW4gLT0gY2h1bmtfbGVuOwo+PiArCQlidWYgKz0gY2h1bmtf
bGVuOwo+PiArCX0KPj4gKwlyZXR1cm4gMDsKPj4gK30KPgo+IEthbGxlLCBpcyB0aGlzIGZ1bmN0
aW9uIHdoYXQgeW91IGV4cGVjdGVkPyBJZiBpdCBpcyByaWdodCBmb3IgeW91LCBJIGFtCj4gZ29p
bmcgdG8gc2VuZCBpdCB0byB0aGUgc3RhZ2luZyB0cmVlLgoKTG9va3MgYmV0dGVyLCBidXQgSSBk
b24ndCBnZXQgd2h5ICd7JyBhbmQgJ30nIGFyZSBzdGlsbCBuZWVkZWQuIEFoLCBkb2VzCnRoZSBm
aXJtd2FyZSByZXF1aXJlIHRvIGhhdmUgdGhlbT8KCi0tIApodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2lyZWxlc3Mud2lr
aS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hl
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
