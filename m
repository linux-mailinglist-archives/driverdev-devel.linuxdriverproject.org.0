Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD4213EF5
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jul 2020 19:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4ED25898B8;
	Fri,  3 Jul 2020 17:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xA-cTZ1uGvE2; Fri,  3 Jul 2020 17:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CC0C898BD;
	Fri,  3 Jul 2020 17:49:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7F5B1BF5AE
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 17:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1370987EA7
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 17:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YeQGF1lKi4kZ for <devel@linuxdriverproject.org>;
 Fri,  3 Jul 2020 17:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic307-9.consmr.mail.ne1.yahoo.com
 (sonic307-9.consmr.mail.ne1.yahoo.com [66.163.190.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B12D87E89
 for <devel@driverdev.osuosl.org>; Fri,  3 Jul 2020 17:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1593798550; bh=oNkfXBM+RqIDo1FB4rRSRike8Y1xSkAHi1CSHTibtxQ=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=uIfRQWx56j75wA060DOwBxuDf+AUFQvkBHFT0Y1VppXBCEVMM+qiXL3U0XZ/B1zlmKw6v7tT3EbIElAmTu3OSawc8d0E/ls2t6+KSgF8pFWyE9t1QSW22StDZYhramyy0v7bUsIZ0TObGYucAyoKwHsXBndW9Tyz5KWjwWr/lPkRKgpFCxdaB+sWVuvrK4e+fvv8qY/rakboKzsmH3Re4wpQlH4pem++sRs82F7PaHduw/zLVFOsp/qIbHV3emmNQ9HKO5ilkXhJHOM6I4XmsJCaH+oFOMF6AVFZwAKjWH8nl+fuNdq5SUc9ejIARBUlDFsf/HE4IVD459pZcFT8iQ==
X-YMail-OSG: tzZAr1IVM1n0aXXrmPMbU8OPzAQEn6bIV5kV15P5cGRK6mTx9ys7pGT.TSMMX8c
 M4EvUy44qfZYCehMGeg.w8G64doNrJ4rkBuuPJH1RCdwqAvkisDR1Uf88rzaK4yOf8oXHZs2GnLq
 IXK5HOCaU9W4dNhOgZiYOXOC5ZGcu2VxcUeGiM60_AtfkBf683pqGrUmf2JMhdk6HrH.EQ77PxEj
 3dnLbPLCb_0BoZKSmg4GzKPWN28LJ2bUsb02bMUo5avEZuUV6aI0VChWx4BmexvHw88OKjlxsI8S
 eHCh_mDnOCFhwh0po._jEoUxjiCmYHhUHOe1kZeRWun.VqbQDz4Z8meRliV5ttAcTtN3sGv9e7ws
 5Mhypt0UGbkXOtSxeDRKpqeP9dluLKe2c8z2P1XFnzXIuAEneu5yFW.j6dWUmkhoVuMuwmGcsKJO
 dntxy8j3JMV8v7RRivDpVDskDO4rGvA22r5J9U5ZUqrAjLt6BVrsFK6KZ05uNPpj6rm95qjoo_VF
 tl0FZ3Qkq8nyw6MwZ28Gg8bx57C0JQRP90T1FjLUosWT0QizkhKaCyDlGZbTv7pM4SKrXEXO1MSN
 MlGqXjWUTEX0auNhCy0Ee.I58.5XQK4qeNVVkW_w.k8lnrJTmPATzv7cfVDElZqbrIbseUQP9pvA
 J2HeU3rncjzO4Bn.eSEc.pbEShyaDr8_h_ig2CWOZDWJb8SySP65kkTnOrXw05wK44ygsZE3NwSE
 aw.8pTobSxlbDcD.pWipmSavkVzKFBgbtv1aya8AKCeXR8iHnbo4ot9.m73Iag.prwqhVoj8LkeD
 V4vRmsFAQ4AQ3kb5nXWRNvgHs4GebV9qdViVEALabdoET9nc2kv_adcMayNdnNpFyGQRj3t2m1jD
 ennSq1C1.BTa0xCgambZo.smUbFOqSYWPXOlXtUtaPednb1Yu0UOvkS4DA04eCdz7zzSpf2Rs.kR
 uff.Jevdk6Q25.yUezCKNAhGUmYh1BlOLk_qTmza3kilSDJ5nT2IFjLLkpmykYK_p1ytvzhGyTFd
 sopR4vmDNX9T59hKNaUg9eANEp6JiB8ETDnkmvOSH0hTksrXKeZzoDElHPbpfiY5HovVRz1QkBdB
 YFbxbkDmOm1sbIbP24Tc7mST2SoG5VI78NtY_L.2SC7cXDxdDihZ.sKw2Ik41p6svCrbHn1Wy19z
 .Mguwb8PabcwjS3t46wIZtKNWYZSJr6JgPJsyUt.rOVFMOhr9rnHc8mNFwFGez94nZwAqTk6y3fV
 1UefgNJG7CNkkNfA4eSx3r_2CX8Rc2GDxR8Mu1CJAfcx6w7Tmh5c7m08z3mcyT9XB4YFpk6WDLUI
 TE_UtPpJf4T5GqyDEDg5sMFFTp2Ed6R6YvbBFVosUqAXMGCdhfkrcvJdQp_KBZQw-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ne1.yahoo.com with HTTP; Fri, 3 Jul 2020 17:49:10 +0000
Date: Fri, 3 Jul 2020 17:49:07 +0000 (UTC)
From: Sarah Laboso <isittoomuch@yahoo.com>
Message-ID: <199964191.2149693.1593798547689@mail.yahoo.com>
Subject: GOOD DAY MY TRUST ONE
MIME-Version: 1.0
References: <199964191.2149693.1593798547689.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116
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
Reply-To: sarahlaboso701@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpHb29kIGRheSBhbmQgR29kIGJsZXNzIHlvdSBhcyB5b3UgcmVhZCB0aGlzIG1hc3NhZ2UsIEkg
YW0gYnkgbmFtZSBTYXJhaCBMYWJvc28gYW0gMjcgeWVhcnMgb2xkIGdpcmwgZnJvbSBLZW55YSwg
eWVzIG15IE1vdGhlciB3YXMgTGF0ZSBNcnMuIExvcm5hIExhYm9zbyB0aGUgZm9ybWVyIEtlbnlh
biBBc3Npc3RhbnQgTWluaXN0ZXIgb2YgSG9tZSBhbmQgYWZmYWlycyB3aG8gd2FzIGFtb25nIHRo
ZSBwbGFuIHRoYXQgY3Jhc2ggb24gYm9hcmQgaW4gdGhlIHJlbW90ZSBhcmVhIG9mIEthbG9uZ+KA
mXMgd2VzdGVybktlbnlhIFJlYWQgbW9yZSBhYm91dCB0aGUgY3Jhc2ggd2l0aCB0aGUgYmVsb3cg
d2ViIHNpdGUKCmh0dHA6Ly9lZGl0aW9uLmNubi5jb20vMjAwOC9XT1JMRC9hZnJpY2EvMDYvMTAv
a2VueWEuY3Jhc2gvaW5kZXguaHRtbCBJIGFtIGNvbnN0cmFpbmVkIHRvIGNvbnRhY3QgeW91IGJl
Y2F1c2Ugb2YgdGhlIG1hbHRyZWF0bWVudCBJIGFtIHJlY2VpdmluZyBmcm9tIG15IHN0ZXAgbW90
aGVyLiBTaGUgcGxhbm5lZCB0byB0YWtlIGF3YXkgYWxsIG15IGxhdGUgbW90aGVycyB0cmVhc3Vy
eSBhbmQgcHJvcGVydGllcyBmcm9tIG1lIHNpbmNlIHRoZSB1bmV4cGVjdGVkIGRlYXRoIG9mIG15
IGJlbG92ZWQgbW90aGVyLiBPbmUgZGF5IEkgb3BlbmVkIG15IG1vdGhlciBicmF2ZSBjYXNlIGFu
ZCBzZWNyZXRseSBmb3VuZCBvdXQgdGhhdCBteSBtb3RoZXIgZGVwb3NpdGVkIHRoZSBzdW0gb2Yg
JCAyNy41IG1pbGxpb24gaW4gQk9BIGJhbmsgQnVya2luYSBGYXNvIHdpdGggbXkgbmFtZSBhcyB0
aGUgbmV4dCBvZiBraW4sIHRoZW4gSSB2aXNpdGVkIEJ1cmtpbmEgRmFzbyB0byB3aXRoZHJhdyB0
aGUgbW9uZXkgYW5kIHRha2UgY2FyZSBvZiBteXNlbGYgYW5kIHN0YXJ0IGEgbmV3IGxpZmUsIG9u
IG15IGFycml2YWwgdGhlIEJhbmsgRGlyZWN0b3Igd2hvbSBJIG1lZXQgaW4gcGVyc29uIE1yLiBC
YXRpc2ggWm9uZ28gdG9sZCBtZSB0aGF0IG15IG1vdGhlciBsZWZ0IGFuIGluc3RydWN0aW9uIHRv
IHRoZSBiYW5rLCB0aGF0IHRoZSBtb25leSBzaG91bGQgYmUgcmVsZWFzZSB0byBtZSBvbmx5IHdo
ZW4gSSBhbSBtYXJyaWVkIG9yIEkgcHJlc2VudCBhIHRydXN0ZWUgd2hvIHdpbGwgaGVscCBtZSBh
bmQgaW52ZXN0IHRoZSBtb25leSBvdmVyc2Vhcy4KClRoYXQgaXMgdGhlIHJlYXNvbiB3aHkgSSBh
bSBpbiBzZWFyY2ggb2YgYSBob25lc3QgYW5kIHJlbGlhYmxlIHBlcnNvbiB3aG8gd2lsbCBoZWxw
IG1lIGFuZCBzdGFuZCBhcyBteSB0cnVzdGVlIGZvciB0aGUgQmFuayB0byB0cmFuc2ZlciB0aGUg
bW9uZXkgdG8gaGlzIGFjY291bnQgZm9yIG1lIHRvIGNvbWUgb3ZlciBhbmQgam9pbiB5b3UuIEl0
IHdpbGwgYmUgbXkgZ3JlYXQgcGxlYXN1cmUgdG8gY29tcGVuc2F0ZSB5b3Ugd2l0aCAzMCUgb2Yg
dGhlIG1vbmV5IGZvciB5b3VyIGhlbHAgYW5kIHRoZSBiYWxhbmNlIHNoYWxsIGJlIG15IGNhcGl0
YWwgd2l0aCB5b3VyIGtpbmQgaWRlYSBmb3IgbWUgdG8gaW52ZXN0IHVuZGVyIHlvdXIgY29udHJv
bCBvdmVyIHRoZXJlIGluIHlvdXIgY291bnRyeS4KCkFzIHNvb24gYXMgSSByZWNlaXZlIHlvdXIg
cG9zaXRpdmUgcmVzcG9uc2Ugc2hvd2luZyB5b3VyIGludGVyZXN0IEkgd2lsbCBzZW5kIHlvdSBt
eSBwaWN0dXJlJ3MgaW4gbXkgbmV4dCBtYWlsIGFuZCBkZWF0aCBjZXJ0aWZpY2F0ZSBvZiBteSBN
b24gYW5kIGhvdyB5b3Ugd2lsbCByZWNlaXZlIHRoZSBtb25leSBpbiB5b3VyIGFjY291bnQuCgpD
b250YWN0IG1lIHRob3VnaCBteSBFbWFpbDogc2FyYWhsYWJvc283MDFAZ21haWwuY29tCgpZb3Vy
cyBTaW5jZXJlbHkKU2FyYWggTGFib3NvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
