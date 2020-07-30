Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2467A2330EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 13:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F01286B60;
	Thu, 30 Jul 2020 11:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IrNlLuGBT1A8; Thu, 30 Jul 2020 11:28:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E983E86931;
	Thu, 30 Jul 2020 11:28:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 214721BF85D
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 11:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 002621FEDF
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 11:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRxs7MdVoAxN for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 11:28:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic306-19.consmr.mail.ir2.yahoo.com
 (sonic306-19.consmr.mail.ir2.yahoo.com [77.238.176.205])
 by silver.osuosl.org (Postfix) with ESMTPS id 7EBA52010E
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 11:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1596108480; bh=DPYuw2gUpgtMJzJhlH/AVmRGu2wSKCY1C+f8nOCoxu0=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=rykn3fML58/vbR/1Wq3shM93rU0lO0FU841lqsYmzN3Fefm6iikqgiA39MFSnFfUwUJUA0B8DG0uR+BzFXSrZTlkbMPyG/FMRp7zXIKtrE5GLgf64eaCFZUYhtUlXokVHJHcRwTJv0rmsJU5dhW4PjOTLDG3iGmoO1HxG9lOTj+sZf1vYZ6m4Tl4KxFqHhr+e1tov5HQN14LeCPy7In0BD31Dlf4Ta3kGBQQbH/aGFHS1WtzyjI74zLroQD4Z5EBGuPyMWULxP9AaVvx1LWhfe77/ljKIhyHOC33A4hlqnKOlEbbvSRTTINezen1ZjkAFl1Gv1ACaOV4vh4e34ojHQ==
X-YMail-OSG: r4UptIsVM1kiqD81U9eJ2ZdGqqzVPVjEjbgcTTQ56h6pawj3Si.2lLz5.XTA0H1
 rjVsx94.Nmx8jtG_bGJYez8kdIbkjv_v56jF8fcOG9mSI8MfBVDPhy8XxZbdWcZw_s_lwo1WlE2o
 .NXY2zfL2OgSVn2aZGEpC8kMofO.GsACGngwBtoc02po4mxzuClFX9MfwH1vxwQuxyVljIABhyys
 Cps9.ixmyZPeDFtdv39xZt.QdVfrYE7kWzPxuBzidThsWKMjcHtASp6Qrlyw9HMbB_hzq_hcMZsB
 hdXLJAHq1u4rnvojl.6U3P3fxYBe_h_v6iGugKLIm3jVGaEb_T_lY7jTNpt1BYGit1VEN4S0Lo_E
 25EBg3WTX5oOvg9kTAyChMxQXe..ZdNViJ1Q_yQV0q10btMjCaXSqsVhbO2Y.HkMnndJu8YqfSqZ
 wAiuViifmpyjIIFemGSSY7nl46yPc9pP35u15C6HA.NWUd2bDGLYilZ.G1jKx0yhgMYAhtZPiIoa
 xEN91c1f70mnHlHiTWscl6p0tM2WZf4.D43gOehAIRIP3HmiRlwoI6ZK7FJk..O4klTI4C.A3kxj
 uobo7zmrrlP14w2FPnI7CpJm.RWRypFexrfQ45DeYrM4B0YGz2LzDLo1bt3zAhgy.IGp0yJHuhBA
 8YhQCbuQK_9p_RxKmX0dO06aOkGg_ZMZgSEwjSgB.dixKIbqFAC8AuQVqYfNpmQtf6J1ip7J.aYj
 E1sI66v6vOrbsoByDTLwbv4rCC9G1JPH724HxrSbx030WCchhWhGpQhF8vJLS0qm6KsuzwbYhaEB
 L6cuZjoI00mxm2bGbeMYti9Th06lKAfNnYh4.kctE0BW6A5SfJiW7I1.jCm.NYnIbeSLjeFIKDWu
 a9gI5t33AZb8tkpA27LzZHm1ilMKhVvlpTYGSeP6x4Dl26TOrsmD3KSrPN96jmZdtjvGzQh.l87n
 Iypd173Hm0z.l8JPZH7c9de21r0nJ0u32tUaqG8eh0r2ezvVPVjsdt0CWcgJvCaZZRoBZqFwkFW_
 gRUwHnbnAb7hzx9bjiRpXEU_n_P7D4dkX7wcdvePEIbOQdyxYmqpLdrb3ucbGy4siSM5a4vd7kFg
 OlxKBx6MbhBKEB2Uq.6uz8hlz8lRuBby0t6yFjyL7w_KGE0EJpRq0n8QKeSQMhF9WoRhPb3Qwhe0
 .wKEOiClOYM7WPtJf.EdOYeTr.DJbOnBtPdZoSiHkZ88GqJ56k2zsLo0wjMtkUuMGI9t4JFzZgyi
 D7pcEZlbQXpw6_lHM.PADYqlKpfvxN3_WRUYNOnw-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ir2.yahoo.com with HTTP; Thu, 30 Jul 2020 11:28:00 +0000
