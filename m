Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 917FF2A331
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 08:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CEF587913;
	Sat, 25 May 2019 06:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0FJ-iSmNWvKv; Sat, 25 May 2019 06:39:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89C5E8689B;
	Sat, 25 May 2019 06:39:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9DB1BF2FE
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 06:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7825388C96
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 06:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wW98zDq-zAz for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 06:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0BFD188C88
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 06:39:27 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A65D8E51DCCD4520424E;
 Sat, 25 May 2019 14:39:21 +0800 (CST)
Received: from [127.0.0.1] (10.177.96.96) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Sat, 25 May 2019
 14:39:19 +0800
Subject: =?UTF-8?Q?Re:_[PATCH_net]_staging:_Remove_set_but_not_used_variable?=
 =?UTF-8?B?IOKAmHN0YXR1c+KAmQ==?=
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190525042642.78482-1-maowenan@huawei.com>
 <20190525050113.GB18684@kroah.com>
From: maowenan <maowenan@huawei.com>
Message-ID: <68a66947-928c-d2e6-be2b-aa412613f90c@huawei.com>
Date: Sat, 25 May 2019 14:39:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190525050113.GB18684@kroah.com>
X-Originating-IP: [10.177.96.96]
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE5LzUvMjUgMTM6MDEsIEdyZWcgS0ggd3JvdGU6Cj4gT24gU2F0LCBNYXkgMjUsIDIw
MTkgYXQgMTI6MjY6NDJQTSArMDgwMCwgTWFvIFdlbmFuIHdyb3RlOgo+PiBGaXhlcyBnY2MgJy1X
dW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnIHdhcm5pbmc6Cj4+Cj4+IGRyaXZlcnMvc3RhZ2luZy9r
cGMyMDAwL2twY19zcGkvc3BpX2RyaXZlci5jOiBJbiBmdW5jdGlvbgo+PiDigJhrcF9zcGlfdHJh
bnNmZXJfb25lX21lc3NhZ2XigJk6Cj4+IGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19zcGkv
c3BpX2RyaXZlci5jOjI4Mjo5OiB3YXJuaW5nOiB2YXJpYWJsZQo+PiDigJhzdGF0dXPigJkgc2V0
IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4gICAgICBpbnQgc3Rh
dHVzID0gMDsKPj4gICAgICAgICAgXn5+fn5+Cj4+IFRoZSB2YXJpYWJsZSAnc3RhdHVzJyBpcyBu
b3QgdXNlZCBhbnkgbW9yZSwgcmVtdmUgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hbyBXZW5h
biA8bWFvd2VuYW5AaHVhd2VpLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGNfc3BpL3NwaV9kcml2ZXIuYyB8IDMgLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxl
dGlvbnMoLSkKPiAKPiBXaGF0IGlzIFtQQVRDSCBuZXRdIGluIHRoZSBzdWJqZWN0IGZvcj8gIFRo
aXMgaXMgbm90IGEgbmV0d29ya2luZyBkcml2ZXIKPiA6KApTb3JyeSwgdGhpcyBpcyBteSBtaXN0
YWtlLgo+IAo+IAo+IC4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
