Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A8074ADAA
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jul 2023 11:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46BAB82107;
	Fri,  7 Jul 2023 09:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46BAB82107
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jEaguHyAUypl; Fri,  7 Jul 2023 09:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F7F181EFA;
	Fri,  7 Jul 2023 09:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F7F181EFA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7935F1BF84C
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 09:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 527DD81F11
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 09:15:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 527DD81F11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJuXeehT5Td4 for <devel@linuxdriverproject.org>;
 Fri,  7 Jul 2023 09:15:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9786581EFA
Received: from mtk0.wrenchgroup.com (unknown [74.201.28.155])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9786581EFA
 for <devel@linuxdriverproject.org>; Fri,  7 Jul 2023 09:15:12 +0000 (UTC)
From: greenshirley589@gmail.com
To: devel@linuxdriverproject.org
Subject: Re:REPLY
Date: 7 Jul 2023 05:15:06 -0400
Message-ID: <20230707051506.27E55FFA1E9F8EDD@gmail.com>
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
Reply-To: greenshirley589@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBmcmllbmQsCgpNeSBuYW1lIGlzIE1ycy5IYW5uYSBCb3Vyb3VuZ3M7IGkgYW0gYSBiYW5r
ZXIgYW5kIHRoZSBwZXJzb25hbCAKYWNjb3VudHMgbWFuYWdlciB0byBvbmUgb2Ygb3VyIGRlY2Vh
c2VkIGN1c3RvbWVyIG9mIHlvdXIgCm5hdGlvbmFsaXR5IHdobyB3b3JrZWQgd2l0aCBhbiBvaWwg
c2VydmljaW5nIGNvbXBhbnkgaW4gQW5nb2xhLiAKVGhlIGRlY2Vhc2VkIGNsaWVudCBtYWRlIGEg
bnVtYmVyZWQgdGltZSBmaXhlZCBkZXBvc2l0IHZhbHVlZCBhdDogCsKjMiw3MjYsNDA1LjAwIChU
d28gTWlsbGlvbiBTZXZlbiBIdW5kcmVkICYgVHdlbnR5IFNpeCBUaG91c2FuZCwgCkZvdXIgSHVu
ZHJlZCBhbmQgRml2ZSBHQlApIGluIG91ciBiYW5rIGJyYW5jaCBIZXJlIGluIExvbmRvbiAKYmVm
b3JlIGhlIGRpZWQuCgpUaGUgYWNjb3VudCBpcyBjdXJyZW50bHkgd2l0aG91dCBhbnkgcmVnaXN0
ZXJlZCBuZXh0IG9mIGtpbiBhbmQgCnRoZSBmdW5kcyBub3cgaGFzIG9wZW4gYmVuZWZpY2lhcnkg
bWFuZGF0ZS4gSSBhbSB0aGVyZWZvcmUgCnNvbGljaXRpbmcgZm9yIHlvdXIgYXNzaXN0YW5jZSB0
byBjb21lIGZvcndhcmQgYXMgdGhlIG5leHQgb2Yga2luIAp0byB0aGUgZGVjZWFzZWQgZm9yIHRo
ZSBwcm9jdXJpbmcgb2YgdGhlIG91dHN0YW5kaW5nIHN1bSBvZiAKwqMyLDcyNiw0MDUuMDAgKFR3
byBNaWxsaW9uIFNldmVuIEh1bmRyZWQgJiBUd2VudHkgU2l4IFRob3VzYW5kLCAKRm91ciBIdW5k
cmVkIGFuZCBGaXZlIEdCUCkgd2hpY2ggaGFzIGJlZW4gbHlpbmcgaWRsZSBpbiBhIApzdXNwZW5z
ZSBhY2NvdW50IHdpdGggb3VyIGJhbmsgc2luY2UgdGhlIGZ1bmRzIGhhcyBvdmVyc3RheWVkIGFu
ZCAKbm93IGR1ZSBmb3IgcmVjb3Zlcnkgb3RoZXJ3aXNlIGl0IHdpbGwgYmUgY292ZXJlZCBieSB0
aGUgYmFuayBhcyAKYW4gdW5jbGFpbWVkIGZ1bmRzIGFuZCB3b3VsZCBiZSByZXR1cm5lZCB0byB0
aGUgZ292ZXJubWVudCAKdHJlYXN1cnkgdmF1bHQgZm9yIHRoZWlyIG93biB1c2FnZS4KCkhvd2V2
ZXIsIGJlZm9yZSB0aGUgZGVhdGggb2YgdGhlIGN1c3RvbWVyLCBoZSBpbnN0cnVjdGVkIHRoZSAK
YmFuaydzIG1hbmFnZXIgdG8gbWFrZSBhcnJhbmdlbWVudHMgZm9yIHRyYW5zZmVyIG9mIHRoZSBm
dW5kcyB0byAKb25lIG9mIGhpcyBmb3JlaWduIGJhbmtzIGZvciBoaXMgdXAga2VlcGluZyBhcyBo
ZSB3YXMgYWJvdXQgdG8gCnJlbG9jYXRlIGJhY2sgdG8gaGlzIGNvdW50cnkgYmVjYXVzZSBvZiB0
aGUgZmluYW5jaWFsIGluc3RhYmlsaXR5IAphcyBhIHJlc3VsdCBvZiB0aGUgcGFzdCBwb2xpdGlj
YWwgY3Jpc2lzIHRoZW4gaW4gdGhlIGNvdW50cnkgYW5kIApvd2luZyB0byB0aGUgY2lyY3Vtc3Rh
bmNlcyBzdXJyb3VuZGluZyBoaXMgZGVhdGg7IHRoZSB0cmFuc2ZlciAKYXJyYW5nZW1lbnRzIHdh
cyBzdXNwZW5kZWQgYW5kIHNpbmNlIHRoZW4gbm8gb25lIGhhcyBjb21lIGZvcndhcmQgCnRvIGNs
YWltIHRoaXMgZnVuZHMuIEkgd2lsbCBiZSB3aWxsaW5nIHRvIHNoYXJlIDUwLzUwJSB3aXRoIHlv
dSAKYWZ0ZXIgdGhlIHN1Y2Nlc3NmdWxseSB0cmFuc2ZlciBvZiB0aGUgZnVuZHMgdG8gYW55IG9m
IHlvdXIgCm5vbWluYXRlZCBiYW5rIGFjY291bnRzIGFicm9hZC4gQW5kIGkgYWxzbyB3YW50IHRv
IGd1YXJhbnRlZSB5b3UgCnRoYXQgdGhlcmUgd2lsbCBub3QgYmUgYW55IHJpc2sgaW52b2x2ZWQg
aW4gdGhpcyBidXNpbmVzcyBiZWNhdXNlIApldmVyeXRoaW5nIHdpbGwgYmUgZXhlY3V0ZWQgdW5k
ZXIgYSBsZWdpdGltYXRlIGFycmFuZ2VtZW50IHRoYXQgCndpbGwgcHJvdGVjdCB1cyBmcm9tIGFu
eSBicmVhY2ggb2YgdGhlIGxhdy4KCkkgc2hhbGwgZ2l2ZSB5b3UgbW9yZSBkZXRhaWxzIHJlbGF0
ZWQgdG8gdGhpcyB0cmFuc2FjdGlvbiBhcyBzb29uIAphcyBpIHJlY2VpdmUgeW91ciBwb3NpdGl2
ZSByZXNwb25zZSB0byBleGVjdXRlIHRoaXMgbHVjcmF0aXZlIApidXNpbmVzcyB3aXRoIG1lLgoK
UmVnYXJkcywKCk1ycy5TaGlybGV5LkcgQm91cm91bmdzLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
