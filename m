Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DAE25128B
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 09:04:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4E4A8774F;
	Tue, 25 Aug 2020 07:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABwsQqcJ9NrY; Tue, 25 Aug 2020 07:04:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DCD4867D4;
	Tue, 25 Aug 2020 07:04:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49FCA1BF2C3
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 07:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C518203D6
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 07:04:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8crNxTmfift for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 07:04:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic310-13.consmr.mail.bf2.yahoo.com
 (sonic310-13.consmr.mail.bf2.yahoo.com [74.6.135.123])
 by silver.osuosl.org (Postfix) with ESMTPS id E21942001D
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 07:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1598339070; bh=I9cE52qY+/L3IUyr11oQWnUCHh04m6b8lIZvgDg8Tc0=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=fU+LBp8u5Y0RdPNK4x9gpRw2KroPDkWddS0zLaWkyrEe0WHwigPMO0cQf8ujWJRRlpTYg9sEV7o/zv0CeTiK8qVDuvtR3nKeWBJX788GzT1MxFgP1YsSpWxtoDWvbJ/615sbo+3w8LmPnrhPDvLpsZJKjMcMEmIqiew2aSClZ/6lVqUZKNScekzmL6COFQvPZBSeyZsmiMlRt4osfobzJ8NtY60hEaX33YF2otD3+lv16GA+h8OxKBEfF0orpWUYEBM9v3Pdqb3fxoa4q9sdRfhmvnSnrFIFE2DrUkgu/yQl/795SkW7Tew80EgNLIhaK46WoTQF4fbpCxotbNcCtw==
X-YMail-OSG: Cux2HNkVM1mWpKNSqvDud34f9M1mDk6TgvxDCVo8_91kdMfqaFcSQp.zYq6w4jD
 .JRBVF2KKC0SjUsU06RDaUPtyqDc3Dtp9YZ9keDS6SL4F.tbygjFMd5vXAFq7Ky2Tfa1A8lbD06T
 M50JS3P1hO9ttCUit0SVAoOxwhFIbM.tX8LtP3gr0GZ6UuPF.j0.355NZkbPjqEBEUrDBMzBWQOo
 rBrsEVynLjIfgi7T0ZtyaFQ5BOasGXPUsgTaNm8Jz62tRi8DRA4FPeyDM5ygOL3Dg0pRy3Uvnook
 IsNVV6kxXNPySyRc1QDzwNTxozZm6p_dwje1eNH.sHj3oz1DlYRO0BETNsJnVPR0ZclrOMnPk_Ny
 Yj1fYAapfhfLdKhy2pYH4ydoVWjChkEmq0pMIAgJHxI0u1O6FNXEbv6e80W_qGv4ughxpxhuT6ED
 cwnWKut7EhLNpzc5VPrgldnNsdg8pHmUu7ZTPgQ4.VhgL_Yn9qOhi6v2avVuLFdX2fZ0V3eEVjUG
 E50eEdAkZrM62yw5o04jmcmC32B2sEHaSi0LUSgZovxVkq4HRX0O6lhlAWRxKX9GQ0dwF3fp0Df_
 hC7afg0qsOObvVtZIQfdlAPB60hgeWwMvj.eSaOtLAFBVDwWN9Kgfx3DEys5qRXXCpX5Ij49eXEY
 Srjp4CvENOUv6sj1wdztN901JS0Wb0P64JykhjnWilUmzBAh1sWvoolr7IpEAKv6je0fRBgHfmGM
 ZGU5V.C.D.L3nQ9w9tCuZuwJWUMwhDMW415sizEPn6UMgzgWF4OhS9qwPLcG..jDWl9MHsMJ.y6e
 QVhHz6XcihqMJL3z_5eYtbTB6ZO4_CSc5J22pVyp34_DlVzcdAtfRnQ2tNzeeHULlbBU_.zpGCTI
 l0It7musAXIV5RV0AlDDVi_GhAecRnA1.CSUZ6nuqWqa_WJ47Mz1GHm3CJkDCawZiWKIUuKSWKDm
 WPJ2h3Aoilgu9BJCjt8zwQeCZNUtl32ztpwGKyCuraulbD0HOG6i1JQX5UdcfUG3x4r6_V9_puxR
 tcUWx3ye9QAX2.6lG6g1ACIVst75dtz3zOB22nB1RIAJGztV7gvBlmNTrUc0564CgC2sFiJdd85Y
 5gNgvQOGoip.Tw10nE259W4LGbaszY0kbC2e283.N4RfIKKDxsVB3SeFk2Lah2EjGJR_PAt7pC7Q
 mZoRzIyvks9apSIIDxiEYn_zL6r5YtCMvDw2oiSrxscV2yP09UCPnqYwy8KKYuKYM1gYaKgEmNyG
 B0IihVGUAFctLTGBp1.TIZGQbWM_sgDJN4iV7fYLbjB2daKVo.mX1WjKCF5YLsBhG1IA1N1mo0Fz
 73b1FLDrPY6CVqY8EpiPTyPxNuMgeJs50iugBR16DZzxx6LsR12IjQpY1jflrUEdgY06EGKoP4XD
 vAvyu8eT20.ubwapYjuD.IBt6F2ZU8jz0ZvuzaMe1enRU5g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.bf2.yahoo.com with HTTP; Tue, 25 Aug 2020 07:04:30 +0000
