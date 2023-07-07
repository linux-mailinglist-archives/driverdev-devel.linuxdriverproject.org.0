Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD06474BA16
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jul 2023 01:45:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69A9161294;
	Fri,  7 Jul 2023 23:45:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69A9161294
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3k-XV1DqrIR; Fri,  7 Jul 2023 23:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36F8260DF4;
	Fri,  7 Jul 2023 23:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36F8260DF4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 834461BF847
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 23:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B5BE61294
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 23:45:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B5BE61294
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ufRA0xHCOIqd for <devel@linuxdriverproject.org>;
 Fri,  7 Jul 2023 23:45:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5599C60DF4
Received: from exciting-galois.89-116-52-173.plesk.page (unknown
 [154.56.63.221])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5599C60DF4
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 23:45:26 +0000 (UTC)
Received: from deepli.service (unknown [154.56.63.221])
 by exciting-galois.89-116-52-173.plesk.page (Postfix) with ESMTPSA id
 BCBF3E64796
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 23:24:54 +0000 (UTC)
Received-SPF: pass (deepli.service: connection is authenticated)
Subject: Introduction =?utf-8?b?4oCT?= Inna Zaimenko & Deepli
From: inna@deepli-service.net
To: devel@linuxdriverproject.org
MIME-Version: 1.0
Message-Id: <20230707232454.BCBF3E64796@exciting-galois.89-116-52-173.plesk.page>
Date: Fri,  7 Jul 2023 23:24:54 +0000 (UTC)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=deepli-service.net; 
 s=default; t=1688772294;
 bh=REhXi8aXUkL0Fm80I1uyXx/5x2Pzi3kIXbKBbRp/Zjs=; h=Subject:From:To;
 b=gV8CHv5EooGG2dLGNfMd+bhPGvVFFCF7qna6IzxahFb9Gb3LQ5VVc4tuQZIRF1UQu
 Nt9oouZ16idDlwRqMlovhMjfeMEPE6r8oaCjo481lYinn3jBNk5x0TS+By0T7HoUCz
 szaFn3ivz+ISonMjaYXsgveQTDIkziYLIr30diyg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=deepli-service.net
 header.i=@deepli-service.net header.a=rsa-sha256 header.s=default
 header.b=gV8CHv5E
