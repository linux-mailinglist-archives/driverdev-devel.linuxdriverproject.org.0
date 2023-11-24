Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AD67F6F80
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Nov 2023 10:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDBB0613E4;
	Fri, 24 Nov 2023 09:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDBB0613E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EaC2oa4zNrkI; Fri, 24 Nov 2023 09:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF4A760AE8;
	Fri, 24 Nov 2023 09:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF4A760AE8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5FA81BF336
 for <devel@linuxdriverproject.org>; Fri, 24 Nov 2023 09:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAED1613E4
 for <devel@linuxdriverproject.org>; Fri, 24 Nov 2023 09:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAED1613E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hcPoFhzlMe-C for <devel@linuxdriverproject.org>;
 Fri, 24 Nov 2023 09:27:00 +0000 (UTC)
X-Greylist: delayed 2045 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 24 Nov 2023 09:27:00 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20E2A60AE8
Received: from mail.07d05.mspz7.gob.ec (mail.07d05.mspz7.gob.ec
 [181.211.163.250])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20E2A60AE8
 for <devel@linuxdriverproject.org>; Fri, 24 Nov 2023 09:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.07d05.mspz7.gob.ec (Postfix) with ESMTP id 2FE34803F7BFC;
 Fri, 24 Nov 2023 03:24:18 -0500 (-05)
Received: from mail.07d05.mspz7.gob.ec ([127.0.0.1])
 by localhost (mail.07d05.mspz7.gob.ec [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id IW1SSq1z48TW; Fri, 24 Nov 2023 03:24:17 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.07d05.mspz7.gob.ec (Postfix) with ESMTP id 4B1B0803F7C03;
 Fri, 24 Nov 2023 03:24:17 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.07d05.mspz7.gob.ec 4B1B0803F7C03
X-Amavis-Modified: Mail body modified (using disclaimer) -
 mail.07d05.mspz7.gob.ec
X-Virus-Scanned: amavisd-new at 07d05.mspz7.gob.ec
Received: from mail.07d05.mspz7.gob.ec ([127.0.0.1])
 by localhost (mail.07d05.mspz7.gob.ec [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dy2NHI2G58vM; Fri, 24 Nov 2023 03:24:16 -0500 (-05)
Received: from mail.07d05.mspz7.gob.ec (mail.07d05.mspz7.gob.ec
 [181.211.163.250])
 by mail.07d05.mspz7.gob.ec (Postfix) with ESMTP id 887C9803F7BE1;
 Fri, 24 Nov 2023 03:24:15 -0500 (-05)
Date: Fri, 24 Nov 2023 03:24:15 -0500 (ECT)
From: Thomas Mark <chrystian.encarnacion@07d05.mspz7.gob.ec>
Message-ID: <2134094494.42915.1700814255549.JavaMail.zimbra@07d05.mspz7.gob.ec>
Subject: anbieten
MIME-Version: 1.0
X-Originating-IP: [181.211.163.250]
X-Mailer: Zimbra 8.8.15_GA_4545 (zclient/8.8.15_GA_4545)
Thread-Index: AUsup5SGIY8TDrEBNOVVilx7QxCQug==
Thread-Topic: anbieten
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=07d05.mspz7.gob.ec; 
 s=19FF43F2-B76A-11EC-B674-AA5B8448773A; t=1700814257;
 bh=GgLlNVqQKO3528e7kuaZrEMOR9C8OVRQXqlKeuL1ZKM=;
 h=Date:From:Message-ID:MIME-Version;
 b=h2pNnJo16fvHuvuoo4+3zp6IAgTsDo041Y9R5F11xuWbgq4ro82UaPykwNyZNC0ug
 dD4+ggUCmTbFEccXAegZBWuu0YObg9It3VDtYnMuSYvb4jePpr25DjOA5XoFCgYsqK
 2z2nMz0lAUjYDAkDlte+BE0bG0XKdWzVIphXMXQLGoZYltPiLVV/vK4v/9+Pbgxorf
 MVJTsKA58RQQ1CvacKq4AczOPXC/HeSyZPXoRHmB8HbgHkQvRwnUmZwwpiBlMD6TJ6
 9eCSJHkGmuaN2K617fEMKuvJZq7qrOqAiIm1cXzp8Hc0+cXLA20FuqmIIyobFmB4v8
 YNMm+xIDT4tpw==
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
Reply-To: thomasmarkstarting@skiff.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpIYWxsb8KgwqBXaXIgZnJldWVuIHVucywgSWhuZW4gZWluIERhcmxlaGVuIG1pdCBlaW5lbSBq
w6RocmxpY2hlbiBaaW5zc2F0eiB2b24gMSw1JSBhbmJpZXRlbiB6dSBrw7ZubmVuLiBNaXQgS3Jl
ZGl0YmV0csOkZ2VuIHZvbiAyMC4wMDAgRXVybyBiaXMgNTAuMDAwLjAwMCBFdXJvIGvDtm5uZW4g
d2lyIElobmVuIGhlbGZlbiwgSWhyZW4gZmluYW56aWVsbGVuIEJlZGFyZiB6dSBkZWNrZW4uwqAg
wqBXZW5uIFNpZSBhbiBkaWVzZXIgTcO2Z2xpY2hrZWl0IGludGVyZXNzaWVydCBzaW5kLCB0ZWls
ZW4gU2llIHVuc2RpZXMgYml0dGUgbWl0LiBXZW5uIFNpZSB1bnNlcmUgRS1NYWlscyBuaWNodCBt
ZWhyIGVyaGFsdGVuIG3DtmNodGVuLCBzZW5kZW4gU2llIHVucyBlaW5lIEUtTWFpbCBtaXQgZGVt
IEJldHJlZmYgQWJtZWxkZW4sIHVuZCB3aXIgd2VyZGVuIFNpZWF1cyB1bnNlcmVyIE1haWxpbmds
aXN0ZSBlbnRmZXJuZW4uwqAgwqBNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuwqAgwqBUaG9tYXMg
TWFyawoobnVsbCkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
