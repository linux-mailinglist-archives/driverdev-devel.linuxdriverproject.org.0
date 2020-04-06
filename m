Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FB019F796
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 16:07:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4CC623449;
	Mon,  6 Apr 2020 14:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DL2TdZVetBgJ; Mon,  6 Apr 2020 14:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A27E6233B0;
	Mon,  6 Apr 2020 14:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21A771BF3D7
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E65D85F98
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNf4GWt2Imhd for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 14:07:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D1BB485F90
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 14:07:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B81F23741;
 Mon,  6 Apr 2020 14:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586182063;
 bh=wDxIRPMlhMe/o1pXdj51xgZSnzW2C4Zp3pSFgaaLnsE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VdjajAAUE4J3O7+IVXlo5tfLqdCO8wTdoKXGvy5lx2O7gihzAT7uf/bOGEuk0lIrj
 NYSt5h8JaO2Xqa2xRnqtr1vhbdg+krp7nuAPBNVNuo14ZTWmhzFAZ3lPoVI31VZJF8
 7WxHZNBCSW4IiMkw2uJwxMZimg8dN4FZjPB9++44=
Date: Mon, 6 Apr 2020 16:07:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wang Hai <wanghai38@huawei.com>
Subject: Re: [PATCH] staging: rtl8192u: Remove some set but not used variables
Message-ID: <20200406140735.GA26701@kroah.com>
References: <1586261264-37576-1-git-send-email-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586261264-37576-1-git-send-email-wanghai38@huawei.com>
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
Cc: devel@driverdev.osuosl.org, mst@redhat.com, c.cantanheide@gmail.com,
 linux-kernel@vger.kernel.org, nishkadg.linux@gmail.com, mchehab@kernel.org,
 navid.emamdoost@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBcHIgMDcsIDIwMjAgYXQgMDg6MDc6NDRBTSAtMDQwMCwgV2FuZyBIYWkgd3JvdGU6
Cj4gRml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgo+IAo+IGRy
aXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfY29yZS5jOiBJbiBmdW5jdGlvbiBydGw4MTky
X2hhcmRfZGF0YV94bWl0Ogo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfY29yZS5j
OjkwNTo2OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhyZXTigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1
bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgxOTJV
X2NvcmUuYzogSW4gZnVuY3Rpb24gcnRsODE5Ml9jb21taXQ6Cj4gZHJpdmVycy9zdGFnaW5nL3J0
bDgxOTJ1L3I4MTkyVV9jb3JlLmM6MzQxODo2OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhyZXNldF9z
dGF0dXPigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAK
PiBGaXhlczogOGZjODU5OGU2MWY2ICgiU3RhZ2luZzogQWRkZWQgUmVhbHRlayBydGw4MTkydSBk
cml2ZXIgdG8gc3RhZ2luZyIpCj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3
ZWkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFdhbmcgSGFpIDx3YW5naGFpMzhAaHVhd2VpLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4MTkyVV9jb3JlLmMgfCA2ICsrLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgxOTJVX2NvcmUuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfY29yZS5jCj4gaW5kZXggZmNmYjkwMi4uYmIy
ODY3MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgxOTJVX2NvcmUu
Ywo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfY29yZS5jCj4gQEAgLTkw
Miw3ICs5MDIsNiBAQCBzdGF0aWMgdm9pZCBydGw4MTkyX2hhcmRfZGF0YV94bWl0KHN0cnVjdCBz
a19idWZmICpza2IsIHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4gIAkJCQkgICBpbnQgcmF0ZSkK
PiAgewo+ICAJc3RydWN0IHI4MTkyX3ByaXYgKnByaXYgPSAoc3RydWN0IHI4MTkyX3ByaXYgKilp
ZWVlODAyMTFfcHJpdihkZXYpOwo+IC0JaW50IHJldDsKPiAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7
Cj4gIAlzdHJ1Y3QgY2JfZGVzYyAqdGNiX2Rlc2MgPSAoc3RydWN0IGNiX2Rlc2MgKikoc2tiLT5j
YiArIE1BWF9ERVZfQUREUl9TSVpFKTsKPiAgCXU4IHF1ZXVlX2luZGV4ID0gdGNiX2Rlc2MtPnF1
ZXVlX2luZGV4Owo+IEBAIC05MTUsNyArOTE0LDcgQEAgc3RhdGljIHZvaWQgcnRsODE5Ml9oYXJk
X2RhdGFfeG1pdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+
ICAJKihzdHJ1Y3QgbmV0X2RldmljZSAqKikoc2tiLT5jYikgPSBkZXY7Cj4gIAl0Y2JfZGVzYy0+
YlR4RW5hYmxlRndDYWxjRHVyID0gMTsKPiAgCXNrYl9wdXNoKHNrYiwgcHJpdi0+aWVlZTgwMjEx
LT50eF9oZWFkcm9vbSk7Cj4gLQlyZXQgPSBydGw4MTkyX3R4KGRldiwgc2tiKTsKPiArCXJ0bDgx
OTJfdHgoZGV2LCBza2IpOwoKU2hvdWxkbid0IHdlIGRvIHNvbWV0aGluZyBhYm91dCBhbiBlcnJv
ciBpZiB0aGF0IGZ1bmN0aW9uIHJldHVybnMgYW4KZXJyb3I/ICBXaHkgYXJlIHdlIGlnbm9yaW5n
IGl0PwoKPiAgCj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwcml2LT50eF9sb2NrLCBmbGFn
cyk7Cj4gIH0KPiBAQCAtMzQxNSw3ICszNDE0LDYgQEAgaW50IHJ0bDgxOTJfZG93bihzdHJ1Y3Qg
bmV0X2RldmljZSAqZGV2KQo+ICB2b2lkIHJ0bDgxOTJfY29tbWl0KHN0cnVjdCBuZXRfZGV2aWNl
ICpkZXYpCj4gIHsKPiAgCXN0cnVjdCByODE5Ml9wcml2ICpwcml2ID0gaWVlZTgwMjExX3ByaXYo
ZGV2KTsKPiAtCWludCByZXNldF9zdGF0dXMgPSAwOwo+ICAKPiAgCWlmIChwcml2LT51cCA9PSAw
KQo+ICAJCXJldHVybjsKPiBAQCAtMzQyNyw3ICszNDI1LDcgQEAgdm9pZCBydGw4MTkyX2NvbW1p
dChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KQo+ICAJaWVlZTgwMjExX3NvZnRtYWNfc3RvcF9wcm90
b2NvbChwcml2LT5pZWVlODAyMTEpOwo+ICAKPiAgCXJ0bDgxOTJfcnR4X2Rpc2FibGUoZGV2KTsK
PiAtCXJlc2V0X3N0YXR1cyA9IF9ydGw4MTkyX3VwKGRldik7Cj4gKwlfcnRsODE5Ml91cChkZXYp
OwoKU2FtZSBoZXJlLCBzaG91bGQgdGhhdCByZWFsbHkgYmUgaWdub3JlZD8KCnRoYW5rcywKCmdy
ZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