X-Mailman-Original-Authentication-Results: deepli.service;
 spf=pass (sender IP is 154.56.63.221) smtp.mailfrom=inna@deepli-service.net
 smtp.helo=deepli.service
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBTaXIgb3IgTWFkYW0sCgpteSBuYW1lIGlzIElubmEgWmFpbWVua28sIEkgYW0gYSBDRU8g
b2YgRGVlcGxpIEdtYkggKGh0dHBzOi8vZGVlcGxpLm5ldCksIGEgY29tcGFueSBpbiBHZXJtYW55
IHRoYXQgc3BlY2lhbGl6ZXMgb24gZGF0YSBtaW5pbmcgYW5kIGJ1c2luZXNzIHBhcnRuZXJzaGlw
cy4gV2UgYWxzbyBoYXZlIHByZXNlbmNlIGluIFVBRSB3b3JraW5nIHRpZ2h0bHkgd2l0aCBjb21w
YW5pZXMgYW5kIGluZGl2aWR1YWxzIGFjcm9zcyB0aGUgZ2xvYmUuCgpPdXIgYWN0aXZpdGllcyBh
cmUgc3ByZWFkIGFjcm9zcyBmb29kLCBtZWRpY2FsLCBwaGFybWFjZXV0aWNhbCwgYmlvdGVjaG5v
bG9neSwgaGVhbHRodGVjaCwgY2hlbWljYWwgaW5kdXN0cmllcywgYnV0IHdlIGFsc28gaGFkIHBy
b2plY3RzIHdpdGggZS1jb21tZXJjZSBhbmQgc3RlZWwgaW5kdXN0cmllcy4KCk15IGJhY2tncm91
bmQgaXMgaW4gQmlvbG9neSwgZGlkIFBoRCBpbiBJbnRlZ3JhdGl2ZSBPbmNvbG9neSBhdCBDaGFy
aXRlIGFuZCBNYXN0ZXIncyBpbiBDYW5jZXIgQmlvbG9neSBhdCBIZWlkZWxiZXJnIFVuaXZlcnNp
dHkuIEkgcnVuIERlZXBsaSBzaW5jZSAyMDE4LCB3ZSBjYW4gYmUgc2VlbiBhcyBhbiBJVCBjb21w
YW55LCBidXQgd2UgYWxzbyBkbyBtYXJrZXRpbmcsIGJ1c2luZXNzIHN0cmF0ZWd5LCByZXNlYXJj
aCwgYW5kIGhlbHAgaW4gZ2VuZXJhbCB3aXRoIHdoYXQgd2UgY2FuIHRvIHRob3NlIGNvbXBhbmll
cyBhbmQgaW5kaXZpZHVhbHMgaW50ZXJlc3RlZC4KCldlIGhhdmUgc2V2ZXJhbCBzb2Z0d2FyZSBz
b2x1dGlvbnMgZm9yIGRhdGEgbWluaW5nIG9mIHNjaWVudGlmaWMgbGl0ZXJhdHVyZSwgYnV0IHdl
IGFsc28gZG8gY3VzdG9tIGRhdGEgc2NpZW5jZSBhbmQgd2ViIGRldmVsb3BtZW50IHByb2plY3Rz
LiBXZSBoYXZlIGFjY2VzcyB0byAxLjYgbWlsbGlvbnMgc2NpZW50aXN0cyBhbmQgMTAgbWlsbGlv
bnMrIGNvbXBhbmllcy4KClRoZSBjb21wYW55IGlzIHdlbGwta25vd24gYXMgQS1MYWJJbnNpZGVy
IChmb3JtZXIgbmFtZSksIGFzIGEgc2luZ2xlIG5vbi10ZWNobmljYWwgZm91bmRlciB3aXRoIG5v
IGV4dGVybmFsIGZ1bmRpbmcsIEkgbWFuYWdlZCB0byBtYWtlIGEgZGVlcCB0ZWNobmljYWwgc29m
dHdhcmUgcHJvZHVjdCwgYWNhZGVtaWMgbGlmZSBzY2llbmNlIGxhYnMgaW4gRXVyb3BlIHdpdGgg
cmVhbC10aW1lIG1vbml0b3JpbmcgYW5kIGludGVyY29ubmVjdGVkIGxpdGVyYXR1cmUsIGhpcmUg
YSB0ZWFtIGFuZCBhY3F1aXJlIEIyQiBjdXN0b21lcnMuIFdlIGhhdmUgYmVlbiBvbiB0aGUgbWFy
a2V0IHdpdGggaXQgZm9yIDIgeWVhcnMsIGJ1dCBzb29uIHJlYWxpemVkIHRoYXQgdGhlIG1hcmtl
dCBpcyBzbWFsbCBhbmQgd2UgaGFkIHRvIGNoYW5nZSB0aGUgZm9jdXMgb24gY29uc3VsdGluZyBh
bmQgb3RoZXIgcHJvZHVjdHMuCgpXZSB3ZXJlIG9uIG5lZ290aWF0aW9uIG9mIDIwIG1pbGxpb24g
ZXVyb3MgY29udHJhY3Qgd2l0aCBhIG1lZGljYWwgbWFudWZhY3R1cmVyLCBhbmQgb24gMTIwIG1p
bGxpb24gZXVyb3MgY29udHJhY3Qgd2l0aCBhIGRydWcgbWFudWZhY3R1cmVyLiBUaGVzZSBhcmUg
YWxzbyB0aGUgcmVhc29ucyB3aHkgd2UgbW92ZWQgdG8gVUFFIGJlY2F1c2Ugb2YgdGF4IGFkdmFu
dGFnZXMuIFVuZm9ydHVuYXRlbHksIHRob3NlIHByb2plY3RzIGhhZCBzb21lIGlzc3VlcyBhbmQg
d2UgaGFkIHRvIGNvbnRpbnVlIHdpdGggb3VyIGJ1c2luZXNzLWFzLXVzdWFsLgoKRXhhbXBsZXMg
b2Ygb3VyIG5vbi1JVCBwcm9qZWN0cyBpbmNsdWRlOiBtYXJrZXQgcmVzZWFyY2ggZm9yIG1lZGlj
YWwgZGV2aWNlIG1hbnVmYWN0dXJlciwgYnVzaW5lc3Mgc3RyYXRlZ3kgZm9yIGdyb3d0aCBmb3Ig
cGxhbnQgZW5naW5lZXJpbmcgY29tcGFueSwgZmluZGluZyBzdXBwbGllcnMgb3IgZGlzdHJpYnV0
b3JzIGZvciBtZWRpY2FsIGltcGxhbnQgY29tcGFuaWVzLCBmaW5kaW5nIGEgR01QIG1hbnVmYWN0
dXJlciBmb3IgYSBjbGluaWNhbCB0cmlhbCwgZmluZGluZyBqb3VybmFscyB0aGF0IGFyZSBpbnRl
cmVzdGVkIGluIGEgbWFudXNjcmlwdCBvZiBhIHNjaWVudGlzdCwgYW5kIGV2ZW4gZXN0YWJsaXNo
bWVudCBvZiB0d28gY29tcGFuaWVzIGluIFVBRSBmb3IgYSBwcm9qZWN0IG1hbmFnZW1lbnQgY29t
cGFueSBmcm9tIEdlcm1hbnkuCgpJbiBzdW1tYXJ5LCB3ZSBjYW4gb2ZmZXI6CuKAkyBkYXRhIHNj
aWVuY2UgYW5kIHdlYiBkZXZlbG9wbWVudArigJMgYnVzaW5lc3MgYW5kIG1hcmtldGluZyBzdHJh
dGVneQrigJMgc2VhcmNoIGZvciBpbmZvcm1hdGlvbiBvZiBpbnRlcmVzdCBpbmNsLiByZXNlYXJj
aCwgc3VwcGxpZXIsIGV0Yy4K4oCTIGNvbXBhbnkgc2V0dXAgaW4gVUFFLgoKV291bGQgeW91IGJl
IGludGVyZXN0ZWQgaW4gd29ya2luZyB3aXRoIHVzPyBJcyB0aGVyZSBhbnl0aGluZyB3ZSBjYW4g
ZG8gZm9yIHlvdT8KCktpbmQgcmVnYXJkcywKSW5uYSBaYWltZW5rbwoKCkNFTyBhdCBEZWVwbGkg
R21iSApodHRwczovL2RlZXBsaS5uZXQKYy9vIEhRIEZlcmluZ2FzdHIuIDYsIDg1Nzc0IFVudGVy
ZsO2aHJpbmcsIEdlcm1hbnkKRElDIEJ1aWxkaW5nIDE2IEdyb3VuZCBGbG9vciwgRHViYWksIFVB
RQoKVG8gdW5zdWJzY3JpYmUsIHBsZWFzZSByZXR1cm4gbWUgYSBjb3JyZXNwb25kaW5nIGVtYWls
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
