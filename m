Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E176AE33B
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 07:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5BAA4214E9;
	Tue, 10 Sep 2019 05:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-vp2bCDKke7; Tue, 10 Sep 2019 05:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99BDB21505;
	Tue, 10 Sep 2019 05:28:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8678D1BF2F4
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 05:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8324685D54
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 05:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRc8QEatFB0e for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 05:28:29 +0000 (UTC)
X-Greylist: delayed 00:16:57 by SQLgrey-1.7.6
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
 [217.26.49.173])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A92285D52
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 05:28:29 +0000 (UTC)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
 by mxout013.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <lkml.sandro@volery.com>)
 id 1i7YR5-000LCo-Nn; Tue, 10 Sep 2019 07:11:27 +0200
Received: from [213.55.220.251] (helo=[100.66.103.90])
 by asmtp012.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <lkml.sandro@volery.com>)
 id 1i7YR5-000H1j-FK; Tue, 10 Sep 2019 07:11:27 +0200
X-Authenticated-Sender-Id: lkml.sandro@volery.com
From: Sandro Volery LKML <lkml.sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2] Staging: gasket: Use temporaries to reduce line length.
Date: Tue, 10 Sep 2019 07:11:26 +0200
Message-Id: <73C0743C-6864-4868-829B-D567F12A9463@volery.com>
References: <20190910050557.GA8338@volery>
In-Reply-To: <20190910050557.GA8338@volery>
To: Sandro Volery <sandro@volery.com>
X-Mailer: iPhone Mail (17A5831c)
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
 linux-kernel@vger.kernel.org, rspringer@google.com, joe@perches.com,
 toddpoynor@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V293Li4uIEkgY2hlY2tlZCwgY29tcGlsZWQgYW5kIHN0aWxsIHNlbnQgdGhlIHdyb25nIHRoaW5n
