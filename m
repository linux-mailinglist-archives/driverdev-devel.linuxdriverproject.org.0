Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E651565293F
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Dec 2022 23:58:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 833D8417FA;
	Tue, 20 Dec 2022 22:58:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 833D8417FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhVEI36-T2FR; Tue, 20 Dec 2022 22:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48AA0417E0;
	Tue, 20 Dec 2022 22:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48AA0417E0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EA151BF25B
 for <devel@linuxdriverproject.org>; Tue, 20 Dec 2022 22:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A3F981F58
 for <devel@linuxdriverproject.org>; Tue, 20 Dec 2022 22:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A3F981F58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TX3a2dLAVNaj for <devel@linuxdriverproject.org>;
 Tue, 20 Dec 2022 22:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C942781F47
Received: from mail.emporsis.cat (mail.emporsis.cat [195.55.176.214])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C942781F47
 for <devel@driverdev.osuosl.org>; Tue, 20 Dec 2022 22:58:03 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zcs-mta-2.hosppal.es (Postfix) with ESMTP id D937A621B3A3;
 Tue, 20 Dec 2022 23:45:01 +0100 (CET)
Received: from mail.emporsis.cat ([127.0.0.1])
 by localhost (zcs-mta-2.hosppal.es [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PeEQa_LSBfjT; Tue, 20 Dec 2022 23:45:01 +0100 (CET)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zcs-mta-2.hosppal.es (Postfix) with ESMTP id 635CA621B3A2;
 Tue, 20 Dec 2022 23:44:59 +0100 (CET)
X-Amavis-Modified: Mail body modified (using disclaimer) - zcs-mta-2.hosppal.es
X-Virus-Scanned: amavisd-new at 
Received: from mail.emporsis.cat ([127.0.0.1])
 by localhost (zcs-mta-2.hosppal.es [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ciqjPOQKkxUf; Tue, 20 Dec 2022 23:44:59 +0100 (CET)
Received: from zcs-store-1.hosppal.es (zcs-store-1.hosppal.es [194.0.101.228])
 by zcs-mta-2.hosppal.es (Postfix) with ESMTP id 0C53A62198EA;
 Tue, 20 Dec 2022 23:44:38 +0100 (CET)
Date: Tue, 20 Dec 2022 23:44:37 +0100 (CET)
From: Lukas <xarrebola@ssibe.cat>
Message-ID: <696062899.7593237.1671576277994.JavaMail.zimbra@ssibe.cat>
Subject: Re: PREVIEW
MIME-Version: 1.0
X-Originating-IP: [5.254.2.190]
X-Mailer: Zimbra 8.8.15_GA_4464 (zclient/8.8.15_GA_4464)
Thread-Index: 3lf5kmZw1sCuqfJbEFBCsIfQ5lKCWw==
Thread-Topic: PREVIEW
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
Reply-To: Lukas <lukas@marineinzynieriagleam-jobs.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpIZWxsbywKCkkgYW0gd3JpdGluZyB0byB5b3Ugb24gYmVoYWxmIG9mIG15IGNsaWVudCB3aG8g
aXMgY3VycmVudGx5IGJlaW5nIGhlbGQgYnkgdGhlIFNhdWRpIGF1dGhvcml0aWVzLiBVbnRpbCBJ
IGtub3cgb2YgdGhlIGxldmVsIG9mIHlvdXIgY29tbWl0bWVudCB0byB0aGlzIHRyYW5zYWN0aW9u
IGl0IHdpbGwgYmUgd2lzZSB0byBrZWVwIHRoZSBpZGVudGl0eSBvZiBteSBjbGllbnQgYXMgYW4g
YW5vbnltb3VzLiBNeSBuYW1lIGlzIEx1a2FzLCBJIGFtIGFuIGludmVzdG1lbnQgcG9ydGZvbGlv
IE1hbmFnZXIsIGFuZCBteSBjbGllbnQgaGFzIGEgbGFyZ2Ugc3VtIG9mIG1vbmV5IGFuZCBoZSBp
cyBsb29raW5nIGZvciBzb21lb25lIHRvIGhlbHAgaGltIG1hbmFnZSB0aGUgZnVuZHMgYnkgaW52
ZXN0aW5nIGl0IGluIGFueSBwcm9maXRhYmxlIGJ1c2luZXNzIG9wcG9ydHVuaXR5IGluIHlvdXIg
aG9tZSBjb3VudHJ5LgoKVGhlIFNhdWRpIGdvdmVybm1lbnQgZmlsZWQgY2hhcmdlcyBhZ2FpbnN0
IG15LWNsaWVudCB3aXRoIHRoZSBzb2xlIGFpbSBvZiBrZWVwaW5nIGhpbSBpbiBjYXB0aXZpdHkg
aW5kZWZpbml0ZWx5LiBBIHZhcmlldHkgb2YgbG9jYWwgYW5kIGZvcmVpZ24gcG9saXRpY2lhbnMs
IGNpdmlsIGFjdGl2aXN0cywgYW5kIGpvdXJuYWxpc3RzIGNvbnNpZGVyIHRoZSBwcm9jZXNzIGxl
YWRpbmcgdG8gdGhlIGRldGVudGlvbiBvZiBteSBjbGllbnQgdG8gYmUgcG9saXRpY2FsbHkgbW90
aXZhdGVkLiBNeSBjbGllbnQncyBpbnZvbHZlbWVudCBhbmQgZmluYW5jaWFsIHN1cHBvcnQgZm9y
IEphbWFsIEFobWFkIEtoYXNob2dnaSBwb3NlZCB0aGUgbW9zdCBjaGFsbGVuZ2UgZXZlciB0byBN
b2hhbW1lZCBiaW4gU2FsbWFuIEFsIFNhdWQgd2hvIGhhcHBlbnMgdG8gYmUgdGhlIENyb3duIFBy
aW5jZSBvZiBTYXVkaSBBcmFiaWEuIFRoZSBtb25leSBpcyBjdXJyZW50bHkgZGVwb3NpdGVkIGlu
IHRoZSBuYW1lIG9mIGFuIGV4aXN0aW5nIEludmVzdG1lbnQgZW50aXR5LgoKTXkgY2xpZW50IGhh
cyBwcmVzZW50ZWQgYSBzdWJ0bGUgb2ZmZXIgdGhhdCB3aWxsIG5lZWQgdGhlIGhlbHAgb2YgYSBm
b3JlaWduIHBhcnRuZXIgbGlrZSB5b3UgdG8gY29tcGxldGUgc3VjY2Vzc2Z1bGx5LiBNeSBjbGll
bnQgaXMgaW4gYSBkaWZmaWN1bHQgc2l0dWF0aW9uLCBhbmQgaGUgbXVzdCBpbW1lZGlhdGVseSBy
ZWxvY2F0ZSBjZXJ0YWluIHN1bXMgb2YgbW9uZXkgYW5kIHRoaXMgbXVzdCBiZSBkb25lIGluIHN1
Y2ggYSB3YXkgdGhhdCBpdCBtdXN0IG5vdCBiZSB0cmFjZWQgdG8gbXkgY2xpZW50LiBUaGUgbW9u
ZXkgaXMgY3VycmVudGx5IGRlcG9zaXRlZCBpbiB0aGUgbmFtZSBvZiBhbiBleGlzdGluZyBJbnZl
c3RtZW50IGVudGl0eS4KWW91ciByb2xlIHdpbGwgYmUgdG86CgpbMV0uIEFjdCBhcyB0aGUgYmVu
ZWZpY2lhcnkgb2YgdGhlIGZ1bmRzLgpbMl0uIFJlY2VpdmUgdGhlIGZ1bmRzIGludG8gYSBidXNp
bmVzcyAvIHByaXZhdGUgYmFuayBhY2NvdW50LgpbM10uIEludmVzdCAvIE1hbmFnZSB0aGUgZnVu
ZHMgb3V0c2lkZSBvZiBUdXJrZXkKWzRdLiBWYWx1ZSBvZiBmdW5kczogMzUgbWlsbGlvbiBVUyBE
b2xsYXJzLgoKCgpFdmVyeXRoaW5nIHdpbGwgYmUgZG9uZSBsZWdhbGx5IHRvIGVuc3VyZSB0aGUg
cmlnaHRzIHRvIHRoZSBmdW5kcyBhcmUgdHJhbnNmZXJyZWQgdG8geW91LiBJZiB5b3UgYWdyZWUg
dG8gcGFydG5lciB3aXRoIG15IGNsaWVudCBpbiB0aGlzIHBhcnRuZXJzaGlwXGJ1c2luZXNzIHBy
b3Bvc2FsLCBoZSB3aWxsIGNvbXBlbnNhdGUgeW91IHdpdGggMzUlIHBlcmNlbnQgb2YgdGhlIHRv
dGFsIHN1bS4KVGVybXMgd2lsbCBiZSBkaXNjdXNzZWQgd2hlbiB5b3Ugc2hvdyBpbnRlcmVzdCBh
bmQgaWYgeW91IGFyZW4ndCBpbnRlcmVzdGVkIGFuZCB5b3Uga25vdyBvZiBzb21lb25lIGxvb2tp
bmcgZm9yIGFuIGludmVzdG9yLCBwbGVhc2UgZ2l2ZSBoaW0gLyBoZXIgbXkgY29udGFjdC4KClNo
b3VsZCB5b3UgcHJlZmVyIEkgcmUtY29udGFjdCB5b3Ugd2l0aCBtb3JlIGV4cHJlc3MgZmFjdHMu
IFRoZW4gbWFrZSB5b3VyIGludGVyZXN0IGtub3duLCBzbyB3ZSBjYW4gYmVnaW4gdGhlIHByb2Nl
c3MuCkhvcGluZyB0byBoZWFyIGZyb20geW91IHNvb25lc3QuCgpTaW5jZXJlbHksCgpMdWthcy4K
U2VydmVpcyBkZSBTYWx1dCBJbnRlZ3JhdHMgQmFpeCBFbXBvcmTDoAp3d3cuc3NpYmUuY2F0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