Date: Tue, 25 Aug 2020 07:04:28 +0000 (UTC)
From: Sgt Vivian Robert  <sgtvivarob@gmail.com>
Message-ID: <448853476.5259689.1598339068457@mail.yahoo.com>
Subject: kindly respond to my mail
MIME-Version: 1.0
References: <448853476.5259689.1598339068457.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16455 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:79.0) Gecko/20100101 Firefox/79.0
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
Reply-To: sgtvivarob@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpHb29kIERheSwgSSBhbSBnbGFkIHRvIGNvbnRhY3QgeW91IHRocm91Z2ggdGhpcyBtZWRpdW0g
SeKAmW0gU2d0IFZpdmlhbiBSb2JlcnQgYW0gZnJvbSB1bml0ZWQgc3RhdGUsIDI4IHllYXJzIG9s
ZCBzaW5nbGUgSSBhbSB0aGUgb25seSBzdXJ2aXZpbmcgY2hpbGQgb2YgbXkgbGF0ZSBwYXJlbnRz
LCBJIGFtIEFtZXJpY2EgZmVtYWxlIHNvbGRpZXIgcHJlc2VudGx5IGluIEFmZ2hhbmlzdGFuIGZv
ciB0aGUgdHJhaW5pbmcsIGFkdmlzaW5nIHRoZSBBZmdoYW4gZm9yY2VzIGFuZCBhbHNvIGhlbHBp
bmcgaW4gc3RhYmlsaXppbmcgdGhlIGNvdW50cnkgYWdhaW5zdCBzZWN1cml0eSBjaGFsbGVuZ2Vz
LCBhbSBBY3R1YWxseSBzZWVraW5nIHlvdXIgYXNzaXN0YW5jZSB0byBldmFjdWF0ZSB0aGUgc3Vt
IG9mICQzLjUgbWlsbGlvbiwgVGhpcyBtb25leSBJIGdvdCBpdCBhcyBteSByZXdhcmQgaW4gc2Vy
dmljZSBieSBBZmdoYW5pc3RhbiBnb3Zlcm5tZW50IHRvIHN1cHBvcnQgbWUgZm9yIG15IEdvb2Qg
am9iIGluIHRoZWlyIGxhbmQuIFJpZ2h0IG5vdywgSSB3YW50IHlvdSB0byBzdGFuZCBhcyBteSBi
ZW5lZmljaWFyeSBhbmQgcmVjZWl2ZSB0aGUgZnVuZCBteSBjZXJ0aWZpY2F0ZSBvZiBkZXBvc2l0
IGZyb20gdGhlIEJhbmsgd2hlcmUgdGhpcyBmdW5kIGRlcG9zaXRlZCBhbmQgbXkgYXV0aG9yaXph
dGlvbiBsZXR0ZXIgaXMgd2l0aCBtZSBub3cuTXkgY29udGFjdCB3aXRoIHlvdSBpcyBub3QgYnkg
bXkgcG93ZXIgYnV0IGl0IGlzIGRpdmluZWx5IG1hZGUgZm9yIEdvZCdzIHB1cnBvc2UgdG8gYmUg
ZnVsZmlsbGVkIGluIG91ciBsaXZlcy4gSSB3YW50IHlvdSB0byBiZSByZXN0IGFzc3VyZWQgdGhh
dCB0aGlzIHRyYW5zYWN0aW9uIGlzIGxlZ2l0aW1hdGUgYW5kIGEgMTAwJSByaXNrIGZyZWUgaW52
b2x2ZW1lbnQsIGFsbCB5b3UgaGF2ZSB0byBkbyBpcyB0byBrZWVwIGl0IHNlY3JldCBhbmQgY29u
ZmlkZW50aWFsIHRvIHlvdXJzZWxmICwgdGhpcyB0cmFuc2FjdGlvbiB3aWxsIG5vdCB0YWtlIG1v
cmUgdGhhbiA3IHdvcmtpbmcgYmFua2luZyBkYXlzIGZvciB0aGUgbW9uZXkgdG8gZ2V0IGludG8g
eW91ciBhY2NvdW50IGJhc2VkIG9uIHlvdXIgc2luY2VyaXR5IGFuZCBjb29wZXJhdGlvbi4gaSB3
YW50IHlvdSB0byB0YWtlIDQwJSBQZXJjZW50IG9mIHRoZSB0b3RhbCBtb25leSBmb3IgeW91ciBw
ZXJzb25hbCB1c2UgV2hpbGUgMjAlIFBlcmNlbnQgb2YgdGhlIG1vbmV5IHdpbGwgZ28gdG8gY2hh
cml0eSwgcGVvcGxlIGluIHRoZSBzdHJlZXQgYW5kIGhlbHBpbmcgdGhlIG9ycGhhbmFnZSB0aGUg
cmVtYWluaW5nIDQwJSBwZXJjZW50IG9mIHRoZSB0b3RhbCBtb25leSAueW91IHdpbGwgYXNzaXN0
IG1lIHRvIGludmVzdCBpdCBpbiBhIGdvb2QgcHJvZml0YWJsZSBWZW50dXJlIG9yIHlvdSBrZWVw
IGl0IGZvciBtZSB1bnRpbCBJIGFycml2ZSB5b3VyIGNvdW50cnkuIElmIHlvdeKAmXJlIHdpbGxp
bmcgdG8gYXNzaXN0IG1lIGNvbnRhY3QgbWUgdGhyb3VnaCBteSBlbWFpbCBhZGRyZXNzIOKAnHNn
dHZpdmFyb2JAZ21haWwuY29tLgoKU2d0IFZpdmlhbiBSb2JlcnQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
