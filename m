Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8545275ED3B
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jul 2023 10:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E977181E87;
	Mon, 24 Jul 2023 08:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E977181E87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBANswL5Lx61; Mon, 24 Jul 2023 08:19:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5A9D81E3B;
	Mon, 24 Jul 2023 08:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5A9D81E3B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15C871BF3A9
 for <devel@linuxdriverproject.org>; Mon, 24 Jul 2023 08:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3DDB4062A
 for <devel@linuxdriverproject.org>; Mon, 24 Jul 2023 08:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3DDB4062A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26tSIuFDrrQU for <devel@linuxdriverproject.org>;
 Mon, 24 Jul 2023 08:18:59 +0000 (UTC)
X-Greylist: delayed 601 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 08:18:59 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 447CE4011F
Received: from mtk0.wrenchgroup.com (unknown [74.201.28.155])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 447CE4011F
 for <devel@driverdev.osuosl.org>; Mon, 24 Jul 2023 08:18:59 +0000 (UTC)
From: shirleyhannabouroungs@gmail.com
To: devel@driverdev.osuosl.org
Date: 24 Jul 2023 04:08:56 -0400
Message-ID: <20230724040856.25436C09405E4D3C@gmail.com>
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
Reply-To: shirleyhannabouroungs@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBmcmllbmQsCgpNeSBuYW1lIGlzIE1ycy5IYW5uYSBCb3Vyb3VuZ3M7IEkgYW0gYSBiYW5r
ZXIgYW5kIHRoZSAKcGVyc29uYWxhY2NvdW50cyBtYW5hZ2VyIHRvIG9uZSBvZiBvdXIgZGVjZWFz
ZWQgY3VzdG9tZXIgb2YgCnlvdXJuYXRpb25hbGl0eSB3aG8gd29ya2VkIHdpdGggYW4gb2lsIHNl
cnZpY2luZyBjb21wYW55IGluIApBbmdvbGEuCgpUaGUgZGVjZWFzZWQgY2xpZW50IG1hZGUgYSBu
dW1iZXJlZCB0aW1lIGZpeGVkIGRlcG9zaXQgdmFsdWVkIAphdDrCoMKjMiw3MjYsNDA1LjAwIChU
d28gTWlsbGlvbiBTZXZlbiBIdW5kcmVkICYgVHdlbnR5IFNpeCAKVGhvdXNhbmQswqBGb3VyIEh1
bmRyZWQgYW5kIEZpdmUgR0JQKSBpbiBvdXIgYmFuayBicmFuY2ggSGVyZSBpbiAKTG9uZG9uwqBi
ZWZvcmUgaGUgZGllZC4KClRoZSBhY2NvdW50IGlzIGN1cnJlbnRseSB3aXRob3V0IGFueSByZWdp
c3RlcmVkIG5leHQgb2Yga2luIGFuZCAKdGhlIGZ1bmRzIG5vdyBoYXZlIGFuIG9wZW4gYmVuZWZp
Y2lhcnkgbWFuZGF0ZS4gSSBhbSB0aGVyZWZvcmUgCnNvbGljaXRpbmcgZm9yIHlvdXIgYXNzaXN0
YW5jZSB0byBjb21lIGZvcndhcmQgYXMgdGhlIG5leHQgb2Yga2luIAp0byB0aGUgZGVjZWFzZWQg
Zm9yIHRoZSBwcm9jdXJpbmcgb2YgdGhlIG91dHN0YW5kaW5nIHN1bSAKb2bCozIsNzI2LDQwNS4w
MCAoVHdvIE1pbGxpb24gU2V2ZW4gSHVuZHJlZCAmIFR3ZW50eSBTaXggClRob3VzYW5kLEZvdXIg
SHVuZHJlZCBhbmQgRml2ZSBHQlApIHdoaWNoIGhhcyBiZWVuIGx5aW5nIGlkbGUgaW4gCmEgc3Vz
cGVuc2UgYWNjb3VudCB3aXRoIG91ciBiYW5rIHNpbmNlIHRoZSBmdW5kcyBoYXMgb3ZlcnN0YXll
ZCAKYW5kIG5vdyBkdWUgZm9yIHJlY292ZXJ5IG90aGVyd2lzZSBpdCB3aWxsIGJlIGNvdmVyZWQg
YnkgdGhlIGJhbmsgCmFzIHVuY2xhaW1lZCBmdW5kcyBhbmQgd291bGQgYmUgcmV0dXJuZWQgdG8g
dGhlIGdvdmVybm1lbnQgCnRyZWFzdXJ5IHZhdWx0IGZvciB0aGVpciBvd24gdXNhZ2UuCgpIb3dl
dmVyLCBiZWZvcmUgdGhlIGRlYXRoIG9mIHRoZSBjdXN0b21lciwgaGUgaW5zdHJ1Y3RlZCB0aGUg
CmJhbmsncyBtYW5hZ2VyIHRvIG1ha2UgYXJyYW5nZW1lbnRzIGZvciB0cmFuc2ZlciBvZiB0aGUg
ZnVuZHMgdG8gCm9uZSBvZiBoaXMgZm9yZWlnbiBiYW5rcyBmb3IgaGlzIHVwIGtlZXBpbmcgYXMg
aGUgd2FzIGFib3V0IHRvIApyZWxvY2F0ZSBiYWNrIHRvIGhpcyBjb3VudHJ5IGJlY2F1c2Ugb2Yg
dGhlIGZpbmFuY2lhbCBpbnN0YWJpbGl0eSAKYXMgYSByZXN1bHQgb2YgdGhlIHBhc3QgcG9saXRp
Y2FsIGNyaXNpcyB0aGVuIGluIHRoZSBjb3VudHJ5IAphbmRvd2luZyB0byB0aGUgY2lyY3Vtc3Rh
bmNlcyBzdXJyb3VuZGluZyBoaXMgZGVhdGg7IHRoZSB0cmFuc2ZlciAKYXJyYW5nZW1lbnRzIHdl
cmUgc3VzcGVuZGVkIGFuZCBzaW5jZSB0aGVuIG5vIG9uZSBoYXMgY29tZSAKZm9yd2FyZCB0byBj
bGFpbSB0aGVzZSBmdW5kcy4gSSB3aWxsIGJlIHdpbGxpbmcgdG8gc2hhcmUgNTAvNTAlIAp3aXRo
IHlvdSBhZnRlciB0aGUgc3VjY2Vzc2Z1bCB0cmFuc2ZlciBvZiB0aGUgZnVuZHMgdG8gYW55IG9m
IAp5b3VyIG5vbWluYXRlZCBiYW5rIGFjY291bnRzIGFicm9hZC7CoAoKQW5kIEkgYWxzbyB3YW50
IHRvIGd1YXJhbnRlZSB5b3UgdGhhdCB0aGVyZSB3aWxsIG5vdCBiZSBhbnkgcmlzayAKaW52b2x2
ZWQgaW4gdGhpcyBidXNpbmVzcyBiZWNhdXNlIGV2ZXJ5dGhpbmcgd2lsbCBiZSBleGVjdXRlZCAK
dW5kZXIgYSBsZWdpdGltYXRlIGFycmFuZ2VtZW50IHRoYXQgd2lsbCBwcm90ZWN0IHVzIGZyb20g
YW55IApicmVhY2ggb2YgdGhlIGxhdy4KCkkgc2hhbGwgZ2l2ZSB5b3UgbW9yZSBkZXRhaWxzIHJl
bGF0ZWQgdG8gdGhpcyB0cmFuc2FjdGlvbiBhcyBzb29uIAphcyBJIHJlY2VpdmUgeW91ciBwb3Np
dGl2ZSByZXNwb25zZSB0byBleGVjdXRlIHRoaXMgbHVjcmF0aXZlIApidXNpbmVzcyB3aXRoIG1l
LgoKUmVnYXJkcywKCk1ycy5IYW5uYSBCb3Vyb3VuZ3MuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
