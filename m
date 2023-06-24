Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E9073CA0E
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Jun 2023 11:23:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF6FC80F57;
	Sat, 24 Jun 2023 09:23:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF6FC80F57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-_37SKnuAc0; Sat, 24 Jun 2023 09:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF8FA80F4D;
	Sat, 24 Jun 2023 09:23:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF8FA80F4D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B7151BF3E9
 for <devel@linuxdriverproject.org>; Sat, 24 Jun 2023 09:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00D7A415FB
 for <devel@linuxdriverproject.org>; Sat, 24 Jun 2023 09:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00D7A415FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Krgpvaj9_9s2 for <devel@linuxdriverproject.org>;
 Sat, 24 Jun 2023 09:23:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BC84415EC
Received: from mtk0.covanta.com (unknown [74.201.28.6])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BC84415EC
 for <devel@linuxdriverproject.org>; Sat, 24 Jun 2023 09:23:42 +0000 (UTC)
From: fosgateperez@yahoo.com
To: devel@linuxdriverproject.org
Date: 24 Jun 2023 05:23:39 -0400
Message-ID: <20230624052339.DFB663452FF54747@yahoo.com>
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
Reply-To: fosgateperez@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGF0ZSBGcmlkYXkgMjNyZCBqdW5lIDIwMjMKRnJvbTogQWRkcmVzczogMTEgVGVtcGxlIERyaXZl
IEdyZWVubWVhZG93cwpTdWJkaXZpc2lvbiA4NTEwIFF1ZXpvbiBDaXR5LCBQaGlsaXBwaW5lcwoK
TXkgRGVhciBCZWxvdmVkIGluIENocmlzdAoKR3JlZXRpbmdzIHRvIHlvdSBhbmQgeW91ciBmYW1p
bHkuIEkgYW0gTXJzLlBlcmV6IEZvc2dhdGUsIHdpZmUgdG8gCk1yLlJhb3VsIEZvc2dhdGUgZnJv
bSBQaGlsaXBwaW5lcywgSSBhbSA2OCB5ZWFycyBvbGQsIG15IGxhdGUgCkh1c2JhbmQgd2FzIGEg
RGlyZWN0b3Igd2l0aCBDb25zdHJ1Y3Rpb24gQ29tcGFueSBoZXJlIGJlZm9yZSBoaXMgClN1ZGRl
biBEZWF0aCBhZnRlciBhIGJyaWVmIG9mIGlsbG5lc3MgdGhhdCBsYXN0ZWQgZm9yIG9ubHkgZm91
ciAKZGF5cywgYnV0IGJlZm9yZSBoaXMgZGVhdGgsIGhlIERlcG9zaXRlZCB0aGUgU3VtIG9mIMKj
NSwyMDAsMDAwLjAwIApHQlAgd2l0aCBvbmUgb2YgdGhlIEJhbmsgaGVyZSBpbiBQaGlsaXBwaW5l
cyB3aXRoIG15IG5hbWUgYW5kIGkgCmFtIHN1ZmZlcmluZyBmcm9tIHBhbmNyZWF0aWMgY2FuY2Vy
LCBNeSBjb25kaXRpb24gaXMgcmVhbGx5IGJhZCAKYW5kIGl0IGlzIHF1aXRlIG9idmlvdXMgdGhh
dCBJIHdvbuKAmXQgbGl2ZSBtb3JlIHRoYW4gdHdvIG1vbnRocyAKYWNjb3JkaW5nIHRvIG15IGRv
Y3RvciwgYW5kIGkgaGF2ZSBubyBDaGlsZCB3aG8gaXMgZ29pbmcgdG8gdGFrZSAKY2FyZSBvZiB0
aGlzIEh1Z2UgYW1vdW50IG9mIE1vbmV5LCBJIGFtIHdpbGxpbmcgdG8gZG9uYXRlIHRoZSBzdW0g
Cm9mICDCozUsMjAwLDAwMC4wMCBHQlAgZm9yIHlvdSB0byBoZWxwIHdpZG93cyBhbmQgdGhlIGxl
c3MgCnByaXZpbGVnZWQgb25lcyBpbiB0aGUgcnVyYWwgYW5kIHVyYmFuIGFyZWFzIGFuZCB0byBj
YXJyeSBvdXQgCmNoYXJpdHkgd29ya3MgaW4geW91ciBDb3VudHJ5IGFuZCBhcm91bmQgdGhlIFdv
cmxkIG9uIG15IEJlaGFsZi4KCldhaXRpbmcgZm9yIHlvdXIgVXJnZW50IFJlc3BvbnNlLgoKUmVt
YWluIGJsZXNzZWQgaW4gdGhlIG5hbWUgb2YgdGhlIExvcmQuCgpZb3VycyBpbiBDaHJpc3QgCgpN
cnMuRm9zZ2F0ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