Date: Thu, 30 Jul 2020 11:27:56 +0000 (UTC)
From: "Mina A. Brunel" <mrsminaabrunel2334@gmail.com>
Message-ID: <1764226892.14007031.1596108476026@mail.yahoo.com>
Subject: My Dear in the lord
MIME-Version: 1.0
References: <1764226892.14007031.1596108476026.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105
 Safari/537.36
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
Reply-To: mrsminaabrunel57044@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpNeSBEZWFyIGluIHRoZSBsb3JkCgoKTXkgbmFtZSBpcyBNcnMuIE1pbmEgQS4gQnJ1bmVsIEkg
YW0gYSBOb3J3YXkgQ2l0aXplbiB3aG8gaXMgbGl2aW5nIGluIEJ1cmtpbmEgRmFzbywgSSBhbSBt
YXJyaWVkIHRvIE1yLiBCcnVuZWwgUGF0cmljZSwgYSBwb2xpdGljaWFucyB3aG8gb3ducyBhIHNt
YWxsIGdvbGQgY29tcGFueSBpbiBCdXJraW5hIEZhc287IEhlIGRpZWQgb2YgTGVwcm9zeSBhbmQg
UmFkZXN5Z2UsIGluIHllYXIgRmVicnVhcnkgMjAxMCwgRHVyaW5nIGhpcyBsaWZldGltZSBoZSBk
ZXBvc2l0ZWQgdGhlIHN1bSBvZiDigqwgOC41IE1pbGxpb24gRXVybykgRWlnaHQgbWlsbGlvbiwg
Rml2ZSBodW5kcmVkIHRob3VzYW5kIEV1cm9zIGluIGEgYmFuayBpbiBPdWFnYWRvdWdvdSB0aGUg
Y2FwaXRhbCBjaXR5IG9mIG9mIEJ1cmtpbmEgaW4gV2VzdCBBZnJpY2EuIFRoZSBtb25leSB3YXMg
ZnJvbSB0aGUgc2FsZSBvZiBoaXMgY29tcGFueSBhbmQgZGVhdGggYmVuZWZpdHMgcGF5bWVudCBh
bmQgZW50aXRsZW1lbnRzIG9mIG15IGRlY2Vhc2VkIGh1c2JhbmQgYnkgaGlzIGNvbXBhbnkuCgpJ
IGFtIHNlbmRpbmcgeW91IHRoaXMgbWVzc2FnZSB3aXRoIGhlYXZ5IHRlYXJzIGluIG15IGV5ZXMg
YW5kIGdyZWF0IHNvcnJvdyBpbiBteSBoZWFydCwgYW5kIGFsc28gcHJheWluZyB0aGF0IGl0IHdp
bGwgcmVhY2ggeW91IGluIGdvb2QgaGVhbHRoIGJlY2F1c2UgSSBhbSBub3QgaW4gZ29vZCBoZWFs
dGgsIEkgc2xlZXAgZXZlcnkgbmlnaHQgd2l0aG91dCBrbm93aW5nIGlmIEkgbWF5IGJlIGFsaXZl
IHRvIHNlZSB0aGUgbmV4dCBkYXkuIEkgYW0gc3VmZmVyaW5nIGZyb20gbG9uZyB0aW1lIGNhbmNl
ciBhbmQgcHJlc2VudGx5IEkgYW0gcGFydGlhbGx5IHN1ZmZlcmluZyBmcm9tIExlcHJvc3ksIHdo
aWNoIGhhcyBiZWNvbWUgZGlmZmljdWx0IGZvciBtZSB0byBtb3ZlIGFyb3VuZC4gSSB3YXMgbWFy
cmllZCB0byBteSBsYXRlIGh1c2JhbmQgZm9yIG1vcmUgdGhhbiA2IHllYXJzIHdpdGhvdXQgaGF2
aW5nIGEgY2hpbGQgYW5kIG15IGRvY3RvciBjb25maWRlZCB0aGF0IEkgaGF2ZSBsZXNzIGNoYW5j
ZSB0byBsaXZlLCBoYXZpbmcgdG8ga25vdyB3aGVuIHRoZSBjdXAgb2YgZGVhdGggd2lsbCBjb21l
LCBJIGRlY2lkZWQgdG8gY29udGFjdCB5b3UgdG8gY2xhaW0gdGhlIGZ1bmQgc2luY2UgSSBkb24n
dCBoYXZlIGFueSByZWxhdGlvbiBJIGdyZXcgdXAgZnJvbSBhbiBvcnBoYW5hZ2UgaG9tZS4KCkkg
aGF2ZSBkZWNpZGVkIHRvIGRvbmF0ZSB0aGlzIG1vbmV5IGZvciB0aGUgc3VwcG9ydCBvZiBoZWxw
aW5nIE1vdGhlcmxlc3MgYmFiaWVzL0xlc3MgcHJpdmlsZWdlZC9XaWRvd3MgYW5kIGNodXJjaGVz
IGFsc28gdG8gYnVpbGQgdGhlIGhvdXNlIG9mIEdvZCBiZWNhdXNlIEkgYW0gZHlpbmcgYW5kIGRp
YWdub3NlZCB3aXRoIGNhbmNlciBmb3IgYWJvdXQgMyB5ZWFycyBhZ28uIEkgaGF2ZSBkZWNpZGVk
IHRvIGRvbmF0ZSBmcm9tIHdoYXQgSSBoYXZlIGluaGVyaXRlZCBmcm9tIG15IGxhdGUgaHVzYmFu
ZCB0byB5b3UgZm9yIHRoZSBnb29kIHdvcmsgb2YgQWxtaWdodHkgR29kOyBJIHdpbGwgYmUgZ29p
bmcgaW4gZm9yIGFuIG9wZXJhdGlvbiBzdXJnZXJ5IHNvb24uCgpOb3cgSSB3YW50IHlvdSB0byBz
dGFuZCBhcyBteSBuZXh0IG9mIGtpbiB0byBjbGFpbSB0aGUgZnVuZHMgZm9yIGNoYXJpdHkgcHVy
cG9zZXMuIEJlY2F1c2Ugb2YgdGhpcyBtb25leSByZW1haW5zIHVuY2xhaW1lZCBhZnRlciBteSBk
ZWF0aCwgdGhlIGJhbmsgZXhlY3V0aXZlcyBvciB0aGUgZ292ZXJubWVudCB3aWxsIHRha2UgdGhl
IG1vbmV5IGFzIHVuY2xhaW1lZCBmdW5kIGFuZCBtYXliZSB1c2UgaXQgZm9yIHNlbGZpc2huZXNz
IGFuZCB3b3J0aGxlc3MgdmVudHVyZXMsIEkgbmVlZCBhIHZlcnkgaG9uZXN0IHBlcnNvbiB3aG8g
Y2FuIGNsYWltIHRoaXMgbW9uZXkgYW5kIHVzZSBpdCBmb3IgQ2hhcml0eSB3b3JrcywgZm9yIG9y
cGhhbmFnZXMsIHdpZG93cyBhbmQgYWxzbyBidWlsZCBzY2hvb2xzIGFuZCBjaHVyY2hlcyBmb3Ig
bGVzcyBwcml2aWxlZ2UgdGhhdCB3aWxsIGJlIG5hbWVkIGFmdGVyIG15IGxhdGUgaHVzYmFuZCBh
bmQgbXkgbmFtZS4KCkkgbmVlZCB5b3VyIHVyZ2VudCBhbnN3ZXIgdG8ga25vdyBpZiB5b3Ugd2ls
bCBiZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcyBwcm9qZWN0LCBhbmQgSSB3aWxsIGdpdmUgeW91IG1v
cmUgaW5mb3JtYXRpb24gb24gaG93IHRoZSBmdW5kIHdpbGwgYmUgdHJhbnNmZXJyZWQgdG8geW91
ciBiYW5rIGFjY291bnQgb3Igb25saW5lIGJhbmtpbmcuCgpUaGFua3MKTXJzLiBNaW5hIEEuIEJy
dW5lbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
