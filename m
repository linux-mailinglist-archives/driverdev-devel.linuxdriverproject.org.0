Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DDF1BBDBD
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 14:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F54086427;
	Tue, 28 Apr 2020 12:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNk97U_6RPa2; Tue, 28 Apr 2020 12:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B96284837;
	Tue, 28 Apr 2020 12:40:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86AF31BF32A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82FEB84921
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0CC6rQ3l179B for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 12:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3649B84837
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 12:40:01 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8BC8EF9C70D98CA403CF;
 Tue, 28 Apr 2020 20:39:57 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Tue, 28 Apr 2020
 20:39:51 +0800
Subject: Re: [PATCH 2/7] staging: rtl8723bs: os_dep: remove set but not used
 'size'
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200427032342.27211-1-yanaijie@huawei.com>
 <20200427032342.27211-3-yanaijie@huawei.com>
 <20200428122853.GB1253850@kroah.com>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <a586bc5f-d7af-c1cc-8213-b63639061947@huawei.com>
Date: Tue, 28 Apr 2020 20:39:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200428122853.GB1253850@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Hulk Robot <hulkci@huawei.com>,
 linux-kernel@vger.kernel.org, wambui.karugax@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgrlnKggMjAyMC80LzI4IDIwOjI4LCBHcmVnIEtIIOWGmemBkzoKPiBPbiBNb24sIEFwciAyNywg
MjAyMCBhdCAxMToyMzozN0FNICswODAwLCBKYXNvbiBZYW4gd3JvdGU6Cj4+IEFuZCBhbHNvIHJl
bW92ZSB0aGUgTlVMTCBjaGVjayBiZWZvcmUga2ZyZWUoKSBiZWNhdXNlIGtmcmVlKCkgY2FuIGhh
bmRsZQo+PiBOVUxMIHBvaW50ZXJzIGNvcnJlY3RseS4KPj4KPj4gRml4IHRoZSBmb2xsb3dpbmcg
Z2NjIHdhcm5pbmc6Cj4+Cj4+IGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3Rs
X2NmZzgwMjExLmM6MTU3OjY6IHdhcm5pbmc6Cj4+IHZhcmlhYmxlIOKAmHNpemXigJkgc2V0IGJ1
dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4gICAgdTMyIHNpemUgPSAw
Owo+PiAgICAgICAgXn5+fgo+Pgo+PiBSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1
YXdlaS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNv
bT4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAvaW9jdGxfY2Zn
ODAyMTEuYyB8IDExIC0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDExIGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAv
aW9jdGxfY2ZnODAyMTEuYyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3Rs
X2NmZzgwMjExLmMKPj4gaW5kZXggMWJhODVhNDNmMDVhLi5iMDM3ODY4ZmJmMjIgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3RsX2NmZzgwMjExLmMK
Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAvaW9jdGxfY2ZnODAyMTEu
Ywo+PiBAQCAtMTU0LDE3ICsxNTQsNiBAQCBzdGF0aWMgc3RydWN0IGllZWU4MDIxMV9zdXBwb3J0
ZWRfYmFuZCAqcnR3X3NwdF9iYW5kX2FsbG9jKAo+PiAgIAo+PiAgIHN0YXRpYyB2b2lkIHJ0d19z
cHRfYmFuZF9mcmVlKHN0cnVjdCBpZWVlODAyMTFfc3VwcG9ydGVkX2JhbmQgKnNwdF9iYW5kKQo+
PiAgIHsKPj4gLQl1MzIgc2l6ZSA9IDA7Cj4+IC0KPj4gLQlpZiAoIXNwdF9iYW5kKQo+PiAtCQly
ZXR1cm47Cj4+IC0KPj4gLQlpZiAoc3B0X2JhbmQtPmJhbmQgPT0gTkw4MDIxMV9CQU5EXzJHSFop
Cj4+IC0Jewo+PiAtCQlzaXplID0gc2l6ZW9mKHN0cnVjdCBpZWVlODAyMTFfc3VwcG9ydGVkX2Jh
bmQpCj4+IC0JCQkrIHNpemVvZihzdHJ1Y3QgaWVlZTgwMjExX2NoYW5uZWwpKlJUV18yR19DSEFO
TkVMU19OVU0KPj4gLQkJCSsgc2l6ZW9mKHN0cnVjdCBpZWVlODAyMTFfcmF0ZSkqUlRXX0dfUkFU
RVNfTlVNOwo+PiAtCX0KPj4gICAJa2ZyZWUoc3B0X2JhbmQpOwo+PiAgIH0KPiAKPiBUaGlzIGZ1
bmN0aW9uIGNhbiBub3cgYmUgcmVtb3ZlZCBhbmQgcmVwbGFjZWQgd2l0aCB0aGUgY2FsbCB0byBr
ZnJlZSgpLAo+IHJpZ2h0PyAgQ2FuIHlvdSBzZW5kIGEgZm9sbG93LW9uIHBhdGNoIHRvIGRvIHRo
YXQ/Cj4gCgpTdXJlLgoKPiB0aGFua3MsCj4gCj4gZ3JlZyBrLWgKPiAKPiAuCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
