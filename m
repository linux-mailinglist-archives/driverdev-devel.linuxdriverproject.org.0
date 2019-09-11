Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69679AF875
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 11:04:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0B41857FB;
	Wed, 11 Sep 2019 09:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KbiqZTtIQ-0R; Wed, 11 Sep 2019 09:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9710A85ADC;
	Wed, 11 Sep 2019 09:04:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BA571BF23B
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98E0620501
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1sM8YyzbH7LV for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 09:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
 [217.26.49.172])
 by silver.osuosl.org (Postfix) with ESMTPS id 3829B20484
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 09:04:46 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7yYJ-000Dkw-Uz; Wed, 11 Sep 2019 11:04:39 +0200
Received: from [213.55.220.251] (helo=[100.66.103.90])
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7yYJ-000NhF-QB; Wed, 11 Sep 2019 11:04:39 +0200
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] Staging: octeon: Avoid several usecases of strcpy
Date: Wed, 11 Sep 2019 11:04:38 +0200
Message-Id: <39D8B984-479C-42D5-8431-9FF7BD3A96D6@volery.com>
References: <20190911084956.GH15977@kadam>
In-Reply-To: <20190911084956.GH15977@kadam>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Mailer: iPhone Mail (17A5831c)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, davem@davemloft.net,
 linux-kernel@vger.kernel.org, aaro.koskinen@iki.fi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cgo+IE9uIDExIFNlcCAyMDE5LCBhdCAxMDo1MiwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiDvu79PbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAwODoy
Mzo1OUFNICswMjAwLCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+PiBzdHJjcHkgd2FzIHVzZWQgbXVs
dGlwbGUgdGltZXMgaW4gc3RyY3B5IHRvIHdyaXRlIGludG8gZGV2LT5uYW1lLgo+PiBJIHJlcGxh
Y2VkIHRoZW0gd2l0aCBzdHJzY3B5Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogU2FuZHJvIFZvbGVy
eSA8c2FuZHJvQHZvbGVyeS5jb20+Cj4+IC0tLQo+PiBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0
aGVybmV0LmMgfCAxNiArKysrKysrKy0tLS0tLS0tCj4+IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL29jdGVvbi9ldGhlcm5ldC5jIGIvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5j
Cj4+IGluZGV4IDg4ODk0OTRhZGYxZi4uY2Y4ZTlhMjNlYmY5IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL29j
dGVvbi9ldGhlcm5ldC5jCj4+IEBAIC03ODQsNyArNzg0LDcgQEAgc3RhdGljIGludCBjdm1fb2N0
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgICAgICAgICAgcHJpdi0+
aW1vZGUgPSBDVk1YX0hFTFBFUl9JTlRFUkZBQ0VfTU9ERV9ESVNBQkxFRDsKPj4gICAgICAgICAg
ICBwcml2LT5wb3J0ID0gQ1ZNWF9QSVBfTlVNX0lOUFVUX1BPUlRTOwo+PiAgICAgICAgICAgIHBy
aXYtPnF1ZXVlID0gLTE7Cj4+IC0gICAgICAgICAgICBzdHJjcHkoZGV2LT5uYW1lLCAicG93JWQi
KTsKPj4gKyAgICAgICAgICAgIHN0cnNjcHkoZGV2LT5uYW1lLCAicG93JWQiLCBzaXplb2YoZGV2
LT5uYW1lKSk7Cj4gCj4gSXMgdGhlcmUgYSBwcm9ncmFtIHdoaWNoIGlzIGdlbmVyYXRpbmcgYSB3
YXJuaW5nIGZvciB0aGlzIGNvZGU/ICBXZSBrbm93Cj4gdGhhdCAicG93JWQiIGlzIDYgY2hhcmFj
dGVycyBhbmQgc3RhdGljIGFuYWx5c2lzIHRvb2xzIGNhbiB1bmRlcnN0YW5kCj4gdGhpcyBjb2Rl
IGZpbmUgc28gd2Uga25vdyBpdCdzIHNhZmUuCgpXZWxsIEkgd2FzIGNvbmZ1c2VkIHRvbyBidXQg
Y2hlY2twYXRjaCBjb21wbGFpbmVkIGFib3V0IAppdCBzbyBJIGZpZ3VyZWQgSSdkIGNsZWFuIGl0
IHVwIHF1aWNrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
