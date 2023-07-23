Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 449DA75E1FA
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jul 2023 15:07:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8F32606BF;
	Sun, 23 Jul 2023 13:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8F32606BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X0OEjiWz3kbx; Sun, 23 Jul 2023 13:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C18B760736;
	Sun, 23 Jul 2023 13:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C18B760736
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 928EB1BF575
 for <devel@linuxdriverproject.org>; Sun, 23 Jul 2023 13:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D1F1400BA
 for <devel@linuxdriverproject.org>; Sun, 23 Jul 2023 13:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D1F1400BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZWCwgIyIRGTY for <devel@linuxdriverproject.org>;
 Sun, 23 Jul 2023 13:07:17 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 23 Jul 2023 13:07:17 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3362400B9
Received: from mtk0.wrenchgroup.com (unknown [74.201.28.155])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3362400B9
 for <devel@driverdev.osuosl.org>; Sun, 23 Jul 2023 13:07:17 +0000 (UTC)
From: fosgateperez@yahoo.com
To: devel@driverdev.osuosl.org
Date: 23 Jul 2023 08:57:13 -0400
Message-ID: <20230723085713.4D59A44D7C9EE3AD@yahoo.com>
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

QmVsb3ZlZCBPbmUsCgpJIGJyaW5nIHlvdSB0aGUgcGVhY2UgYW5kIGxvdmUgb2YgR29kIC4gSXQg
aXMgYnkgdGhlIGdyYWNlIG9mIEdvZCAKdGhhdCBJbSB3cml0aW5nIHlvdSB0aGlzLiBIYXZpbmcg
a25vd24gdGhlIHRydXRoLCBJIGhhZCBubyBjaG9pY2UgCmJ1dCB0byBkbyB3aGF0IGlzIGxhd2Z1
bCBhbmQgcmlnaHQgaW4gdGhlIHNpZ2h0IG9mIEdvZCBmb3IgCmV0ZXJuaXR5IGFuZCBpbiB0aGUg
c2lnaHQgb2YgbWFuIHRvIHRlc3RpZnkgb2YgR29kJ3MgbWVyY3kgYW5kIApnbG9yeSBvbiBteSBs
aWZlLgoKTXkgbmFtZSBpcyBNcnMuIEZvc2dhdGUgUGVyZXogUml0YS4gSSBhbSB0ZXJtaW5hbGx5
IGlsbCB3aXRoIApjYW5jZXIgYW5kIEkgaGF2ZSBkZWNpZGVkIHRvIGRvbmF0ZSB0byB5b3UgdGhl
IGluaGVyaXRhbmNlIEkgCnJlY2VpdmVkIGZyb20gbXkgbGF0ZSBodXNiYW5kLCBNci4gT2JyaWVu
IEZvc2dhdGUgLiAKVW5mb3J0dW5hdGVseSwgSSBhbSBpbiBhIGhvc3BpdGFsICB1bmRlcmdvaW5n
IHRyZWF0bWVudCBmb3IgCmVzb3BoYWdlYWwgY2FuY2VyLiBJIGhhdmUgc2luY2UgbG9zdCB0aGUg
YWJpbGl0eSB0byBzcGVhayBhbmQgbXkgCmRvY3RvcnMgaGF2ZSB0b2xkIG1lIHRoYXQgSSBoYXZl
IG9ubHkgYSBmZXcgbW9udGhzIHRvIGxpdmUuIEl0IGlzIApteSBsYXN0IHdpc2ggdG8gc2VlIHRo
aXMgbW9uZXkgdGhhdCBteSBsYXRlIGh1c2JhbmQgZGVwb3NpdGVkIHRoZSAKc3VtIG9mIMKjNSwy
MDAsMDAwLjAwIChGaXZlIG1pbGxpb24gdHdvIGh1bmRyZWQgdGhvdXNhbmQgcG91bmRzKSAKaW50
byBoaXMgb2Zmc2hvcmUgYmFuayBhY2NvdW50IHRvIGJlIGRpc3RyaWJ1dGVkIHRvIGNoYXJpdGll
cyAKYXJvdW5kIHRoZSB3b3JsZC4gQmVjYXVzZSBteSByZWxhdGl2ZXMgYW5kIGZyaWVuZHMgaGF2
ZSBwbHVuZGVyZWQgCm11Y2ggb2YgbXkgd2VhbHRoIHNpbmNlIG15IGlsbG5lc3MsIEkgY2Fubm90
IGxpdmUgd2l0aCB0aGUgYWdvbnkgCm9mIGVudHJ1c3RpbmcgdGhpcyBodWdlIHJlc3BvbnNpYmls
aXR5IHRvIGFueSBvZiB0aGVtLiBQbGVhc2UgZ2V0IApiYWNrIGZvciBtb3JlIGRldGFpbHMuCgpD
b3JkaWFseSAsCk1ycyBGb3NnYXRlIFBlcmV6IFJpdGEuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
