Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A024807AC3
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Dec 2023 22:49:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1925341FEA;
	Wed,  6 Dec 2023 21:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1925341FEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hk-poZIFi3Qm; Wed,  6 Dec 2023 21:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6C8841FD7;
	Wed,  6 Dec 2023 21:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6C8841FD7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E207D1BF2C1
 for <devel@linuxdriverproject.org>; Wed,  6 Dec 2023 21:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BFA8041FD7
 for <devel@linuxdriverproject.org>; Wed,  6 Dec 2023 21:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFA8041FD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Bp-YyGVmKah for <devel@linuxdriverproject.org>;
 Wed,  6 Dec 2023 21:49:51 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Dec 2023 21:49:51 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7FC841ED7
Received: from mail0.helio-solar.at (unknown [172.245.92.73])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7FC841ED7
 for <devel@driverdev.osuosl.org>; Wed,  6 Dec 2023 21:49:51 +0000 (UTC)
From: Barrister@osuosl.org, Henry@osuosl.org,
	"Santos <noreply"@suncor.com
To: devel@driverdev.osuosl.org
Subject: Re: Message
Date: 06 Dec 2023 22:37:09 +0100
Message-ID: <20231206223709.C5CB59664407B976@suncor.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osuosl.org; s=default; t=1701899392;
 bh=QTQVpx3wFLpLRCyb7HdJ2zPLeV3fUY+oZR+zbFWdSjc=;
 h=Reply-To:From:To:Subject:Date:From;
 b=RrX+YBP6Dm7lEbPWMJjH87Ojjbkot8cq/NkkSKq2ZOmuIqnxGYkgOFZsZWO+SlIrd
 AeYoamuR7uXkTzU5qudhjV0i+Ve3YyIUwuMEoL+ujn2Zj+Liq+pgCJzRLW4LLg4mOT
 Ela1Di8Cr158xtGzQn55jcvwhxcb1uuAxGQjvcmehEguXqJKHSqcCVxX2+V5Ag8SJK
 +Dg9YumrdZGTCJX8ws5PsVlM5B2D+wUVafsl3fRi36E+da2Kx9K4JubI2dxkn+nPsH
 LvWmnClPWwE+qlWwT4caUVDqFariQ6uUtcd1I0vM18vzByNKVzFQunhOndsDyZGwgp
 YQ1CP1/pl7Iag==
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
Reply-To: advocathenry101@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLAoKSSBhbSBCYXJyaXN0ZXIgSGVucnkgU2FudG9zIExhdyBpbiBTcGFpbi4gIEZp
cnN0bHkgSSBtdXN0IHNvbGljaXQgCnlvdXIgY29uZmlkZW5jZSBpbiB0aGlzIHByb3Bvc2FsOyB0
aGlzIGlzIGJ5IHZpcnR1ZSBvZiBpdHMgbmF0dXJlCmFzIGJlaW5nIHV0dGVybHkgY29uZmlkZW50
aWFsIGFuZCB0b3Agc2VjcmV0LiBBIGRlY2Vhc2VkIGNsaWVudCAKb2YgbWluZSBMYXRlIEVuZ3Iu
IFNhbXVlbCwgdGhhdCBzaGFyZXMgc2FtZSBzdXJuYW1lIHdpdGggeW91LApkaWVkIGFzIGEgcmVz
dWx0IG9mIDIwMDQgVFNVTkFNSSBsZWF2aW5nIGJlaGluZCBhIGRlcG9zaXQgdmFsdWUgCm9mIOKC
rDksNTAwLDAwMCBFdXJvcy4gSGUgd2FzIGFuIG9pbCBtZXJjaGFudCB3aG8gZW5nYWdlZCBpbgpi
dXNpbmVzc2VzIGJldHdlZW4gTWlkZGxlIEVhc3QgYW5kIEV1cm9wZSBpbiB0aGUgbGFzdCBOaW5l
dGVlbiAKeWVhcnMuCgpNeSBwdXJwb3NlIG9mIGNvbnRhY3RpbmcgeW91IGlzIGZvciB5b3VyIGFz
c2lzdGFuY2UgaW4gc2VjdXJpbmcgCnRoZSBmdW5kcyBsZWZ0IGJlaGluZCB3aXRoIGEgYmFuayBi
eSBteSBsYXRlIGNsaWVudCwgdG8gYXZvaWQgaXQKYmVpbmcgY29uZmlzY2F0ZWQgb3IgcmV0dXJu
ZWQgdG8gdGhlIEdvdmVybm1lbnQgYXMgCnVuY2xhaW1lZC91bnNlcnZpY2VhYmxlLiBUaGUgZnVu
ZCAoTmluZSBNaWxsaW9uIEZpdmUgSHVuZHJlZApUaG91c2FuZCBFdXJvcykgaXMgY3VycmVudGx5
IGluIGEgZmFjaWxpdHkgaGVyZSBpbiBFdXJvLiAgSXQgaXMgCm5vdCB1bnVzdWFsIHRoYXQgYSB0
cmFuc2FjdGlvbiBvZiB0aGlzIG1hZ25pdHVkZSBtaWdodCBtYWtlIGFueQpvbmUgYXBwcmVoZW5z
aXZlIGFuZCB3b3JyaWVkLCBidXQgSSBhbSBhc3N1cmluZyB5b3Ugb2YgdGhlIApsZWdpdGltYWN5
IG9mIHRoaXMgdHJhbnNhY3Rpb24uIEkgaGF2ZSBiZWVuIHNlcnZlZCAgYSBub3RpY2UgYnkKdGhl
IGhvbGRpbmcgaW5zdGl0dXRpb24gdG8gcHJvdmlkZSB0aGUgbmV4dCBvZiBraW4gdG8gbXkgY2xp
ZW50IApvciB0aGUgZGVwb3NpdCB3aWxsIGJlIGRlY2xhcmVkIHVuc2VydmljZWFibGUgYW5kIHRo
ZSBmdW5kCmRpdmVydGVkIHRvIHRoZSBTdGF0ZSB0cmVhc3VyeS4gU28gZmFyLCBhbGwgbXkgZWZm
b3J0cyB0byBnZXQgYSAKaG9sZCBvZiBzb21lb25lIHJlbGF0ZWQgdG8gaGltIGhhdmUgbm90IGJl
ZW4gc3VjY2Vzc2Z1bC4gSGVuY2UsIEkKaGF2ZSBjb250YWN0ZWQgeW91LiBJIGFtIGFjdHVhbGx5
IGFza2luZyBmb3IgeW91ciBjb25zZW50IHRvIApwcmVzZW50IHlvdSBhcyB0aGUgTmV4dCBvZiBL
aW4vYmVuZWZpY2lhcnkgb2YgbXkgbGF0ZSBjbGllbnQncwpmdW5kLCBzaW5jZSB5b3Ugc2hhcmUg
dGhlIHNhbWUgc3VybmFtZSwgc28gdGhhdCB0aGUgZGVwb3NpdCAKKEV1cm9zIOKCrDkuNW0pIGNh
biBiZSByZWxlYXNlZCB0byB5b3UuIEFsbCB0aGUgbGVnYWwKZG9jdW1lbnRhdGlvbnMgdG8gYmFj
ayB1cCB5b3VyIGNsYWltIGFzIG15IGNsaWVudCdzIG5leHQgb2YgS2luLCAKSSBzaGFsbCBwcm92
aWRlLiBBbGwgSSByZXF1aXJlIGlzIHlvdXIgaG9uZXN0IGNvb3BlcmF0aW9uIHRvCmVuYWJsZSB1
cyBhY2hpZXZlIHRoaXMgdHJhbnNhY3Rpb247IEkgd2lsbCB1c2UgbXkgcG9zaXRpb24gYXMgYSAK
bGF3eWVyIG9mIHRoZSBkZWNlYXNlZCB1c2UgdG8gY29tcGxldGUgdGhlIHRyYW5zYWN0aW9uCnN1
Y2Nlc3NmdWxseSBsZWFkLgoKSSB3aXNoIHRvIHBvaW50IG91dCB0aGF0IEkgd2lsbCB3YW50IDEw
JSBvZiB0aGlzIG1vbmV5IHRvIGJlIApzaGFyZWQgYW1vbmcgY2hhcml0eSBvcmdhbml6YXRpb25z
IG9mIG91ciB1bmFuaW1vdXMgYWdyZWVkCmNob2ljZSwgd2hpbGUgdGhlIHJlbWFpbmluZyA5MCUg
aXMgc2hhcmVkIGVxdWFsbHkgYmV0d2VlbiB1cy4gClRoaXMgdHJhbnNhY3Rpb24gaXMgZW50aXJl
bHkgcmlzayBmcmVlLiBJIHdpbGwgdXNlIG15IHBvc2l0aW9uIGFzCnRoZSBjbGllbiArMzQtNjM0
LTAyOS0zMzcgIEUtTWFpbDogKGFkdm9jYXRzYW50b3MwMUBnbWFpbC5jb20pIAp1cG9uIHlvdXIg
cmVzcG9uc2UsIEkgc2hhbGwgdGhlbiBwcm92aWRlIHlvdSB3aXRoIG1vcmUgZGV0YWlscwphbmQg
cmVsZXZhbnQgZG9jdW1lbnRzIHRoYXQgd2lsbCBoZWxwIHlvdSB1bmRlcnN0YW5kIHRoaXMgCnRy
YW5zYWN0aW9uIHByb3Blcmx5LiBUaGUgaW50ZW5kZWQgdHJhbnNhY3Rpb24gd2lsbCBiZSBleGVj
dXRlZAp1bmRlciBhIGxlZ2l0aW1hdGUgYXJyYW5nZW1lbnQgdGhhdCB3aWxsIHByb3RlY3QgeW91
IGZyb20gYW55IApicmVhY2ggb2YgdGhlIGxhdy4gSG93ZXZlciwgaWYgdGhpcyBidXNpbmVzcyBw
cm9wb3NhbCBvZmZlbmRzCnlvdXIgbW9yYWwgZXRoaWNzLCBkbyBhY2NlcHQgbXkgc2luY2VyZSBh
cG9sb2d5LCBvciBpZiBvbiB0aGUgCmNvbnRyYXJ5IHlvdSB3aXNoIHRvIGFjaGlldmUgdGhpcyBn
b2FsIHdpdGggbWUsIGtpbmRseSBnZXQgYmFjawp0byBtZSB3aXRoIHlvdXIgaW50ZXJlc3QgZm9y
IGZ1cnRoZXIgZXhwbGFuYXRpb25zLgoKS2luZGVzdCAgUmVnYXJkcywKQmFycmlzdGVyIEhlbnJ5
IFNhbnRvcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
