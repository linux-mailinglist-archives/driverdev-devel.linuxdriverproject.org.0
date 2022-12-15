Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D2E64E250
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Dec 2022 21:28:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8390841A4C;
	Thu, 15 Dec 2022 20:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8390841A4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-duAEzYhA2M; Thu, 15 Dec 2022 20:28:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 164E941A4B;
	Thu, 15 Dec 2022 20:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 164E941A4B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA2B81BF329
 for <devel@linuxdriverproject.org>; Thu, 15 Dec 2022 20:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2E2461058
 for <devel@linuxdriverproject.org>; Thu, 15 Dec 2022 20:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2E2461058
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fIC0OTm5p9Vx for <devel@linuxdriverproject.org>;
 Thu, 15 Dec 2022 20:28:32 +0000 (UTC)
X-Greylist: delayed 00:07:07 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC3CD60806
Received: from lenlironp01-20.jcpenney.com (unknown [146.235.67.141])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC3CD60806
 for <devel@driverdev.osuosl.org>; Thu, 15 Dec 2022 20:28:31 +0000 (UTC)
IronPort-SDR: /AQ6VF0e5W1XRujutzQ47WdH1qoa3B2GN44u5OMsM8eebxHmy8spgeWSYzmH5BAsxGkMtgAgnA
 pLKAeBYvHlHBh8y8ucs5gKKSiLlwSJ6tkMHTj6x4p1pyOcnxRplSCzlQwz9yDlCEho1TYEHg7a
 lPjTSKI9j/9fTaPLZgAwIBescu05xAVBu2t3FZ8I+wH6+NyhnytQYca0okAwTWyDBG6v3mfkG9
 0SfomfsOwKq81LmWHK48BnuTQc9HQu2vagFZNfaV31yongyraMmY+yJ7wH56w6nHay6j7KPyG6
 sdINB5YdVcY1VsqLmfT8q3Gq
X-IronPort-AV: E=Sophos;i="5.96,248,1665464400"; d="scan'208";a="106140938"
X-HTML-Disclaimer: True
Received: from lblen16.jcpenney.com (HELO ovh.ca) ([10.111.195.0])
 by lenlironp01.jcpenney.com with ESMTP; 15 Dec 2022 14:21:18 -0600
From: "William D. Harris" <ovh@ovh.ca>
To: devel@driverdev.osuosl.org
Subject: PLEASE READ CAREFULLY
Date: 15 Dec 2022 21:21:14 +0100
Message-ID: <20221215212113.6F8586D397C34601@ovh.ca>
MIME-Version: 1.0
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
Reply-To: director@iglesiabautistacanutillo.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gRnJpZW5kLAoKRm9yZ2l2ZSBteSBtYW5uZXJzLCBJIGFtIExpZXV0ZW5hbnQgQ29sb25l
bCBXaWxsaWFtIEQuIEhhcnJpcywgYSAKMXN0IFNwZWNpYWwgRm9yY2VzIENvbW1hbmQgYW5kIFNw
ZWNpYWwgT3BlcmF0aW9ucyBDb21tYW5k4oCUQ2VudHJhbCAKYXR0YWNoZWQgdG8gVU4gcGVhY2Vr
ZWVwaW5nIGZvcmNlIGluIFN5cmlhLiBJIGhhdmUgYSBidXNpbmVzcyAKRGVhbC8gUHJvcG9zYWwg
Zm9yIHlvdS4gUGxlYXNlIGtpbmRseSBnZXQgYmFjayB0byBtZSBpZiAKaW50ZXJlc3RlZCwgZm9y
IG1vcmUgZGV0YWlscy4KClJlc3BlY3RmdWxseSwKTGlldXRlbmFudCBDb2xvbmVsIFdpbGxpYW0g
RC4gSGFycmlzClRoZSBpbmZvcm1hdGlvbiB0cmFuc21pdHRlZCBpcyBpbnRlbmRlZCBvbmx5IGZv
ciB0aGUgcGVyc29uIG9yIGVudGl0eSB0byB3aGljaCBpdCBpcyBhZGRyZXNzZWQgYW5kCm1heSBj
b250YWluIGNvbmZpZGVudGlhbCBhbmQvb3IgcHJpdmlsZWdlZCBtYXRlcmlhbC4gSWYgdGhlIHJl
YWRlciBvZiB0aGlzIG1lc3NhZ2UgaXMgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHlvdSBh
cmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgeW91ciBhY2Nlc3MgaXMgdW5hdXRob3JpemVkLCBhbmQg
YW55IHJldmlldywgZGlzc2VtaW5hdGlvbiwKZGlzdHJpYnV0aW9uIG9yIGNvcHlpbmcgb2YgdGhp
cyBtZXNzYWdlIGluY2x1ZGluZyBhbnkgYXR0YWNobWVudHMgaXMgc3RyaWN0bHkgcHJvaGliaXRl
ZC4gSWYgeW91IGFyZSBub3QKdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3Qg
dGhlIHNlbmRlciBhbmQgZGVsZXRlIHRoZSBtYXRlcmlhbCBmcm9tIGFueSBjb21wdXRlcgpUaGUg
aW5mb3JtYXRpb24gdHJhbnNtaXR0ZWQgaXMgaW50ZW5kZWQgb25seSBmb3IgdGhlIHBlcnNvbiBv
ciBlbnRpdHkgdG8NCndoaWNoIGl0IGlzIGFkZHJlc3NlZCBhbmQgbWF5IGNvbnRhaW4gY29uZmlk
ZW50aWFsIGFuZC9vciBwcml2aWxlZ2VkDQptYXRlcmlhbC4gIElmIHRoZSByZWFkZXIgb2YgdGhp
cyBtZXNzYWdlIGlzIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LA0KeW91IGFyZSBoZXJlYnkg
bm90aWZpZWQgdGhhdCB5b3VyIGFjY2VzcyBpcyB1bmF1dGhvcml6ZWQsIGFuZCBhbnkgcmV2aWV3
LA0KZGlzc2VtaW5hdGlvbiwgZGlzdHJpYnV0aW9uIG9yIGNvcHlpbmcgb2YgdGhpcyBtZXNzYWdl
IGluY2x1ZGluZyBhbnkNCmF0dGFjaG1lbnRzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuICBJZiB5
b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQNCnJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNl
bmRlciBhbmQgZGVsZXRlIHRoZSBtYXRlcmlhbCBmcm9tIGFueQ0KY29tcHV0ZXIuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
