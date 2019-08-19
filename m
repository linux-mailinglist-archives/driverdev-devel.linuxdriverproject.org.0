Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3C991CA5
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFE50844C2;
	Mon, 19 Aug 2019 05:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XmxriNHerYmW; Mon, 19 Aug 2019 05:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D724D84069;
	Mon, 19 Aug 2019 05:39:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D38E1BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 593A52042C
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svljwktwZSMt for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:39:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 56F971FDFB
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:39:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 22:39:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="378083046"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2019 22:39:53 -0700
Subject: Re: [RFC PATCH 08/15] drivers/acrn: add VM memory management for ACRN
 char device
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
 <20190816124757.GW1974@kadam>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <8b909c22-3873-2b5d-4845-1fee1a5d81ce@intel.com>
Date: Mon, 19 Aug 2019 13:32:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816124757.GW1974@kadam>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Li@osuosl.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, Jason Chen CJ <jason.cj.chen@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Fei <lei1.li@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAyMDo1OCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBG
cmksIEF1ZyAxNiwgMjAxOSBhdCAxMDoyNTo0OUFNICswODAwLCBaaGFvIFlha3VpIHdyb3RlOgo+
PiAraW50IGh1Z2VwYWdlX21hcF9ndWVzdChzdHJ1Y3QgYWNybl92bSAqdm0sIHN0cnVjdCB2bV9t
ZW1tYXAgKm1lbW1hcCkKPj4gK3sKPj4gKwlzdHJ1Y3QgcGFnZSAqcGFnZSA9IE5VTEwsICpyZWdp
b25zX2J1Zl9wZyA9IE5VTEw7Cj4+ICsJdW5zaWduZWQgbG9uZyBsZW4sIGd1ZXN0X2dwYSwgdm1h
Owo+PiArCXN0cnVjdCB2bV9tZW1vcnlfcmVnaW9uICpyZWdpb25fYXJyYXk7Cj4+ICsJc3RydWN0
IHNldF9yZWdpb25zICpyZWdpb25zOwo+PiArCWludCBtYXhfc2l6ZSA9IFBBR0VfU0laRSAvIHNp
emVvZihzdHJ1Y3Qgdm1fbWVtb3J5X3JlZ2lvbik7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiArCWlm
ICghdm0gfHwgIW1lbW1hcCkKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKwlsZW4gPSBt
ZW1tYXAtPmxlbjsKPj4gKwl2bWEgPSBtZW1tYXAtPnZtYV9iYXNlOwo+PiArCWd1ZXN0X2dwYSA9
IG1lbW1hcC0+Z3BhOwo+PiArCj4+ICsJLyogcHJlcGFyZSBzZXRfbWVtb3J5X3JlZ2lvbnMgaW5m
byAqLwo+PiArCXJlZ2lvbnNfYnVmX3BnID0gYWxsb2NfcGFnZShHRlBfS0VSTkVMKTsKPj4gKwlp
ZiAoIXJlZ2lvbnNfYnVmX3BnKQo+PiArCQlyZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArCXJlZ2lv
bnMgPSBremFsbG9jKHNpemVvZigqcmVnaW9ucyksIEdGUF9LRVJORUwpOwo+PiArCWlmICghcmVn
aW9ucykgewo+PiArCQlfX2ZyZWVfcGFnZShyZWdpb25zX2J1Zl9wZyk7Cj4+ICsJCXJldHVybiAt
RU5PTUVNOwo+IAo+IEl0J3MgYmV0dGVyIHRvIGRvIGEgZ290byBlcnJfZnJlZV9yZWdpb25zX2J1
ZiBoZXJlLiAgTW9yZSBjb21tZW50cwo+IGJlbG93Lgo+IAo+PiArCX0KPj4gKwlyZWdpb25zLT5t
cl9udW0gPSAwOwo+PiArCXJlZ2lvbnMtPnZtaWQgPSB2bS0+dm1pZDsKPj4gKwlyZWdpb25zLT5y
ZWdpb25zX2dwYSA9IHBhZ2VfdG9fcGh5cyhyZWdpb25zX2J1Zl9wZyk7Cj4+ICsJcmVnaW9uX2Fy
cmF5ID0gcGFnZV90b192aXJ0KHJlZ2lvbnNfYnVmX3BnKTsKPj4gKwo+PiArCXdoaWxlIChsZW4g
PiAwKSB7Cj4+ICsJCXVuc2lnbmVkIGxvbmcgdm0wX2dwYSwgcGFnZXNpemU7Cj4+ICsKPj4gKwkJ
cmV0ID0gZ2V0X3VzZXJfcGFnZXNfZmFzdCh2bWEsIDEsIDEsICZwYWdlKTsKPj4gKwkJaWYgKHVu
bGlrZWx5KHJldCAhPSAxKSB8fCAoIXBhZ2UpKSB7Cj4+ICsJCQlwcl9lcnIoImZhaWxlZCB0byBw
aW4gaHVnZSBwYWdlIVxuIik7Cj4+ICsJCQlyZXQgPSAtRU5PTUVNOwo+PiArCQkJZ290byBlcnI7
Cj4gCj4gZ290byBlcnIgaXMgYSByZWQgZmxhZy4gIEl0J3MgYmV0dGVyIGlmIGVycm9yIGxhYmVs
cyBkbyBvbmUgc3BlY2lmaWMKPiBuYW1lZCB0aGluZyBsaWtlOgo+IAo+IGVycl9yZWdpb25zOgo+
IAlrZnJlZShyZWdpb25zKTsKPiBlcnJfZnJlZV9yZWdpb25zX2J1ZjoKPiAJX19mcmVlX3BhZ2Uo
cmVnaW9uc19idWZfcGcpOwo+IAo+IFdlIHNob3VsZCB1bndpbmQgaW4gdGhlIG9wcG9zaXRlL21p
cnJvciBvcmRlciBmcm9tIGhvdyB0aGluZ3Mgd2VyZQo+IGFsbG9jYXRlZC4gIFRoZW4gd2UgY2Fu
IHJlbW92ZSB0aGUgaWYgc3RhdGVtZW50cyBpbiB0aGUgZXJyb3IgaGFuZGxpbmcuCgpUaGFua3Mg
Zm9yIHRoZSByZXZpZXcuCgpXaWxsIGZvbGxvdyB5b3VyIHN1Z2dlc3Rpb24gdG8gdW53aW5kIHRo
ZSBlcnJvciBoYW5kbGluZy4KCj4gCj4gSW4gdGhpcyBzaXR1YXRpb24sIHNheSB0aGUgdXNlciB0
cmlnZ2VycyBhbiAtRUZBVUxUIGluCj4gZ2V0X3VzZXJfcGFnZXNfZmFzdCgpIGluIHRoZSBzZWNv
bmQgaXRlcmF0aW9uIHRocm91Z2ggdGhlIGxvb3AuICBUaGF0Cj4gbWVhbnMgdGhhdCAicGFnZSIg
aXMgdGhlIG5vbi1OVUxMIHBhZ2UgZnJvbSB0aGUgcHJldmlvdXMgaXRlcmF0aW9uLiAgV2UKPiBo
YXZlIGFscmVhZHkgYWRkZWQgaXQgdG8gYWRkX2d1ZXN0X21hcCgpLiAgQnV0IG5vdyB3ZSdyZSBm
cmVlaW5nIGl0Cj4gd2l0aG91dCByZW1vdmluZyBpdCBmcm9tIHRoZSBtYXAgc28gcHJvYmFibHkg
aXQgbGVhZHMgdG8gYSB1c2UgYWZ0ZXIKPiBmcmVlLgo+IAo+IFRoZSBiZXN0IHdheSB0byB3cml0
ZSB0aGUgZXJyb3IgaGFuZGxpbmcgaW4gYSBsb29wIGxpa2UgdGhpcyBpcyB0bwo+IGNsZWFuIHVw
IHRoZSBwYXJ0aWFsIGl0ZXJhdGlvbiB0aGF0IGhhcyBzdWNjZWVkIChub3RoaW5nIGhlcmUpLCBh
bmQgdGhlbgo+IHVud2luZCBhbGwgdGhlIHN1Y2Nlc3NmdWwgaXRlcmF0aW9ucyBhdCB0aGUgYm90
dG9tIG9mIHRoZSBmdW5jdGlvbi4KPiAiZ290byB1bndpbmRfbG9vcDsiCj4gCgpJbiB0aGVvcnkg
d2Ugc2hvdWxkIGNsZWFudXAgdGhlIHByZXZpb3VzIHN1Y2Nlc3MgaXRlcmF0aW9uIGlmIGl0IApl
bmNvdW50ZXJzIG9uZSBlcnJvciBpbiB0aGUgY3VycmVudCBpdGVyYXRpb24uCkJ1dCBpdCB3aWxs
IGJlIHF1aXRlIGNvbXBsZXggdG8gY2xlYW51cCB1cCB0aGUgcHJldmlvdXMgaXRlcmF0aW9uLgpj
YWxsIHRoZSBzZXRfbWVtb3J5X3JlZ2lvbnMgZm9yIE1SX0RFTCBvcC4KY2FsbCB0aGUgcmVtb3Zl
X2d1ZXN0X21hcCBmb3IgdGhlIGFkZGVkIGhhc2ggaXRlbQpjYWxsIHRoZSBwdXRfcGFnZSBmb3Ig
cmV0dXJuZWQgcGFnZSBpbiBnZXRfdXNlcl9wYWdlc19mYXN0LgoKSW4gZmFjdCBhcyB0aGlzIGRy
aXZlciBpcyBtYWlubHkgdXNlZCBmb3IgZW1iZWRkZWQgSU9UIHVzYWdlLCBpdCBkb2Vzbid0IApo
YW5kbGUgdGhlIGNvbXBsZXggY2xlYW51cCB3aGVuIHN1Y2ggZXJyb3IgaXMgZW5jb3VudGVyZWQu
IEluc3RlYWQgdGhlIApjbGVhbiB1cCBpcyBoYW5kbGVkIGluIGZyZWVfZ3Vlc3Rfdm0uCgo+PiAr
CQl9Cj4+ICsKPj4gKwkJdm0wX2dwYSA9IHBhZ2VfdG9fcGh5cyhwYWdlKTsKPj4gKwkJcGFnZXNp
emUgPSBQQUdFX1NJWkUgPDwgY29tcG91bmRfb3JkZXIocGFnZSk7Cj4+ICsKPj4gKwkJcmV0ID0g
YWRkX2d1ZXN0X21hcCh2bSwgdm0wX2dwYSwgZ3Vlc3RfZ3BhLCBwYWdlc2l6ZSk7Cj4+ICsJCWlm
IChyZXQgPCAwKSB7Cj4+ICsJCQlwcl9lcnIoImZhaWxlZCB0byBhZGQgbWVtc2VnIGZvciBodWdl
IHBhZ2UhXG4iKTsKPj4gKwkJCWdvdG8gZXJyOwo+IAo+IFNvIHRoZW4gaGVyZSwgaXQgd291bGQg
YmU6Cj4gCj4gCQkJcHJfZXJyKCJmYWlsZWQgdG8gYWRkIG1lbXNlZyBmb3IgaHVnZSBwYWdlIVxu
Iik7Cj4gCQkJcHV0X3BhZ2UocGFnZSk7Cj4gCQkJZ290byB1bndpbmRfbG9vcDsKPiAKPiByZWdh
cmRzLAo+IGRhbiBjYXJwZW50ZXIKPiAKPj4gKwkJfQo+PiArCj4+ICsJCS8qIGZpbGwgZWFjaCBt
ZW1vcnkgcmVnaW9uIGludG8gcmVnaW9uX2FycmF5ICovCj4+ICsJCXJlZ2lvbl9hcnJheVtyZWdp
b25zLT5tcl9udW1dLnR5cGUgPSBNUl9BREQ7Cj4+ICsJCXJlZ2lvbl9hcnJheVtyZWdpb25zLT5t
cl9udW1dLmdwYSA9IGd1ZXN0X2dwYTsKPj4gKwkJcmVnaW9uX2FycmF5W3JlZ2lvbnMtPm1yX251
bV0udm0wX2dwYSA9IHZtMF9ncGE7Cj4+ICsJCXJlZ2lvbl9hcnJheVtyZWdpb25zLT5tcl9udW1d
LnNpemUgPSBwYWdlc2l6ZTsKPj4gKwkJcmVnaW9uX2FycmF5W3JlZ2lvbnMtPm1yX251bV0ucHJv
dCA9Cj4+ICsJCQkJKE1FTV9UWVBFX1dCICYgTUVNX1RZUEVfTUFTSykgfAo+PiArCQkJCShtZW1t
YXAtPnByb3QgJiBNRU1fQUNDRVNTX1JJR0hUX01BU0spOwo+PiArCQlyZWdpb25zLT5tcl9udW0r
KzsKPj4gKwkJaWYgKHJlZ2lvbnMtPm1yX251bSA9PSBtYXhfc2l6ZSkgewo+PiArCQkJcHJfZGVi
dWcoInJlZ2lvbiBidWZmZXIgZnVsbCwgc2V0ICYgcmVuZXcgcmVnaW9ucyFcbiIpOwo+PiArCQkJ
cmV0ID0gc2V0X21lbW9yeV9yZWdpb25zKHJlZ2lvbnMpOwo+PiArCQkJaWYgKHJldCA8IDApIHsK
Pj4gKwkJCQlwcl9lcnIoImZhaWxlZCB0byBzZXQgcmVnaW9ucyxyZXQ9JWQhXG4iLCByZXQpOwo+
PiArCQkJCWdvdG8gZXJyOwo+PiArCQkJfQo+PiArCQkJcmVnaW9ucy0+bXJfbnVtID0gMDsKPj4g
KwkJfQo+PiArCj4+ICsJCWxlbiAtPSBwYWdlc2l6ZTsKPj4gKwkJdm1hICs9IHBhZ2VzaXplOwo+
PiArCQlndWVzdF9ncGEgKz0gcGFnZXNpemU7Cj4+ICsJfQo+PiArCj4+ICsJcmV0ID0gc2V0X21l
bW9yeV9yZWdpb25zKHJlZ2lvbnMpOwo+PiArCWlmIChyZXQgPCAwKSB7Cj4+ICsJCXByX2Vycigi
ZmFpbGVkIHRvIHNldCByZWdpb25zLCByZXQ9JWQhXG4iLCByZXQpOwo+PiArCQlnb3RvIGVycjsK
Pj4gKwl9Cj4+ICsKPj4gKwlfX2ZyZWVfcGFnZShyZWdpb25zX2J1Zl9wZyk7Cj4+ICsJa2ZyZWUo
cmVnaW9ucyk7Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK2VycjoKPj4gKwlpZiAocmVnaW9uc19i
dWZfcGcpCj4+ICsJCV9fZnJlZV9wYWdlKHJlZ2lvbnNfYnVmX3BnKTsKPj4gKwlpZiAocGFnZSkK
Pj4gKwkJcHV0X3BhZ2UocGFnZSk7Cj4+ICsJa2ZyZWUocmVnaW9ucyk7Cj4+ICsJcmV0dXJuIHJl
dDsKPj4gK30KPj4gKwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
