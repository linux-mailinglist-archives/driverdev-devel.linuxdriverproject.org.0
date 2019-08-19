Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 689C491C32
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 270132043D;
	Mon, 19 Aug 2019 05:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyblqHI2gFtL; Mon, 19 Aug 2019 05:01:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2669A20108;
	Mon, 19 Aug 2019 05:01:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2569F1BF3BB
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2238F2010B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wz3BtMUqRh5 for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:01:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 7883220108
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:01:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 22:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="378074312"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2019 22:01:02 -0700
Subject: Re: [RFC PATCH 11/15] drivers/acrn: add the support of handling
 emulated ioreq
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-12-git-send-email-yakui.zhao@intel.com>
 <20190816133511.GC3632@kadam>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <0986d89b-c428-6e66-315c-dc2343ec4699@intel.com>
Date: Mon, 19 Aug 2019 12:54:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816133511.GC3632@kadam>
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
Cc: devel@driverdev.osuosl.org, Liu Shuo <shuo.a.liu@intel.com>,
 linux-kernel@vger.kernel.org, Jason Chen CJ <jason.cj.chen@intel.com>,
 Yin FengWei <fengwei.yin@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAyMTozOSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBG
cmksIEF1ZyAxNiwgMjAxOSBhdCAxMDoyNTo1MkFNICswODAwLCBaaGFvIFlha3VpIHdyb3RlOgo+
PiAraW50IGFjcm5faW9yZXFfY3JlYXRlX2NsaWVudCh1bnNpZ25lZCBzaG9ydCB2bWlkLAo+PiAr
CQkJICAgICBpb3JlcV9oYW5kbGVyX3QgaGFuZGxlciwKPj4gKwkJCSAgICAgdm9pZCAqY2xpZW50
X3ByaXYsCj4+ICsJCQkgICAgIGNoYXIgKm5hbWUpCj4+ICt7Cj4+ICsJc3RydWN0IGFjcm5fdm0g
KnZtOwo+PiArCXN0cnVjdCBpb3JlcV9jbGllbnQgKmNsaWVudDsKPj4gKwlpbnQgY2xpZW50X2lk
Owo+PiArCj4+ICsJbWlnaHRfc2xlZXAoKTsKPj4gKwo+PiArCXZtID0gZmluZF9nZXRfdm0odm1p
ZCk7Cj4+ICsJaWYgKHVubGlrZWx5KCF2bSB8fCAhdm0tPnJlcV9idWYpKSB7Cj4+ICsJCXByX2Vy
cigiYWNybi1pb3JlcTogZmFpbGVkIHRvIGZpbmQgdm0gZnJvbSB2bWlkICVkXG4iLCB2bWlkKTsK
Pj4gKwkJcHV0X3ZtKHZtKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiArCj4+ICsJ
Y2xpZW50X2lkID0gYWxsb2NfY2xpZW50KCk7Cj4+ICsJaWYgKHVubGlrZWx5KGNsaWVudF9pZCA8
IDApKSB7Cj4+ICsJCXByX2VycigiYWNybi1pb3JlcTogdm1bJWRdIGZhaWxlZCB0byBhbGxvYyBp
b3JlcSBjbGllbnRcbiIsCj4+ICsJCSAgICAgICB2bWlkKTsKPj4gKwkJcHV0X3ZtKHZtKTsKPj4g
KwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiArCj4+ICsJY2xpZW50ID0gYWNybl9pb3JlcV9n
ZXRfY2xpZW50KGNsaWVudF9pZCk7Cj4+ICsJaWYgKHVubGlrZWx5KCFjbGllbnQpKSB7Cj4+ICsJ
CXByX2VycigiZmFpbGVkIHRvIGdldCB0aGUgY2xpZW50LlxuIik7Cj4+ICsJCXB1dF92bSh2bSk7
Cj4+ICsJCXJldHVybiAtRUlOVkFMOwo+IAo+IERvIHdlIG5lZWQgdG8gY2xlYW4gdXAgdGhlIGFs
bG9jX2NsaWVudCgpIGFsbG9jYXRpb24/CgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpUaGUgZnVu
Y3Rpb24gb2YgYWNybl9pb2NyZXFfZ2V0X2NsaWVudCBpcyB1c2VkIHRvIHJldHVybiB0aGUgY2xp
ZW50IGZvciAKdGhlIGdpdmVuIGNsaWVudF9pZC4gKFRoZSByZWZfY291bnQgb2YgY2xpZW50IGlz
IGFsc28gYWRkZWQpLiBJZiBpdCBpcyAKTlVMTCwgaXQgaW5kaWNhdGVzIHRoYXQgaXQgaXMgYWxy
ZWFkeSByZWxlYXNlZCBpbiBhbm90aGVyIHBsYWNlLgoKSW4gdGhlIGZ1bmN0aW9uIG9mIGFjcm5f
aW9yZXFfY3JlYXRlX2NsaWVudCwgd2UgZG9uJ3QgbmVlZCB0byBjbGVhbiB1cCAKdGhlIGFsbG9j
X2NsaWVudCBhcyBpdCBhbHdheXMgZXhpc3RzIGluIGNvdXJzZSBvZiBjcmVhdGluZ19jbGllbnQu
Cgo+IAo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgo+IAo+PiArCX0KPj4gKwo+PiArCWlmICho
YW5kbGVyKSB7Cj4+ICsJCWNsaWVudC0+aGFuZGxlciA9IGhhbmRsZXI7Cj4+ICsJCWNsaWVudC0+
YWNybl9jcmVhdGVfa3RocmVhZCA9IHRydWU7Cj4+ICsJfQo+PiArCj4+ICsJY2xpZW50LT5yZWZf
dm0gPSB2bTsKPj4gKwljbGllbnQtPnZtaWQgPSB2bWlkOwo+PiArCWNsaWVudC0+Y2xpZW50X3By
aXYgPSBjbGllbnRfcHJpdjsKPj4gKwlpZiAobmFtZSkKPj4gKwkJc3RybmNweShjbGllbnQtPm5h
bWUsIG5hbWUsIHNpemVvZihjbGllbnQtPm5hbWUpIC0gMSk7Cj4+ICsJcndsb2NrX2luaXQoJmNs
aWVudC0+cmFuZ2VfbG9jayk7Cj4+ICsJSU5JVF9MSVNUX0hFQUQoJmNsaWVudC0+cmFuZ2VfbGlz
dCk7Cj4+ICsJaW5pdF93YWl0cXVldWVfaGVhZCgmY2xpZW50LT53cSk7Cj4+ICsKPj4gKwkvKiBX
aGVuIGl0IGlzIGFkZGVkIHRvIGlvcmVxX2NsaWVudF9saXN0LCB0aGUgcmVmY250IGlzIGluY3Jl
YXNlZCAqLwo+PiArCXNwaW5fbG9ja19iaCgmdm0tPmlvcmVxX2NsaWVudF9sb2NrKTsKPj4gKwls
aXN0X2FkZCgmY2xpZW50LT5saXN0LCAmdm0tPmlvcmVxX2NsaWVudF9saXN0KTsKPj4gKwlzcGlu
X3VubG9ja19iaCgmdm0tPmlvcmVxX2NsaWVudF9sb2NrKTsKPj4gKwo+PiArCXByX2luZm8oImFj
cm4taW9yZXE6IGNyZWF0ZWQgaW9yZXEgY2xpZW50ICVkXG4iLCBjbGllbnRfaWQpOwo+PiArCj4+
ICsJcmV0dXJuIGNsaWVudF9pZDsKPj4gK30KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
