Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9C66EC0F
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 23:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A18B687BC0;
	Fri, 19 Jul 2019 21:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id whrkBlS2apyx; Fri, 19 Jul 2019 21:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 278348777F;
	Fri, 19 Jul 2019 21:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA46C1BF292
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 21:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A76DF87747
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 21:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4vdm7yOGPPk for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 21:28:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate15.nvidia.com (hqemgate15.nvidia.com [216.228.121.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B4D4B86420
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 21:28:40 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d32360f0000>; Fri, 19 Jul 2019 14:28:47 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 19 Jul 2019 14:28:40 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 19 Jul 2019 14:28:40 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 19 Jul
 2019 21:28:39 +0000
Subject: Re: [PATCH v3] staging: kpc2000: Convert put_page to put_user_page*()
To: Bharath Vedartham <linux.bhar@gmail.com>, <ira.weiny@intel.com>,
 <jglisse@redhat.com>, <gregkh@linuxfoundation.org>,
 <Matt.Sickler@daktronics.com>
References: <20190719200235.GA16122@bharath12345-Inspiron-5559>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <8bce5bb2-d9a5-13f1-7d96-27c41057c519@nvidia.com>
Date: Fri, 19 Jul 2019 14:28:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719200235.GA16122@bharath12345-Inspiron-5559>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563571727; bh=lRODC3picM28oK/N+bZmg6JsfRLb3g94XTeELCxYE9E=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=eh7z35plcsPz2hXb3Vk4ijLn+kjkYXp+kqQFis1UItWfeWWiWslIgna9z74j23y1w
 Q5p6kMUgK3kxxE8yrzxJl2oBaGhP9lCWpVzDjx4J5U5L3MJoptfnfFPQsrvKnItylr
 PaHNMghL3+oV9IGu+ITEooZjRac6iWut/8/G49SifFyn122eXOjrBtnNYVLFY/gm6f
 EtFa/wQZRe+RD/FLtg+ySaGSf+Coykpae7dfsLZeZZRfDfC6LbXl9Ivt3NWswUdCGa
 U6cdxk1zFeTxoxJkn2DubtUFF2Xml0o6HHUyuFezCwIqOEVQiD2+22q1Z1X43yos/c
 bY5hUBHzHbByg==
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

T24gNy8xOS8xOSAxOjAyIFBNLCBCaGFyYXRoIFZlZGFydGhhbSB3cm90ZToKPiBUaGVyZSBoYXZl
IGJlZW4gaXNzdWVzIHdpdGggY29vcmRpbmF0aW9uIG9mIHZhcmlvdXMgc3Vic3lzdGVtcyB1c2lu
Zwo+IGdldF91c2VyX3BhZ2VzLiBUaGVzZSBpc3N1ZXMgYXJlIGJldHRlciBkZXNjcmliZWQgaW4g
WzFdLgo+IAo+IEFuIGltcGxlbWVudGF0aW9uIG9mIHRyYWNraW5nIGdldF91c2VyX3BhZ2VzIGlz
IGN1cnJlbnRseSB1bmRlcndheQo+IFRoZSBpbXBsZW1lbnRhdGlvbiByZXF1aXJlcyB0aGUgdXNl
IHB1dF91c2VyX3BhZ2UqKCkgdmFyaWFudHMgdG8gcmVsZWFzZQo+IGEgcmVmZXJlbmNlIHJhdGhl
ciB0aGFuIHB1dF9wYWdlKCkuIFRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2VkCj4gcHV0X3VzZXJf
cGFnZXMsIENvbW1pdCBmYzFkOGU3Y2NhMmRhYTE4ZDJmZTU2Yjk0ODc0ODQ4YWRmODlkN2Y1ICgi
bW06IGludHJvZHVjZQo+IHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb24iKS4K
PiAKPiBUaGUgaW1wbGVtZW50YXRpb24gY3VycmVudGx5IHNpbXBseSBjYWxscyBwdXRfcGFnZSgp
IHdpdGhpbgo+IHB1dF91c2VyX3BhZ2UoKS4gQnV0IGluIHRoZSBmdXR1cmUsIGl0IGlzIHRvIGNo
YW5nZSB0byBhZGQgYSBtZWNoYW5pc20KPiB0byBrZWVwIHRyYWNrIG9mIGdldF91c2VyX3BhZ2Vz
LiBPbmNlIGEgdHJhY2tpbmcgbWVjaGFuaXNtIGlzCj4gaW1wbGVtZW50ZWQsIHdlIGNhbiBtYWtl
IGF0dGVtcHRzIHRvIHdvcmsgb24gaW1wcm92aW5nIG9uIGNvb3JkaW5hdGlvbgo+IGJldHdlZW4g
dmFyaW91cyBzdWJzeXN0ZW1zIHVzaW5nIGdldF91c2VyX3BhZ2VzLgo+IAo+IFsxXSBodHRwczov
L2x3bi5uZXQvQXJ0aWNsZXMvNzUzMDI3LwoKT3B0aW9uYWw6IEkndmUgYmVlbiBmdXNzaW5nIGFi
b3V0IGhvdyB0byBrZWVwIHRoZSBjaGFuZ2UgbG9nIHJlYXNvbmFibGUsCmFuZCBmaW5hbGx5IGNh
bWUgdXAgd2l0aCB0aGUgZm9sbG93aW5nIHJlY29tbWVuZGVkIHRlbXBsYXRlIGZvciB0aGVzZSAK
Y29udmVyc2lvbiBwYXRjaGVzLiBUaGlzIHdvdWxkIHJlcGxhY2UgdGhlIHRleHQgeW91IGhhdmUg
YWJvdmUsIGJlY2F1c2UgdGhlIApwdXRfdXNlcl9wYWdlIHBsYWNlaG9sZGVyIGNvbW1pdCBoYXMg
YWxsIHRoZSBkb2N1bWVudGF0aW9uIChhbmQgdGhlbiBzb21lKSAKdGhhdCB3ZSBuZWVkOgoKCkZv
ciBwYWdlcyB0aGF0IHdlcmUgcmV0YWluZWQgdmlhIGdldF91c2VyX3BhZ2VzKigpLCByZWxlYXNl
IHRob3NlIHBhZ2VzCnZpYSB0aGUgbmV3IHB1dF91c2VyX3BhZ2UqKCkgcm91dGluZXMsIGluc3Rl
YWQgb2YgdmlhIHB1dF9wYWdlKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29udmVyc2lv
biwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9kdWNlIHB1
dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgoKRm9yIHRoZSBjaGFuZ2Ug
aXRzZWxmLCB5b3Ugd2lsbCBuZWVkIHRvIHJlYmFzZSBpdCBvbnRvIHRoZSBsYXRlc3QgCmxpbnV4
LmdpdCwgYXMgaXQgZG9lc24ndCBxdWl0ZSBhcHBseSB0aGVyZS4gCgpUZXN0aW5nIGlzIGdvb2Qg
aWYgd2UgY2FuIGdldCBpdCwgYnV0IGFzIGZhciBhcyBJIGNhbiB0ZWxsIHRoaXMgaXMKY29ycmVj
dCwgc28geW91IGNhbiBhbHNvIGFkZDoKCiAgICBSZXZpZXdlZC1ieTogSm9obiBIdWJiYXJkIDxq
aHViYmFyZEBudmlkaWEuY29tPgoKdGhhbmtzLAotLSAKSm9obiBIdWJiYXJkCk5WSURJQQoKPiAK
PiBDYzogSXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPgo+IENjOiBKb2huIEh1YmJhcmQg
PGpodWJiYXJkQG52aWRpYS5jb20+Cj4gQ2M6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRo
YXQuY29tPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24u
b3JnPgo+IENjOiBNYXR0IFNpY2tsZXIgPE1hdHQuU2lja2xlckBkYWt0cm9uaWNzLmNvbT4KPiBD
YzogZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcgCj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcKPiBDYzogbGludXgtbW1Aa3ZhY2sub3JnCj4gU2lnbmVkLW9mZi1ieTogQmhhcmF0
aCBWZWRhcnRoYW0gPGxpbnV4LmJoYXJAZ21haWwuY29tPgo+IC0tLQo+IENoYW5nZXMgc2luY2Ug
djEKPiAJLSBJbXByb3ZlZCBjaGFuZ2Vsb2cgYnkgSm9obidzIHN1Z2dlc3Rpb24uCj4gCS0gTW92
ZWQgbG9naWMgdG8gZGlydHkgcGFnZXMgYmVsb3cgc2dfZG1hX3VubWFwCj4gCWFuZCByZW1vdmVk
IFBhZ2VSZXNlcnZlZCBjaGVjay4KPiBDaGFuZ2VzIHNpbmNlIHYyCj4gCS0gQWRkZWQgYmFjayBQ
YWdlUmVzZXZlcmVkIGNoZWNrIGFzIHN1Z2dlc3RlZCBieSBKb2huIEh1YmJhcmQuCj4gCQo+IFRo
ZSBQYWdlUmVzZXJ2ZWQgY2hlY2sgbmVlZHMgYSBjbG9zZXIgbG9vayBhbmQgaXMgbm90IHdvcnRo
IG1lc3NpbmcKPiBhcm91bmQgd2l0aCBmb3Igbm93Lgo+IAo+IE1hdHQsIENvdWxkIHlvdSBnaXZl
IGFueSBzdWdnZXN0aW9ucyBmb3IgdGVzdGluZyB0aGlzIHBhdGNoPwo+ICAgICAKPiBJZiBpbi1j
YXNlLCB5b3UgYXJlIHdpbGxpbmcgdG8gcGljayB0aGlzIHVwIHRvIHRlc3QuIENvdWxkIHlvdQo+
IGFwcGx5IHRoaXMgcGF0Y2ggdG8gdGhpcyB0cmVlCj4gaHR0cHM6Ly9naXRodWIuY29tL2pvaG5o
dWJiYXJkL2xpbnV4L3RyZWUvZ3VwX2RtYV9jb3JlCj4gYW5kIHRlc3QgaXQgd2l0aCB5b3VyIGRl
dmljZXM/Cj4gCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9w
cy5jIHwgMTcgKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9r
cGMyMDAwL2twY19kbWEvZmlsZW9wcy5jIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2Rt
YS9maWxlb3BzLmMKPiBpbmRleCA2MTY2NTg3Li43NWFkMjYzIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jCj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMKPiBAQCAtMTk4LDkgKzE5OCw3IEBAIGludCAg
a3BjX2RtYV90cmFuc2ZlcihzdHJ1Y3QgZGV2X3ByaXZhdGVfZGF0YSAqcHJpdiwgc3RydWN0IGtp
b2NiICprY2IsIHVuc2lnbmVkCj4gIAlzZ19mcmVlX3RhYmxlKCZhY2QtPnNndCk7Cj4gICBlcnJf
ZG1hX21hcF9zZzoKPiAgIGVycl9hbGxvY19zZ190YWJsZToKPiAtCWZvciAoaSA9IDAgOyBpIDwg
YWNkLT5wYWdlX2NvdW50IDsgaSsrKXsKPiAtCQlwdXRfcGFnZShhY2QtPnVzZXJfcGFnZXNbaV0p
Owo+IC0JfQo+ICsJcHV0X3VzZXJfcGFnZXMoYWNkLT51c2VyX3BhZ2VzLCBhY2QtPnBhZ2VfY291
bnQpOwo+ICAgZXJyX2dldF91c2VyX3BhZ2VzOgo+ICAJa2ZyZWUoYWNkLT51c2VyX3BhZ2VzKTsK
PiAgIGVycl9hbGxvY191c2VycGFnZXM6Cj4gQEAgLTIyMSwxNiArMjE5LDEzIEBAIHZvaWQgIHRy
YW5zZmVyX2NvbXBsZXRlX2NiKHN0cnVjdCBhaW9fY2JfZGF0YSAqYWNkLCBzaXplX3QgeGZyX2Nv
dW50LCB1MzIgZmxhZ3MpCj4gIAkKPiAgCWRldl9kYmcoJmFjZC0+bGRldi0+cGxkZXYtPmRldiwg
InRyYW5zZmVyX2NvbXBsZXRlX2NiKGFjZCA9IFslcF0pXG4iLCBhY2QpOwo+ICAJCj4gLQlmb3Ig
KGkgPSAwIDsgaSA8IGFjZC0+cGFnZV9jb3VudCA7IGkrKyl7Cj4gLQkJaWYgKCFQYWdlUmVzZXJ2
ZWQoYWNkLT51c2VyX3BhZ2VzW2ldKSl7Cj4gLQkJCXNldF9wYWdlX2RpcnR5KGFjZC0+dXNlcl9w
YWdlc1tpXSk7Cj4gLQkJfQo+IC0JfQo+IC0JCj4gIAlkbWFfdW5tYXBfc2coJmFjZC0+bGRldi0+
cGxkZXYtPmRldiwgYWNkLT5zZ3Quc2dsLCBhY2QtPnNndC5uZW50cywgYWNkLT5sZGV2LT5kaXIp
Owo+ICAJCj4gLQlmb3IgKGkgPSAwIDsgaSA8IGFjZC0+cGFnZV9jb3VudCA7IGkrKyl7Cj4gLQkJ
cHV0X3BhZ2UoYWNkLT51c2VyX3BhZ2VzW2ldKTsKPiArCWZvciAoaSA9IDA7IGkgPCBhY2QtPnBh
Z2VfY291bnQ7IGkrKykgewo+ICsJCWlmICghUGFnZVJlc2VydmVkKGFjZC0+dXNlcl9wYWdlc1tp
XSkpCj4gKwkJCXB1dF91c2VyX3BhZ2VzX2RpcnR5KCZhY2QtPnVzZXJfcGFnZXNbaV0sIDEpOwo+
ICsJCWVsc2UKPiArCQkJcHV0X3VzZXJfcGFnZShhY2QtPnVzZXJfcGFnZXNbaV0pOwo+ICAJfQo+
ICAJCj4gIAlzZ19mcmVlX3RhYmxlKCZhY2QtPnNndCk7Cj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