IGFnYWluLiBJJ20gZ29ubmEgaGF2ZSB0byBnaXZlIHRoaXMgdXAgc29vbiBpZiBpIGNhbid0IGdl
dCBpdCByaWdodC4KClNhbmRybyBWCgo+IE9uIDEwIFNlcCAyMDE5LCBhdCAwNzowNiwgU2FuZHJv
IFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+IHdyb3RlOgo+IAo+IO+7v1VzaW5nIHRlbXBvcmFy
aWVzIGZvciBnYXNrZXRfcGFnZV90YWJsZSBlbnRyaWVzIHRvIHJlbW92ZSBzY25wcmludGYoKQo+
IHN0YXRlbWVudHMgYW5kIHJlZHVjZSBsaW5lIGxlbmd0aCwgYXMgc3VnZ2VzdGVkIGJ5IEpvZSBQ
ZXJjaGVzLiBUaGFua3MhCj4gCj4gU2lnbmVkLW9mZi1ieTogU2FuZHJvIFZvbGVyeSA8c2FuZHJv
QHZvbGVyeS5jb20+Cj4gLS0tCj4gZHJpdmVycy9zdGFnaW5nL2dhc2tldC9hcGV4X2RyaXZlci5j
IHwgMjAgKysrKysrKysrLS0tLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2dh
c2tldC9hcGV4X2RyaXZlci5jIGIvZHJpdmVycy9zdGFnaW5nL2dhc2tldC9hcGV4X2RyaXZlci5j
Cj4gaW5kZXggMjk3M2JiOTIwYTI2Li4xNmFjNDMyOWQ2NWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL2dhc2tldC9hcGV4X2RyaXZlci5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2dh
c2tldC9hcGV4X2RyaXZlci5jCj4gQEAgLTUwOSw2ICs1MDksOCBAQCBzdGF0aWMgc3NpemVfdCBz
eXNmc19zaG93KHN0cnVjdCBkZXZpY2UgKmRldmljZSwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUg
KmF0dHIsCj4gICAgc3RydWN0IGdhc2tldF9kZXYgKmdhc2tldF9kZXY7Cj4gICAgc3RydWN0IGdh
c2tldF9zeXNmc19hdHRyaWJ1dGUgKmdhc2tldF9hdHRyOwo+ICAgIGVudW0gc3lzZnNfYXR0cmli
dXRlX3R5cGUgdHlwZTsKPiArICAgIHN0cnVjdCBnYXNrZXRfcGFnZV90YWJsZSAqZ3B0Owo+ICsg
ICAgdWludCB2YWw7Cj4gCj4gICAgZ2Fza2V0X2RldiA9IGdhc2tldF9zeXNmc19nZXRfZGV2aWNl
X2RhdGEoZGV2aWNlKTsKPiAgICBpZiAoIWdhc2tldF9kZXYpIHsKPiBAQCAtNTI0LDI5ICs1MjYs
MjUgQEAgc3RhdGljIHNzaXplX3Qgc3lzZnNfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsIHN0
cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICAgIH0KPiAKPiAgICB0eXBlID0gKGVudW0g
c3lzZnNfYXR0cmlidXRlX3R5cGUpZ2Fza2V0X2F0dHItPmRhdGEuYXR0cl90eXBlOwo+ICsgICAg
Z3B0ID0gZ2Fza2V0X2Rldi0+cGFnZV90YWJsZVswXTsKPiAgICBzd2l0Y2ggKHR5cGUpIHsKPiAg
ICBjYXNlIEFUVFJfS0VSTkVMX0hJQl9QQUdFX1RBQkxFX1NJWkU6Cj4gLSAgICAgICAgcmV0ID0g
c2NucHJpbnRmKGJ1ZiwgUEFHRV9TSVpFLCAiJXVcbiIsCj4gLSAgICAgICAgICAgICAgICBnYXNr
ZXRfcGFnZV90YWJsZV9udW1fZW50cmllcygKPiAtICAgICAgICAgICAgICAgICAgICBnYXNrZXRf
ZGV2LT5wYWdlX3RhYmxlWzBdKSk7Cj4gKyAgICAgICAgdmFsID0gZ2Fza2V0X3BhZ2VfdGFibGVf
bnVtX3NpbXBsZV9lbnRyaWVzKGdwdCk7Cj4gICAgICAgIGJyZWFrOwo+ICAgIGNhc2UgQVRUUl9L
RVJORUxfSElCX1NJTVBMRV9QQUdFX1RBQkxFX1NJWkU6Cj4gLSAgICAgICAgcmV0ID0gc2NucHJp
bnRmKGJ1ZiwgUEFHRV9TSVpFLCAiJXVcbiIsCj4gLSAgICAgICAgICAgICAgICBnYXNrZXRfcGFn
ZV90YWJsZV9udW1fc2ltcGxlX2VudHJpZXMoCj4gLSAgICAgICAgICAgICAgICAgICAgZ2Fza2V0
X2Rldi0+cGFnZV90YWJsZVswXSkpOwo+ICsgICAgICAgIHZhbCA9IGdhc2tldF9wYWdlX3RhYmxl
X251bV9zaW1wbGVfZW50cmllcyhncHQpOwo+ICAgICAgICBicmVhazsKPiAgICBjYXNlIEFUVFJf
S0VSTkVMX0hJQl9OVU1fQUNUSVZFX1BBR0VTOgo+IC0gICAgICAgIHJldCA9IHNjbnByaW50Zihi
dWYsIFBBR0VfU0laRSwgIiV1XG4iLAo+IC0gICAgICAgICAgICAgICAgZ2Fza2V0X3BhZ2VfdGFi
bGVfbnVtX2FjdGl2ZV9wYWdlcygKPiAtICAgICAgICAgICAgICAgICAgICBnYXNrZXRfZGV2LT5w
YWdlX3RhYmxlWzBdKSk7Cj4gKyAgICAgICAgdmFsID0gZ2Fza2V0X3BhZ2VfdGFibGVfbnVtX2Fj
dGl2ZV9wYWdlcyhncHQpOwo+ICAgICAgICBicmVhazsKPiAgICBkZWZhdWx0Ogo+ICAgICAgICBk
ZXZfZGJnKGdhc2tldF9kZXYtPmRldiwgIlVua25vd24gYXR0cmlidXRlOiAlc1xuIiwKPiAgICAg
ICAgICAgIGF0dHItPmF0dHIubmFtZSk7Cj4gICAgICAgIHJldCA9IDA7Cj4gLSAgICAgICAgYnJl
YWs7Cj4gKyAgICAgICAgZ290byBleGl0Owo+ICAgIH0KPiAtCj4gKyAgICByZXQgPSBzY25wcmlu
dGYoYnVmLCBQQUdFX1NJWkUsICIldVxuIiwgdmFsKTsKPiArZXhpdDoKPiAgICBnYXNrZXRfc3lz
ZnNfcHV0X2F0dHIoZGV2aWNlLCBnYXNrZXRfYXR0cik7Cj4gICAgZ2Fza2V0X3N5c2ZzX3B1dF9k
ZXZpY2VfZGF0YShkZXZpY2UsIGdhc2tldF9kZXYpOwo+ICAgIHJldHVybiByZXQ7Cj4gLS0gCj4g
Mi4yMy4wCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
