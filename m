Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF7069C80
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 22:14:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 40AC320438;
	Mon, 15 Jul 2019 20:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08s7ZIPzv8OK; Mon, 15 Jul 2019 20:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 82CD2204CC;
	Mon, 15 Jul 2019 20:14:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD811BF29C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5120585074
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEy9vanxv4we for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 20:14:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7C1D284D06
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 20:14:14 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2cde9c0000>; Mon, 15 Jul 2019 13:14:20 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 15 Jul 2019 13:14:14 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 15 Jul 2019 13:14:14 -0700
Received: from [10.110.48.28] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 15 Jul
 2019 20:14:13 +0000
Subject: Re: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
To: Bharath Vedartham <linux.bhar@gmail.com>, <ira.weiny@intel.com>,
 <gregkh@linuxfoundation.org>, <Matt.Sickler@daktronics.com>,
 <jglisse@redhat.com>
References: <20190715195248.GA22495@bharath12345-Inspiron-5559>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
Date: Mon, 15 Jul 2019 13:14:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715195248.GA22495@bharath12345-Inspiron-5559>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563221660; bh=BMxYmaxLZP+7xtagiq4XdrfPFrAjpdxkuCAPEb6M/YE=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=WAapHeWXmLTyRYz3wNyClC6+13efTzwE10OPt/TU6UzVEhQ95SBC2gyGzhQSq8HzY
 jif7L106RMFBSUgWWTTOtKHY++BEoNDNqfzgiSakBgXQz7mrzurCeo5LnBL3cdHTdW
 9UQh4CqliZkdYkplEcYXuJba0rR+7so4j/xBe+8jAIUwoYBK4II+W8f3W9W3kmLAMs
 r7cbHtFee6QReJJdSABcP7vtaZ2aA/L9fceZ+vtVh/8yr0Q/NujtUzQQnfJB33iZWA
 VUOTM6zOa03ibnytuPQvgFn80smv0LT15Q3+mUhiPpZjESiU6lD7H4cdBJJjkE2sEO
 ovaCokkakfJiQ==
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
Cc: devel@driverdev.osuosl.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNy8xNS8xOSAxMjo1MiBQTSwgQmhhcmF0aCBWZWRhcnRoYW0gd3JvdGU6Cj4gVGhlcmUgaGF2
ZSBiZWVuIGlzc3VlcyB3aXRoIGdldF91c2VyX3BhZ2VzIGFuZCBmaWxlc3lzdGVtIHdyaXRlYmFj
ay4KPiBUaGUgaXNzdWVzIGFyZSBiZXR0ZXIgZGVzY3JpYmVkIGluIFsxXS4KPiAKPiBUaGUgc29s
dXRpb24gYmVpbmcgcHJvcG9zZWQgd2FudHMgdG8ga2VlcCB0cmFjayBvZiBndXBfcGlubmVkIHBh
Z2VzIHdoaWNoIHdpbGwgYWxsb3cgdG8gdGFrZSBmdXJ0aHVyIHN0ZXBzIHRvIGNvb3JkaW5hdGUg
YmV0d2VlbiBzdWJzeXN0ZW1zIHVzaW5nIGd1cC4KPiAKPiBwdXRfdXNlcl9wYWdlKCkgc2ltcGx5
IGNhbGxzIHB1dF9wYWdlIGluc2lkZSBmb3Igbm93LiBCdXQgdGhlIGltcGxlbWVudGF0aW9uIHdp
bGwgY2hhbmdlIG9uY2UgYWxsIGNhbGwgc2l0ZXMgb2YgcHV0X3BhZ2UoKSBhcmUgY29udmVydGVk
Lgo+IAo+IEkgY3VycmVudGx5IGRvIG5vdCBoYXZlIHRoZSBkcml2ZXIgdG8gdGVzdC4gQ291bGQg
SSBoYXZlIHNvbWUgc3VnZ2VzdGlvbnMgdG8gdGVzdCB0aGlzIGNvZGU/IFRoZSBzb2x1dGlvbiBp
cyBjdXJyZW50bHkgaW1wbGVtZW50ZWQgaW4gWzJdIGFuZAo+IGl0IHdvdWxkIGJlIGdyZWF0IGlm
IHdlIGNvdWxkIGFwcGx5IHRoZSBwYXRjaCBvbiB0b3Agb2YgWzJdIGFuZCBydW4gc29tZSB0ZXN0
cyB0byBjaGVjayBpZiBhbnkgcmVncmVzc2lvbnMgb2NjdXIuCgpIaSBCaGFyYXRoLAoKUHJvY2Vz
cyBwb2ludDogdGhlIGFib3ZlIHBhcmFncmFwaCwgYW5kIG90aGVyIG1ldGEtcXVlc3Rpb25zIChh
Ym91dCB0aGUgcGF0Y2gsIHJhdGhlciB0aGFuIHBhcnQgb2YgdGhlIHBhdGNoKSBzaG91bGQgYmUg
cGxhY2VkIGVpdGhlciBhZnRlciB0aGUgIi0tLSIsIG9yIGluIGEgY292ZXIgbGV0dGVyIChnaXQt
c2VuZC1lbWFpbCAtLWNvdmVyLWxldHRlcikuIFRoYXQgd2F5LCB0aGUgcGF0Y2ggaXRzZWxmIGlz
IGluIGEgY29tbWl0LWFibGUgc3RhdGUuCgpPbmUgbW9yZSBiZWxvdzoKCj4gCj4gWzFdIGh0dHBz
Oi8vbHduLm5ldC9BcnRpY2xlcy83NTMwMjcvCj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9qb2hu
aHViYmFyZC9saW51eC90cmVlL2d1cF9kbWFfY29yZQo+IAo+IENjOiBNYXR0IFNpY2tsZXIgPE1h
dHQuU2lja2xlckBkYWt0cm9uaWNzLmNvbT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJl
ZGhhdC5jb20+Cj4gQ2M6IElyYSBXZWlueSA8aXJhLndlaW55QGludGVsLmNvbT4KPiBDYzogSm9o
biBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgo+IENjOiBsaW51eC1tbUBrdmFjay5vcmcK
PiBDYzogZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcKPiAKPiBTaWduZWQtb2ZmLWJ5OiBCaGFy
YXRoIFZlZGFydGhhbSA8bGludXguYmhhckBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jIHwgOCArKy0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jCj4gaW5kZXggNjE2NjU4Ny4uODJjNzBlNiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYwo+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jCj4gQEAgLTE5OCw5
ICsxOTgsNyBAQCBpbnQgIGtwY19kbWFfdHJhbnNmZXIoc3RydWN0IGRldl9wcml2YXRlX2RhdGEg
KnByaXYsIHN0cnVjdCBraW9jYiAqa2NiLCB1bnNpZ25lZAo+ICAJc2dfZnJlZV90YWJsZSgmYWNk
LT5zZ3QpOwo+ICAgZXJyX2RtYV9tYXBfc2c6Cj4gICBlcnJfYWxsb2Nfc2dfdGFibGU6Cj4gLQlm
b3IgKGkgPSAwIDsgaSA8IGFjZC0+cGFnZV9jb3VudCA7IGkrKyl7Cj4gLQkJcHV0X3BhZ2UoYWNk
LT51c2VyX3BhZ2VzW2ldKTsKPiAtCX0KPiArCXB1dF91c2VyX3BhZ2VzKGFjZC0+dXNlcl9wYWdl
cywgYWNkLT5wYWdlX2NvdW50KTsKPiAgIGVycl9nZXRfdXNlcl9wYWdlczoKPiAgCWtmcmVlKGFj
ZC0+dXNlcl9wYWdlcyk7Cj4gICBlcnJfYWxsb2NfdXNlcnBhZ2VzOgo+IEBAIC0yMjksOSArMjI3
LDcgQEAgdm9pZCAgdHJhbnNmZXJfY29tcGxldGVfY2Ioc3RydWN0IGFpb19jYl9kYXRhICphY2Qs
IHNpemVfdCB4ZnJfY291bnQsIHUzMiBmbGFncykKPiAgCQo+ICAJZG1hX3VubWFwX3NnKCZhY2Qt
PmxkZXYtPnBsZGV2LT5kZXYsIGFjZC0+c2d0LnNnbCwgYWNkLT5zZ3QubmVudHMsIGFjZC0+bGRl
di0+ZGlyKTsKPiAgCQo+IC0JZm9yIChpID0gMCA7IGkgPCBhY2QtPnBhZ2VfY291bnQgOyBpKysp
ewo+IC0JCXB1dF9wYWdlKGFjZC0+dXNlcl9wYWdlc1tpXSk7Cj4gLQl9Cj4gKwlwdXRfdXNlcl9w
YWdlcyhhY2QtPnVzZXJfcGFnZXMsIGFjZC0+cGFnZV9jb3VudCk7Cj4gIAkKPiAgCXNnX2ZyZWVf
dGFibGUoJmFjZC0+c2d0KTsKPiAgCQo+IAoKQmVjYXVzZSB0aGlzIGlzIGEgY29tbW9uIHBhdHRl
cm4sIGFuZCBiZWNhdXNlIHRoZSBjb2RlIGhlcmUgZG9lc24ndCBsaWtlbHkgbmVlZCB0byBzZXQg
cGFnZSBkaXJ0eSBiZWZvcmUgdGhlIGRtYV91bm1hcF9zZyBjYWxsLCBJIHRoaW5rIHRoZSBmb2xs
b3dpbmcgd291bGQgYmUgYmV0dGVyIChpdCdzIHVudGVzdGVkKSwgaW5zdGVhZCBvZiB0aGUgYWJv
dmUgZGlmZiBodW5rOgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19k
bWEvZmlsZW9wcy5jIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMK
aW5kZXggNDhjYTg4YmM2YjBiLi5kNDg2Zjk4NjY0NDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMy
MDAwL2twY19kbWEvZmlsZW9wcy5jCkBAIC0yMTEsMTYgKzIxMSwxMyBAQCB2b2lkICB0cmFuc2Zl
cl9jb21wbGV0ZV9jYihzdHJ1Y3QgYWlvX2NiX2RhdGEgKmFjZCwgc2l6ZV90IHhmcl9jb3VudCwg
dTMyIGZsYWdzKQogICAgICAgIEJVR19PTihhY2QtPmxkZXYgPT0gTlVMTCk7CiAgICAgICAgQlVH
X09OKGFjZC0+bGRldi0+cGxkZXYgPT0gTlVMTCk7CiAKLSAgICAgICBmb3IgKGkgPSAwIDsgaSA8
IGFjZC0+cGFnZV9jb3VudCA7IGkrKykgewotICAgICAgICAgICAgICAgaWYgKCFQYWdlUmVzZXJ2
ZWQoYWNkLT51c2VyX3BhZ2VzW2ldKSkgewotICAgICAgICAgICAgICAgICAgICAgICBzZXRfcGFn
ZV9kaXJ0eShhY2QtPnVzZXJfcGFnZXNbaV0pOwotICAgICAgICAgICAgICAgfQotICAgICAgIH0K
LQogICAgICAgIGRtYV91bm1hcF9zZygmYWNkLT5sZGV2LT5wbGRldi0+ZGV2LCBhY2QtPnNndC5z
Z2wsIGFjZC0+c2d0Lm5lbnRzLCBhY2QtPmxkZXYtPmRpcik7CiAKICAgICAgICBmb3IgKGkgPSAw
IDsgaSA8IGFjZC0+cGFnZV9jb3VudCA7IGkrKykgewotICAgICAgICAgICAgICAgcHV0X3BhZ2Uo
YWNkLT51c2VyX3BhZ2VzW2ldKTsKKyAgICAgICAgICAgICAgIGlmICghUGFnZVJlc2VydmVkKGFj
ZC0+dXNlcl9wYWdlc1tpXSkpIHsKKyAgICAgICAgICAgICAgICAgICAgICAgcHV0X3VzZXJfcGFn
ZXNfZGlydHkoJmFjZC0+dXNlcl9wYWdlc1tpXSwgMSk7CisgICAgICAgICAgICAgICBlbHNlCisg
ICAgICAgICAgICAgICAgICAgICAgIHB1dF91c2VyX3BhZ2UoYWNkLT51c2VyX3BhZ2VzW2ldKTsK
ICAgICAgICB9CiAKICAgICAgICBzZ19mcmVlX3RhYmxlKCZhY2QtPnNndCk7CgpBc3N1bWluZyB0
aGF0IHlvdSBtYWtlIHRob3NlIHR3byBjaGFuZ2VzLCB5b3UgY2FuIGFkZDoKCiAgICBSZXZpZXdl
ZC1ieTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKCnRoYW5rcywKLS0gCkpv
aG4gSHViYmFyZApOVklESUEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
