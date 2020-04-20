Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D661B096E
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 14:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF3BC87AFF;
	Mon, 20 Apr 2020 12:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rcdXPbOq9g5M; Mon, 20 Apr 2020 12:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6126387A00;
	Mon, 20 Apr 2020 12:35:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FB161BF407
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 12:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5C8EB87A62
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 12:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mDyzyTjRuaNf for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 12:35:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14D2F87A60
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 12:35:05 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 42114F8280CD990CF8CC;
 Mon, 20 Apr 2020 20:35:01 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Mon, 20 Apr 2020
 20:34:59 +0800
Subject: Re: [PATCH] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200420123755.4353-1-yanaijie@huawei.com>
 <20200420121900.GD2659@kadam>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <c6b155a6-28ae-e0f9-b866-4d17e8a45706@huawei.com>
Date: Mon, 20 Apr 2020 20:34:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200420121900.GD2659@kadam>
X-Originating-IP: [10.166.213.7]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 nishkadg.linux@gmail.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgrU2iAyMDIwLzQvMjAgMjA6MTksIERhbiBDYXJwZW50ZXIg0LS1wDoKPiBPbiBNb24sIEFwciAy
MCwgMjAyMCBhdCAwODozNzo1NVBNICswODAwLCBKYXNvbiBZYW4gd3JvdGU6Cj4+IEZpeCB0aGUg
Zm9sbG93aW5nIGNvY2NpY2hlY2sgd2FybmluZzoKPj4KPj4gZHJpdmVycy9zdGFnaW5nL210NzYy
MS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmM6MjIzOjE0LTM2OiBXQVJOSU5HOiBVc2UKPj4gY29y
cmVjdCBwb2ludGVyIHR5cGUgYXJndW1lbnQgZm9yIHNpemVvZgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvc3Rh
Z2luZy9tdDc2MjEtcGluY3RybC9waW5jdHJsLXJ0Mjg4MC5jIHwgMiArLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL210NzYyMS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmMgYi9kcml2ZXJz
L3N0YWdpbmcvbXQ3NjIxLXBpbmN0cmwvcGluY3RybC1ydDI4ODAuYwo+PiBpbmRleCBkMGYwNjc5
MGQzOGYuLjg4ODNmMmE4ZWE1NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL210NzYy
MS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL210NzYy
MS1waW5jdHJsL3BpbmN0cmwtcnQyODgwLmMKPj4gQEAgLTIyMCw3ICsyMjAsNyBAQCBzdGF0aWMg
aW50IHJ0Mjg4MF9waW5tdXhfaW5kZXgoc3RydWN0IHJ0Mjg4MF9wcml2ICpwKQo+PiAgIAkvKiBh
bGxvY2F0ZSBvdXIgZnVuY3Rpb24gYW5kIGdyb3VwIG1hcHBpbmcgaW5kZXggYnVmZmVycyAqLwo+
PiAgIAlmID0gcC0+ZnVuYyA9IGRldm1fa2NhbGxvYyhwLT5kZXYsCj4+ICAgCQkJCSAgIHAtPmZ1
bmNfY291bnQsCj4+IC0JCQkJICAgc2l6ZW9mKHN0cnVjdCBydDI4ODBfcG14X2Z1bmMpLAo+PiAr
CQkJCSAgIHNpemVvZihzdHJ1Y3QgcnQyODgwX3BteF9mdW5jICopLAo+IAo+IFllcy4gIFRoaXMg
Zml4ZXMgYSBidWcuICBXZSB3ZXJlIGFsbG9jYXRpbmcgdG9vIG11Y2ggZGF0YS4gIEJ1dCB0aGUK
PiBwcmVmZXJlZCBzdHlsZSBpczoKPiAKPiAJCQkJc2l6ZW9mKCpwLT5mdW5jKSwKPiAKPiBQbGVh
c2UgY291bGQgeW91IHJlc2VuZD8KPiAKClN1cmUsIEkgd2lsbCBjb29rIGEgbmV3IG9uZS4KCj4g
cmVnYXJkcywKPiBkYW4gY2FycGVudGVyCj4gCj4gCj4gLgo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
