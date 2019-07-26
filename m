Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2AE76152
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 10:51:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3EE582C9C8;
	Fri, 26 Jul 2019 08:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0PDZzRTGeDH0; Fri, 26 Jul 2019 08:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2B7D26FD7;
	Fri, 26 Jul 2019 08:51:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24C711BF3F6
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 08:51:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DD03851E0
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 08:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fmgDQD3tf1aC for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 08:51:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E77E850ED
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 08:51:34 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F190461901E9F1A5154E;
 Fri, 26 Jul 2019 16:51:30 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 26 Jul 2019 16:51:29 +0800
Subject: Re: [PATCH -next] staging: vc04_services: fix used-but-set-variable
 warning
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
 <20190725144913.GC29688@kroah.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <afc8b261-3832-2c4f-a3e0-d1b4f98ffb61@huawei.com>
Date: Fri, 26 Jul 2019 16:51:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190725144913.GC29688@kroah.com>
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, inf.braun@fau.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ck9uIDIwMTkvNy8yNSAyMjo0OSwgR3JlZyBLSCB3cm90ZToKPiBPbiBUaHUsIEp1bCAyNSwgMjAx
OSBhdCAxMDoyNzoxNlBNICswODAwLCBZdWVIYWliaW5nIHdyb3RlOgo+PiB1c2UgdmFyaWFibGVz
ICdsb2NhbF9lbnRpdHlfdWMnIGFuZCAnbG9jYWxfdWMnLAo+PiBtdXRlIGdjYyB1c2VkLWJ1dC1z
ZXQtdmFyaWFibGUgd2FybmluZzoKPj4KPj4gZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMv
aW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYzogSW4gZnVuY3Rpb24gdmNoaXFfcmVsZWFz
ZV9pbnRlcm5hbDoKPj4gZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3Zj
aGlxX2FybS92Y2hpcV9hcm0uYzoyODI3OjE2OiB3YXJuaW5nOgo+PiAgdmFyaWFibGUgbG9jYWxf
ZW50aXR5X3VjIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+
IGRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFf
YXJtLmM6MjgyNzo2OiB3YXJuaW5nOgo+PiAgdmFyaWFibGUgbG9jYWxfdWMgc2V0IGJ1dCBub3Qg
dXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4KPj4gUmVwb3J0ZWQtYnk6IEh1bGsg
Um9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5
dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2Vy
dmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYyB8IDYgKystLS0tCj4+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92
Y2hpcV9hcm0uYyBiL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hp
cV9hcm0vdmNoaXFfYXJtLmMKPj4gaW5kZXggY2M0MzgzZC4uMDRlNjQyNyAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hp
cV9hcm0uYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2Uv
dmNoaXFfYXJtL3ZjaGlxX2FybS5jCj4+IEBAIC0yODYxLDE1ICsyODYxLDEzIEBAIHZjaGlxX3Jl
bGVhc2VfaW50ZXJuYWwoc3RydWN0IHZjaGlxX3N0YXRlICpzdGF0ZSwgc3RydWN0IHZjaGlxX3Nl
cnZpY2UgKnNlcnZpY2UpCj4+ICAJCX0gZWxzZSB7Cj4+ICAJCQl2Y2hpcV9sb2dfaW5mbyh2Y2hp
cV9zdXNwX2xvZ19sZXZlbCwKPj4gIAkJCQkiJXMgJXMgY291bnQgJWQsIHN0YXRlIGNvdW50ICVk
IC0gc3VzcGVuZGluZyIsCj4+IC0JCQkJX19mdW5jX18sIGVudGl0eSwgKmVudGl0eV91YywKPj4g
LQkJCQlhcm1fc3RhdGUtPnZpZGVvY29yZV91c2VfY291bnQpOwo+PiArCQkJCV9fZnVuY19fLCBl
bnRpdHksIGxvY2FsX2VudGl0eV91YywgbG9jYWxfdWMpOwo+PiAgCQkJdmNoaXFfYXJtX3Zjc3Vz
cGVuZChzdGF0ZSk7Cj4+ICAJCX0KPj4gIAl9IGVsc2UKPj4gIAkJdmNoaXFfbG9nX3RyYWNlKHZj
aGlxX3N1c3BfbG9nX2xldmVsLAo+PiAgCQkJIiVzICVzIGNvdW50ICVkLCBzdGF0ZSBjb3VudCAl
ZCIsCj4+IC0JCQlfX2Z1bmNfXywgZW50aXR5LCAqZW50aXR5X3VjLAo+PiAtCQkJYXJtX3N0YXRl
LT52aWRlb2NvcmVfdXNlX2NvdW50KTsKPj4gKwkJCV9fZnVuY19fLCBlbnRpdHksIGxvY2FsX2Vu
dGl0eV91YywgbG9jYWxfdWMpOwo+IAo+IEFyZSB5b3Ugc3VyZSB0aGlzIGlzIHRoZSBjb3JyZWN0
IHdheSB0byBzb2x2ZSB0aGlzPwo+IAo+IFdoeSBub3QganVzdCByZW1vdmUgdGhlIGxvY2FsIHZh
cmlhYmxlcyBpbnN0ZWFkLCBhcyBvYnZpb3VzbHkgdGhleSBhcmUKPiBub3QgYmVpbmcgdXNlZC4K
Ckl0IHNlZW1zIHRoZXkgYXJlIGVxdWl2YWxlbnQKCjI4NTIgICAgICAgICBsb2NhbF91YyA9IC0t
YXJtX3N0YXRlLT52aWRlb2NvcmVfdXNlX2NvdW50OwoyODUzICAgICAgICAgbG9jYWxfZW50aXR5
X3VjID0gLS0oKmVudGl0eV91Yyk7CgpIb3dldmVyLCBJIHdpbGwgcmVzZW5kIGFzIHlvdXIgc3Vn
Z2VzdGlvbi4gVGhhbmtz77yBCgo+IAo+IHRoYW5rcywKPiAKPiBncmVnIGstaAo+IAo+IC4KPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
