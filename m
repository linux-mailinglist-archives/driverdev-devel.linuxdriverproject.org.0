Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D35921C341
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 11:10:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7BE822154C;
	Sat, 11 Jul 2020 09:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TkuiprTFN-R; Sat, 11 Jul 2020 09:10:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B36C220405;
	Sat, 11 Jul 2020 09:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B10431BF3BA
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 09:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8FDA20405
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 09:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVyRlBgs5fWx for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 09:10:46 +0000 (UTC)
X-Greylist: delayed 00:15:24 by SQLgrey-1.7.6
Received: from sonic312-53.consmr.mail.bf2.yahoo.com
 (sonic312-53.consmr.mail.bf2.yahoo.com [74.6.128.115])
 by silver.osuosl.org (Postfix) with ESMTPS id CE1D520399
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 09:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1594458644; bh=AEu8nK9QzTA2tbqo2l5BVwPShMs+2VsmLoZOZv6b3Lc=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=UkN5v1ppi0lZhY6hI2lYOX58kT6wJvZ6TmQAkluMDaWaPQvckhJ0npWFZqQcM/e7TVNZckVXNCCm/RgjwK2gD2R22DZv8XEA/JcFrZe6NOlis9NamkSYVBdL6aM4tiUgJ7icRJ2KeHwNLbpoxcJTBHQZckIlWcCncVxbfhj4n6InFRcLVPZaH0/FPcvtCLa/dDJEaQ5QxscmhBWJNh/lpXH6LZwVpodqwJorY++1MQTOR2cAcVMnfMHjdxusStirKjvoe1jSCTJugd+2QhlI+mFV4BzreIbeKoltj1u6PsUnHtw79whFM18xcyUCgRl0O/ThAfyl5nlcvuthbTYuNg==
X-YMail-OSG: 7oJUZ4gVM1kxxJVO_pZZtRgK5.cfjo.RKs8P7Wpt2qG5rpmvX86i.GWSSBPyBB_
 bqxklRdkOSC6ldvTcCIwsgi2yZPR_pGic_SlSE.UCwDEUAPB.Jqx5PiWD08F95w9vwJfIAkSVllO
 7itjaPH91UZY_4vd4bKnDQj9M0jjCuvDWKR1nOfi_7cPIQFslV1OFBFinKgDY6q1ZIgr9XYC.PMe
 4SfVHVj1xkjCZUlX3AYkjRNmytBgFh5qzOrp1F_XJ3X_6anYTjVlGClDbV7rtcr1WBbZ9tKpPGiG
 iPitgfkqfClSgwKUWt9FNUmsveCyu6WgkW0VOM1hJFroGsmcRviZxftM9mPB3MH7hh4nlsJPNquM
 OxP9ct2InvOkj069Eu2NBmlyQYuwVOGBq4QC2EBMkJC5BerOT5mRzznVQW0Wssh4R9TgWSGHXCr2
 uT4.OAfCB5Eh9PJBSsYJkK70_OuXc5clQJOiUOW5YXMgsoAj1YvTWTVtakaGGW1KCJc9b.pv.o.Y
 SgX9OSYFhKT.Kq8eLadkrd85PG2KkCvyxvXrs08FkQF8jUGOdfpO6Sz0MedE3HSR8AMXVTNoEteA
 WGSsOJmUoU76eDU89_stUHoaQFLKzCcNWwGjWPTn4bKbQAZffiP.zDezegwtuAGgiLXXY8Qq2BzJ
 6C7FBMHQ._XBuA497iRJ2EpHKQDYOqkhM6cfHwnpShRiWtrhHDKlSsigl_5_THiSC1dDuSFTG3ME
 1JjSaWHnYQebA1UmdBBGoMtXbdg.Unr03kCAy6JYiOX8uBe.qzjSqXSDdNyJylu.g9ZtlYzqb_vr
 DMpsEnabJJYK4HSuuq0VLDselhIsWrUuHliDVNGjP4mm6iW7kB0z3gI.VQo2RhPetEZvI4uSFaow
 66KD0Cq4xqebZr_uqojvIiNuI1EAKbsliU7PHNm3En3lViqSwq18bmirM4iIOv9._u6sTm.Xyq3e
 0VaeMS3uCOJzhZ_Ce6XcBSB8YO6.SSSNe_ZXQ5BygxzfNbiO3VcvFzG4.VJsGlkiOaQts9.O6E9Q
 LFwZnN7dxG45px0x.aTqQil_1eKdVejHScMyDNb5R67c.Mkqhcj.arpKIia0F0yPdvzBUxo6GCFK
 Zm_pNIcer1s2Mqi03XljewkFvyAnehqABR.smX3zn9Oi6RxmpzVfDSwU2FkCbDUrPbvwkCcU8L9P
 mKiGC4qZtMFpUQxH3y6G4luRtPOWR90HYcJYSPl5VhSI.wkZiTMY4tcslEUUE2.2bIqXdj2ZacUD
 scqHclKyVsYHphTYiBLNiNMEZPr7ZcANSV0dldSnjhXq31yXtjFQXINwdTWobrucP_XmVJxtO0y5
 vuypibSBdWg9UEf68WveCFgUfCkI2GUlF
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.bf2.yahoo.com with HTTP; Sat, 11 Jul 2020 09:10:44 +0000
Date: Sat, 11 Jul 2020 08:39:41 +0000 (UTC)
From: "Mrs. Maureen Hinckley" <mau37@hgvt.in>
Message-ID: <1951584041.46322.1594456781742@mail.yahoo.com>
Subject: RE
MIME-Version: 1.0
References: <1951584041.46322.1594456781742.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138
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
Reply-To: maurhinck8@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpJIGFtIE1hdXJlZW4gSGluY2tsZXkgYW5kIG15IGZvdW5kYXRpb24gaXMgZG9uYXRpbmcgKEZp
dmUgaHVuZHJlZCBhbmQgZmlmdHkgdGhvdXNhbmQgVVNEKSB0byB5b3UuIENvbnRhY3QgdXMgdmlh
IG15IGVtYWlsIGF0IChtYXVyaGluY2s4QGdtYWlsLmNvbSkgZm9yIGZ1cnRoZXIgZGV0YWlscy4K
CkJlc3QgUmVnYXJkcywKTXJzLiBNYXVyZWVuIEhpbmNrbGV5LApDb3B5cmlnaHQgwqkyMDIwIFRo
ZSBNYXVyZWVuIEhpbmNrbGV5IEZvdW5kYXRpb24gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
