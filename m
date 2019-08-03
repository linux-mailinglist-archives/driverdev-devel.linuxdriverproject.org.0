Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 612FD80362
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 02:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E5A186502;
	Sat,  3 Aug 2019 00:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZPIVslqcql7; Sat,  3 Aug 2019 00:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65F5C864B3;
	Sat,  3 Aug 2019 00:13:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 813881BF9C2
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 00:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B567875A2
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 00:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNcB08GMOm3I for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 00:13:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com [216.228.121.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 432AC826E0
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 00:13:43 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d44d1b70000>; Fri, 02 Aug 2019 17:13:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 02 Aug 2019 17:13:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 02 Aug 2019 17:13:42 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 3 Aug
 2019 00:13:42 +0000
Subject: Re: [PATCH v4] staging: kpc2000: Convert put_page() to
 put_user_page*()
To: Bharath Vedartham <linux.bhar@gmail.com>, <gregkh@linuxfoundation.org>,
 <Matt.Sickler@daktronics.com>
References: <1564058658-3551-1-git-send-email-linux.bhar@gmail.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <4467d671-d011-0ebc-e2de-48a9745d4fe6@nvidia.com>
Date: Fri, 2 Aug 2019 17:13:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564058658-3551-1-git-send-email-linux.bhar@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564791223; bh=xdJekrXrqSEkbcFhdjp7xR8+tNNoUXUqIgXLHmUnwRs=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Q3ngW/HtFs5cKcLOFRiDyp/sjKGrf3S/BIpPhC3sg/XAHIkhAPuOkBNsWlaIfZQm+
 DyOw+GoC7Ln++nsmMD6ICDlKHFOoazO5hasrN5Se39NVf4JiW0c0sWVapHhkd1zqVJ
 dAgPBLhMLeWZhlQg/eS3kDbFwwREGPFjShjmIEQwOFYDWJumJqcHn31IVhlLzvXG/5
 xMnItcy5iCsWOKLGXgW1x7XFgwhARbt77SFgA4QKuuOuvOspra98z+moBTUmkoKBUh
 xnNIF9Rn832yv7EMfep7LRQtgtB1yRzPgmhHUnfCkhoTZZSN59Pqt5f96lTYp21RKS
 ClwVCbnz8Yi8w==
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
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNy8yNS8xOSA1OjQ0IEFNLCBCaGFyYXRoIFZlZGFydGhhbSB3cm90ZToKPiBGb3IgcGFnZXMg
dGhhdCB3ZXJlIHJldGFpbmVkIHZpYSBnZXRfdXNlcl9wYWdlcyooKSwgcmVsZWFzZSB0aG9zZSBw
YWdlcwo+IHZpYSB0aGUgbmV3IHB1dF91c2VyX3BhZ2UqKCkgcm91dGluZXMsIGluc3RlYWQgb2Yg
dmlhIHB1dF9wYWdlKCkuCj4gCj4gVGhpcyBpcyBwYXJ0IGEgdHJlZS13aWRlIGNvbnZlcnNpb24s
IGFzIGRlc2NyaWJlZCBpbiBjb21taXQgZmMxZDhlN2NjYTJkCj4gKCJtbTogaW50cm9kdWNlIHB1
dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCj4gCgpIaSBCaGFyYXRoLAoK
SWYgeW91IGxpa2UsIEkgY291bGQgcmUtcG9zdCB5b3VyIHBhdGNoIGhlcmUsIG1vZGlmaWVkIHNs
aWdodGx5LCBhcyBwYXJ0IG9mCnRoZSBuZXh0IHZlcnNpb24gb2YgdGhlIG1pc2NlbGxhbmVvdXMg
Y2FsbCBzaXRlIGNvbnZlcnNpb24gc2VyaWVzIFsxXS4KCkFzIHBhcnQgb2YgdGhhdCwgd2Ugc2hv
dWxkIGNoYW5nZSB0aGlzIHRvIHVzZSBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCkgCihzZWUg
YmVsb3cpLgoKCj4gQ2M6IElyYSBXZWlueSA8aXJhLndlaW55QGludGVsLmNvbT4KPiBDYzogSm9o
biBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgo+IENjOiBKw6lyw7RtZSBHbGlzc2UgPGpn
bGlzc2VAcmVkaGF0LmNvbT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhm
b3VuZGF0aW9uLm9yZz4KPiBDYzogTWF0dCBTaWNrbGVyIDxNYXR0LlNpY2tsZXJAZGFrdHJvbmlj
cy5jb20+Cj4gQ2M6IGRldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnCj4gQ2M6IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtbW1Aa3ZhY2sub3JnCj4gUmV2aWV3ZWQtYnk6
IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBCaGFy
YXRoIFZlZGFydGhhbSA8bGludXguYmhhckBnbWFpbC5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBzaW5j
ZSB2MQo+ICAgICAgICAgLSBJbXByb3ZlZCBjaGFuZ2Vsb2cgYnkgSm9obidzIHN1Z2dlc3Rpb24u
Cj4gICAgICAgICAtIE1vdmVkIGxvZ2ljIHRvIGRpcnR5IHBhZ2VzIGJlbG93IHNnX2RtYV91bm1h
cAo+ICAgICAgICAgIGFuZCByZW1vdmVkIFBhZ2VSZXNlcnZlZCBjaGVjay4KPiBDaGFuZ2VzIHNp
bmNlIHYyCj4gICAgICAgICAtIEFkZGVkIGJhY2sgUGFnZVJlc2V2ZXJlZCBjaGVjayBhcwo+ICAg
ICAgICAgc3VnZ2VzdGVkIGJ5IEpvaG4gSHViYmFyZC4KPiBDaGFuZ2VzIHNpbmNlIHYzCj4gICAg
ICAgICAtIENoYW5nZWQgdGhlIGNoYW5nZWxvZyBhcyBzdWdnZXN0ZWQgYnkgSm9obi4KPiAgICAg
ICAgIC0gQWRkZWQgSm9obidzIFJldmlld2VkLUJ5IHRhZy4KPiBDaGFuZ2VzIHNpbmNlIHY0Cj4g
ICAgICAgICAtIFJlYmFzZWQgdGhlIHBhdGNoIG9uIHRoZSBzdGFnaW5nIHRyZWUuCj4gICAgICAg
ICAtIEltcHJvdmVkIGNvbW1pdCBsb2cgYnkgZml4aW5nIGEgbGluZSB3cmFwLgo+IC0tLQo+ICBk
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYyB8IDE3ICsrKysrKy0tLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVv
cHMuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jCj4gaW5kZXgg
NDhjYTg4Yi4uZjE1ZTI5MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGNfZG1hL2ZpbGVvcHMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEv
ZmlsZW9wcy5jCj4gQEAgLTE5MCw5ICsxOTAsNyBAQCBzdGF0aWMgaW50IGtwY19kbWFfdHJhbnNm
ZXIoc3RydWN0IGRldl9wcml2YXRlX2RhdGEgKnByaXYsCj4gIAlzZ19mcmVlX3RhYmxlKCZhY2Qt
PnNndCk7Cj4gICBlcnJfZG1hX21hcF9zZzoKPiAgIGVycl9hbGxvY19zZ190YWJsZToKPiAtCWZv
ciAoaSA9IDAgOyBpIDwgYWNkLT5wYWdlX2NvdW50IDsgaSsrKSB7Cj4gLQkJcHV0X3BhZ2UoYWNk
LT51c2VyX3BhZ2VzW2ldKTsKPiAtCX0KPiArCXB1dF91c2VyX3BhZ2VzKGFjZC0+dXNlcl9wYWdl
cywgYWNkLT5wYWdlX2NvdW50KTsKPiAgIGVycl9nZXRfdXNlcl9wYWdlczoKPiAgCWtmcmVlKGFj
ZC0+dXNlcl9wYWdlcyk7Cj4gICBlcnJfYWxsb2NfdXNlcnBhZ2VzOgo+IEBAIC0yMTEsMTYgKzIw
OSwxMyBAQCB2b2lkICB0cmFuc2Zlcl9jb21wbGV0ZV9jYihzdHJ1Y3QgYWlvX2NiX2RhdGEgKmFj
ZCwgc2l6ZV90IHhmcl9jb3VudCwgdTMyIGZsYWdzKQo+ICAJQlVHX09OKGFjZC0+bGRldiA9PSBO
VUxMKTsKPiAgCUJVR19PTihhY2QtPmxkZXYtPnBsZGV2ID09IE5VTEwpOwo+ICAKPiAtCWZvciAo
aSA9IDAgOyBpIDwgYWNkLT5wYWdlX2NvdW50IDsgaSsrKSB7Cj4gLQkJaWYgKCFQYWdlUmVzZXJ2
ZWQoYWNkLT51c2VyX3BhZ2VzW2ldKSkgewo+IC0JCQlzZXRfcGFnZV9kaXJ0eShhY2QtPnVzZXJf
cGFnZXNbaV0pOwo+IC0JCX0KPiAtCX0KPiAtCj4gIAlkbWFfdW5tYXBfc2coJmFjZC0+bGRldi0+
cGxkZXYtPmRldiwgYWNkLT5zZ3Quc2dsLCBhY2QtPnNndC5uZW50cywgYWNkLT5sZGV2LT5kaXIp
Owo+ICAKPiAtCWZvciAoaSA9IDAgOyBpIDwgYWNkLT5wYWdlX2NvdW50IDsgaSsrKSB7Cj4gLQkJ
cHV0X3BhZ2UoYWNkLT51c2VyX3BhZ2VzW2ldKTsKPiArCWZvciAoaSA9IDA7IGkgPCBhY2QtPnBh
Z2VfY291bnQ7IGkrKykgewo+ICsJCWlmICghUGFnZVJlc2VydmVkKGFjZC0+dXNlcl9wYWdlc1tp
XSkpCj4gKwkJCXB1dF91c2VyX3BhZ2VzX2RpcnR5KCZhY2QtPnVzZXJfcGFnZXNbaV0sIDEpOwoK
ClRoaXMgd291bGQgY2hhbmdlIHRvOgoJCQlwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCZhY2Qt
PnVzZXJfcGFnZXNbaV0sIDEsIHRydWUpOwoKCi4uLmFuZCB3ZSdkIGFkZCB0aGlzIGJsdXJiICh0
aGlzIHRpbWUgd2l0aCBDSCdzIG5hbWUgc3BlbGxlZCBwcm9wZXJseSkgdG8gCnRoZSBjb21taXQg
ZGVzY3JpcHRpb246CgpOb3RlIHRoYXQgdGhpcyBlZmZlY3RpdmVseSBjaGFuZ2VzIHRoZSBjb2Rl
J3MgYmVoYXZpb3IgaW4KcXBfcmVsZWFzZV9wYWdlcygpOiBpdCBub3cgdWx0aW1hdGVseSBjYWxs
cyBzZXRfcGFnZV9kaXJ0eV9sb2NrKCksCmluc3RlYWQgb2Ygc2V0X3BhZ2VfZGlydHkoKS4gVGhp
cyBpcyBwcm9iYWJseSBtb3JlIGFjY3VyYXRlLgoKQXMgQ2hyaXN0b3BoIEhlbGx3aWcgcHV0IGl0
LCAic2V0X3BhZ2VfZGlydHkoKSBpcyBvbmx5IHNhZmUgaWYgd2UgYXJlCmRlYWxpbmcgd2l0aCBh
IGZpbGUgYmFja2VkIHBhZ2Ugd2hlcmUgd2UgaGF2ZSByZWZlcmVuY2Ugb24gdGhlIGlub2RlIGl0
CmhhbmdzIG9mZi4iIFsxXQoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAxOTA3MjMx
NTM2NDAuR0I3MjBAbHN0LmRlCgpBbHNvLCBmdXR1cmU6IEkgZG9uJ3Qga25vdyB0aGUgZHJpdmVy
IHdlbGwgZW5vdWdoIHRvIHNheSwgYnV0IG1heWJlICJ0cnVlIiAKY291bGQgYmUgcmVwbGFjZWQg
YnkgImFjZC0+bGRldi0+ZGlyID09IERNQV9GUk9NX0RFVklDRSIsIHRoZXJlLCBidXQgdGhhdAp3
b3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoLgoKCnRoYW5rcywKLS0gCkpvaG4gSHViYmFyZApOVklE
SUEKCgo+ICsJCWVsc2UKPiArCQkJcHV0X3VzZXJfcGFnZShhY2QtPnVzZXJfcGFnZXNbaV0pOwo+
ICAJfQo+ICAKPiAgCXNnX2ZyZWVfdGFibGUoJmFjZC0+c2d0KTsKPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
