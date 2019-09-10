Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3ECAE32D
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 06:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17AC485D56;
	Tue, 10 Sep 2019 04:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dZlEye4BluZI; Tue, 10 Sep 2019 04:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7406285D3D;
	Tue, 10 Sep 2019 04:51:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA0AB1BF316
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 04:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E48CA86123
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 04:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cOI4hy48OH7T for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 04:51:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
 [217.26.49.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B73A86096
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 04:51:47 +0000 (UTC)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
 by mxout013.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7Y7z-000Htx-Gd; Tue, 10 Sep 2019 06:51:43 +0200
Received: from [213.55.220.251] (helo=[100.66.103.90])
 by asmtp012.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7Y7z-0003VR-A3; Tue, 10 Sep 2019 06:51:43 +0200
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] Staging: gasket: Use temporaries to reduce line length.
Date: Tue, 10 Sep 2019 06:51:42 +0200
Message-Id: <32BC7615-D278-4EBD-B68B-2891EF996942@volery.com>
References: <348e946eb5e90c1af3971fd50b5678668cc1a3d3.camel@perches.com>
In-Reply-To: <348e946eb5e90c1af3971fd50b5678668cc1a3d3.camel@perches.com>
To: Joe Perches <joe@perches.com>
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
 linux-kernel@vger.kernel.org, rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cgo+IE9uIDEwIFNlcCAyMDE5LCBhdCAwMDozMCwgSm9lIFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNv
bT4gd3JvdGU6Cj4gCj4g77u/T24gTW9uLCAyMDE5LTA5LTA5IGF0IDIyOjI4ICswMjAwLCBTYW5k
cm8gVm9sZXJ5IHdyb3RlOgo+PiBVc2luZyB0ZW1wb3JhcmllcyBmb3IgZ2Fza2V0X3BhZ2VfdGFi
bGUgZW50cmllcyB0byByZW1vdmUgc2NucHJpbnRmKCkKPj4gc3RhdGVtZW50cyBhbmQgcmVkdWNl
IGxpbmUgbGVuZ3RoLCBhcyBzdWdnZXN0ZWQgYnkgSm9lIFBlcmNoZXMuIFRoYW5rcyEKPiAKPiBu
YWsuICBTbG93IGRvd24uICBZb3UgYnJva2UgdGhlIGNvZGUuCj4gCj4gUGxlYXNlIGJlIF93YXlf
IG1vcmUgY2FyZWZ1bCBhbmQgdmVyaWZ5IGZvciB5b3Vyc2VsZgo+IHRoZSBjb2RlIHlvdSBzdWJt
aXQgX2JlZm9yZV8geW91IHN1Ym1pdCBpdC4KPiAKPiBjb21waWxlL3Rlc3QvdmVyaWZ5LCB0d2lj
ZSBpZiBuZWNlc3NhcnkuCj4gCgpTaG9vdC4gSSdtIHNvcnJ5IEknbSBqdXN0IHJlYWxseSB0cnlp
bmcgdG8gZ2V0IGludG8gYWxsIHRoaXMuLi4KCgo+IFlvdSBhbHNvIHNob3VsZCBoYXZlIGNjJ2Qg
bWUgb24gdGhpcyBwYXRjaC4KPiAKCldpbGwgZG8hIEknbGwgc3VibWl0IHYyIHRoaXMgYWZ0ZXJu
b29uLgoKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9nYXNrZXQvYXBleF9kcml2ZXIu
YyBiL2RyaXZlcnMvc3RhZ2luZy9nYXNrZXQvYXBleF9kcml2ZXIuYwo+IFtdCj4+IEBAIC01MjQs
MjkgKzUyNiwyNSBAQCBzdGF0aWMgc3NpemVfdCBzeXNmc19zaG93KHN0cnVjdCBkZXZpY2UgKmRl
dmljZSwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4+ICAgIH0KPj4gCj4+ICAgIHR5
cGUgPSAoZW51bSBzeXNmc19hdHRyaWJ1dGVfdHlwZSlnYXNrZXRfYXR0ci0+ZGF0YS5hdHRyX3R5
cGU7Cj4+ICsgICAgZ3B0ID0gZ2Fza2V0X2Rldi0+cGFnZV90YWJsZVswXTsKPj4gICAgc3dpdGNo
ICh0eXBlKSB7Cj4+ICAgIGNhc2UgQVRUUl9LRVJORUxfSElCX1BBR0VfVEFCTEVfU0laRToKPj4g
LSAgICAgICAgcmV0ID0gc2NucHJpbnRmKGJ1ZiwgUEFHRV9TSVpFLCAiJXVcbiIsCj4+IC0gICAg
ICAgICAgICAgICAgZ2Fza2V0X3BhZ2VfdGFibGVfbnVtX2VudHJpZXMoCj4+IC0gICAgICAgICAg
ICAgICAgICAgIGdhc2tldF9kZXYtPnBhZ2VfdGFibGVbMF0pKTsKPj4gKyAgICAgICAgdmFsID0g
Z2Fza2V0X3BhZ2VfdGFibGVfbnVtX3NpbXBsZV9lbnRyaWVzKGdwdCk7Cj4gCj4gWW91IGxpa2Vs
eSBkdXBsaWNhdGVkIHRoaXMgbGluZSB2aWEgY29weS9wYXN0ZS4KPiBUaGlzIHNob3VsZCBiZToK
PiAgICAgICAgdmFsID0gZ2Fza2V0X3BhZ2VfdGFibGVfbnVtX2VudHJpZXMoZ3B0KTsKPiAKClRo
YW5rcyBmb3IgYmVpbmcgcGF0aWVudCB3aXRoIG1lIHNvIGZhci4uLiBJJ2QgaW1hZ2luZSBvdGhl
cnMgd291bGQndmUgZnJlYWtlZCBvdXQgYXQgbWUgYnkgbm93IDopCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
