Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AC32160A9
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jul 2020 22:54:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EEB188C05;
	Mon,  6 Jul 2020 20:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWj6QYetCKAb; Mon,  6 Jul 2020 20:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CB8C87E5F;
	Mon,  6 Jul 2020 20:53:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E2621BF966
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 20:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5988B888B9
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 20:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MT6LL5x4gK6B for <devel@linuxdriverproject.org>;
 Mon,  6 Jul 2020 20:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-12.consmr.mail.bf2.yahoo.com
 (sonic316-12.consmr.mail.bf2.yahoo.com [74.6.130.122])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBBB287E75
 for <devel@driverdev.osuosl.org>; Mon,  6 Jul 2020 20:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1594068833; bh=V/xD043VdamLc6OfaqB/7lmArPz28JfCMgD/S7Y8km8=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=hqB+orxxk6kEegv9wV19xOfW2fYGCdrXeY/aEPExF8nOdkPMWttUiHZPPXXHIzsCMM0IEgNRkT10f7QB+yVgkvTIGQVq5fqY7MGH9oGFJ/6ixplW0+oXnFLdtmnt7qRTANvV4vicQP5obEnoeqIhsjVIY6ycRFlh3YJ+dXgx9l/jGvyDp8OWiN93ZNuT4Yo4lAn72Iry3GITm37d0gtf9hFtcMbMzW8A+fD4iEmfHkVJAQXWbNUKQbHAVnTwu3LbRRJiKtFoMf8UZKHaoCzyPtUfVbIgKqBRwDQrf5DK/o7ZGldJzZBbXfsWY8rowFq16izWpatmtUFh75wUN4O5YA==
X-YMail-OSG: .6xNDTUVM1kPu5NJk5yPHgmvRXB.Dxsojb63j3SV_VN6yM3Xzwbxyg7eIFPxmLR
 0rK3p41LefAL_nSQjq9iAaScMDkoyBBBsUdkKNj8LoiUukPiFBgEOALqrZaXi0LQhZZ2Va_QTlBA
 8H40dhDMymZkhlaTbLJonjA.fsKIzw9BEdzBAFDYx.Nr1hKk2Jm6oXfHe7MAjwhhsUl3xQmpjP2A
 EMP4KLLGoqjWT1uQjPLNuK81i5dLUqdCBJu77z6iHqnMH9hUSqiW4fTnwOa06EpmHZ2FcgVh2QMp
 XGz0KW8B2SZ1R6FptEZzaYrJOEjA17tH8M0TG7nfUe4yRqVP31BGLaVg.ofgZuIomFUHMckR4BBM
 a7vJ2JEuZeO8tyl4kqOSgh95jNIcGyvo.pX2h_FWCvu1HVEcFkhpM3PbRCiCafMDPdy.LydXqur2
 hcCUubue2zCZEErVCb3O597k9u6Pbmt2KF93.5QMHXwSPl5jO_aaEr4nub2NakJlLaqKAC.9oAEI
 1_YZzXskG2VyL2hAERBxVrHXSHdiUcDycd0lUPcfANbxUIgqyxrUfYRcVCYWhMHX6zt8yCHtGrXU
 p89cZ.n39xnKPVtfXD0S5hqRtD.NP6MDhH1ukIgG46NLd9GBVnMdxJqPb.ohVYUDWlTfW89KAJiy
 KmmPUi8Tz6rhu.Tb0MKYJTwxxPmCVnyjYlh_0EyJuWMiy55nD3JL5gIVy6BlQdHfZNE3T97lw01t
 6ogtsswhuWZq7ECpXjleUEE9p7akx0v0xgjEdYmCP9hUk3jFC0EpI5r9WPo5ghZ_L3PioqHwZ74m
 kvgQAP.iRNmJcRUW77smchhvw7DiCYzjVAJWUf1yJHEjzhelV44wanUf.tQUusUIAXMqihCmD8Cy
 UukTTc3yH2cx.JKK4Cp2OW5BEuzvlUlkoDRG8rVDzV5yJ0748PzZpToASvXYWB2eNfbJaAvB5fCM
 IzAOCYr1o1JGpTqFoSmCWJrXwH8kXbJlrffGeOJBXABv6kJs2chIXUxD179ln51Kw98C.NGkM.Dw
 I1I0VkmBH1k0kq.GA1vpO2Twf7bM3WZg7dc4tSdD1MQR9V_PIlUGObs5E.3dKMLREAImtXoXzpZl
 TnL6VaZHP3mwVNmVQv05E5SNTsn.COzn9AFDwNqHVWmBktfVphOrH6TVcqwNq9LsAalpyEtLEwHl
 u47Rzc3ol.kir9ZInVjejDV4yvjNeJuF.e2ojDRmb7xYdC17sgq2EDOMRPrJeDPDRYN6FCaiWPXA
 ClTqaWMTk6eePczzRjJERk3ZkTPOnG2hkYbnwp5k7IIsHFuBZd8FmbnDg8goa_tZyAiPdDHKZtRo
 6Bw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.bf2.yahoo.com with HTTP; Mon, 6 Jul 2020 20:53:53 +0000
Date: Mon, 6 Jul 2020 20:53:51 +0000 (UTC)
From: "Mrs. Maria Nelsoma" <myself.esteemed4@yahoo.com>
Message-ID: <923843915.1464484.1594068831509@mail.yahoo.com>
Subject: RE; KINDLY ACCEPT MY FUND PROPOSAL
MIME-Version: 1.0
References: <923843915.1464484.1594068831509.ref@mail.yahoo.com>
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
Reply-To: myself.esteemed@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTrCoE1ycy7CoE1hcmlhwqBOZWxzb21hCgpJwqBhbcKgTXJzLsKgTWFyaWHCoE5lbHNvbWHC
oFdob8KgbWFycmllZMKgdG/CoE1yLsKgUm9iZXJ0wqBOZWxzb21hwqB3aG/CoHdvcmtlZMKgaW7C
oE1hbnnCoEVtYmFzc3nCoGxpa2XCoFVTQSzCoEFVU1RSQUxJQcKgQU5EwqBGUkFOQ0XCoGJlZm9y
ZcKgaGXCoGZpbmFsbHnCoGVuZMKgdXDCoGluwqBCZW5pbsKgUmVwdWJsaWMuwqDCoFdlwqB3ZXJl
wqBtYXJyaWVkwqBmb3LCoDI1wqB5ZWFyc8Kgd2l0aG91dMKgYcKgY2hpbGQuwqBIZcKgZGllZMKg
YWZ0ZXLCoGHCoGJyaWVmwqBpbGxuZXNzwqB0aGF0wqBsYXN0ZWTCoGZvcsKgb25secKgZm91csKg
ZGF5cy7CoEJlZm9yZcKgaGlzwqBkZWF0aMKgd2XCoHdlcmXCoGJvdGjCoGJvcm7CoGFnYWluwqBD
aHJpc3RpYW4uCgpTaW5jZcKgaGlzwqBkZWF0aMKgScKgZGVjaWRlZMKgbm90wqB0b8KgcmVtYXJy
ecKgb3LCoGdldMKgYcKgY2hpbGTCoG91dHNpZGXCoG15wqBtYXRyaW1vbmlhbMKgaG9tZcKgd2hp
Y2jCoHRoZcKgQmlibGXCoGlzwqBhZ2FpbnN0LsKgV2hlbsKgbXnCoGxhdGXCoGh1c2JhbmTCoHdh
c8KgYWxpdmXCoGhlwqBkZXBvc2l0ZWTCoHRoZcKgc3VtwqBvZsKgJDQuMsKgRm91csKgTWlsbGlv
bsKgVHdvwqBodW5kcmVkwqBUaG91c2FuZMKgRG9sbGFyc8KgKDQuMinCoE1pbGxpb27CoFUuUy7C
oERvbGxhcnMpwqBpbsKgdGhlwqBiYW5rwqBoZXJlwqBpbsKgYcKgZml4ZWTCoHN1c3BlbnNlwqBh
Y2NvdW50wqBhbmTCoGhlwqBkZWNsYXJlwqB0aGXCoGZ1bmTCoHdoZXJlwqBtYWRlwqBmb3LCoG91
csKgZmFtaWx5wqBpbnRlbmRpbmfCoGJ1c2luZXNzLAoKUHJlc2VudGx5LMKgScKgYW3CoHZlcnnC
oHNpY2vCoGF0wqB0aGXCoENlbnRyZcKgTmF0aW9uYWzCoEhvc3BpdGFsaWVywqBldMKgVW5pdmVy
c2l0YWlyZcKgKENOSFUpwqBIb3NwaXRhbMKgaGVyZcKgaW7CoEJlbmluwqBSZXB1YmxpYyzCoG15
wqBkb2N0b3LCoHRvbGTCoG1lwqB0aGF0wqBJwqBoYXZlwqBzZXJpb3VzwqBjYW5jZXLCoHdoaWNo
wqB0aGXCoGRvY3RvcsKgZ2F2ZcKgbWXCoG5vwqBhc3N1cmFuY2XCoG9mwqBzdXJ2aXZpbmfCoGl0
wqBhbmTCoEnCoGhhdmXCoGZld8KgdGltZcKgdG/CoGxpdmXCoGhlcmXCoG9uwqBlYXJ0aC7CoEnC
oGRlY2lkZWTCoHRvwqB1c2XCoHRoYXTCoGZ1bmTCoHRvwqBoZWxwwqB0aGXCoG9ycGhhbmFnZXMs
wqB3aWRvd3MswqBhbmTCoHRoZcKgTGVzc8KgUHJpdmlsZWdlwqBvbmVzwqBhbGzCoG92ZXLCoHRo
ZcKgd29ybGQuwqDCoEhhdmluZ8Kga25vd27CoG15wqBjb25kaXRpb27CoGFjY29yZGluZ8KgdG/C
oHRoZcKgZG9jdG9ywqBJwqBkZWNpZGVkwqB0b8KgZG9uYXRlwqB0aGlzwqBmdW5kwqB0b8KgYcKg
Y2h1cmNowqBvcsKgaW5kaXZpZHVhbMKgdGhhdMKgd2lsbMKgdXRpbGl6ZcKgdGhpc8KgbW9uZXnC
oHRoZcKgd2F5wqBJwqB3aXNowqBiecKgaGVscGluZ8KgdGhlwqBob3VzZcKgb2bCoEdvZMKgb3LC
oGJ1aWxkaW5nLgoKVGhlwqBCaWJsZcKgbWFkZcKgdXPCoHRvwqB1bmRlcnN0YW5kwqB0aGF0wqBi
bGVzc2VkwqBpc8KgdGhlwqBoYW5kwqB0aGF0wqBnaXZldGguwqBJwqB0b29rwqB0aGlzwqBkZWNp
c2lvbsKgYmVjYXVzZcKgScKgZG9u4oCZdMKgaGF2ZcKgYW55wqBjaGlsZMKgdGhhdMKgd2lsbMKg
aW5oZXJpdMKgdGhpc8KgbW9uZXkuwqBJwqBkb27igJl0wqB3YW50wqBhwqBzaXR1YXRpb27CoHdo
ZXJlwqB0aGlzwqBtb25lecKgd2lsbMKgYmXCoHVzZWTCoGluwqBhbsKgdW5nb2RsecKgd2F5LsKg
VGhpc8KgaXPCoHdoecKgScKgYW3CoHRha2luZ8KgdGhpc8KgZGVjaXNpb24uwqBJwqBhbcKgbm90
wqBhZnJhaWTCoG9mwqBkZWF0aMKgaGVuY2XCoEnCoGtub3fCoHdoZXJlwqBJwqBhbcKgZ29pbmcu
wqBJwqBrbm93wqB0aGF0wqBJwqBhbcKgZ29pbmfCoHRvwqBiZcKgaW7CoHRoZcKgYm9zb23CoG9m
wqB0aGXCoExvcmQuCgrCoFdpdGjCoEdvZMKgYWxswqB0aGluZ3PCoGFyZcKgcG9zc2libGUuwqBB
c8Kgc29vbsKgYXPCoEnCoHJlY2VpdmXCoHlvdXLCoHJlcGx5wqBJwqBzaGFsbMKgZ2l2ZcKgeW91
wqB0aGXCoGNvbnRhY3TCoG9mwqB0aGXCoGJhbmvCoGhlcmXCoGluwqBCZW5pbsKgUmVwdWJsaWPC
oHdoZXJlwqBtecKgaHVzYmFuZMKgZGVwb3NpdGVkwqB0aGXCoG1vbmV5LsKgScKgd2FudMKgeW91
wqBhbmTCoHRoZcKgY2h1cmNowqB0b8KgYWx3YXlzwqBwcmF5wqBmb3LCoG1lwqBiZWNhdXNlwqB0
aGXCoGxvcmTCoGlzwqBtecKgc2hlcGhlcmQswqBtecKgaGFwcGluZXNzwqBpc8KgdGhhdMKgScKg
bGl2ZWTCoGHCoGxpZmXCoG9mwqBhwqB3b3J0aHnCoG9mwqBlbXVsYXRpb25zLgoKV2hvc29ldmVy
wqB0aGF0wqB3YW50c8KgdG/CoHNlcnZlwqB0aGXCoExvcmTCoG11c3TCoHNlcnZlwqBoaW3CoGlu
wqBzcGlyaXTCoGFuZMKgVHJ1dGguwqBQbGVhc2XCoGFsd2F5c8KgYmXCoHByYXllcmZ1bMKgYWxs
wqB0aHJvdWdowqB5b3VywqBsaWZlLsKgUGxlYXNlwqBhc3N1cmXCoG1lwqB0aGF0wqB5b3XCoHdp
bGzCoGFjdMKgYWNjb3JkaW5nbHnCoGFzwqBJwqBTdGF0ZWTCoGhlcmVpbi7CoFRoYXTCoHlvdcKg
d2lsbMKgbm90wqBiZXRyYXnCoG1lwqBvcsKgeW91wqBzaGFsbMKgdGFrZcKgYW7CoE9hdGjCoG9m
wqB0aGlzwqBmdW5kwqB0aGF0wqB5b3XCoHdpbGzCoG5ldmVywqBnb8KgYWdhaW5zdMKgbXnCoGxh
c3TCoHdpc2guCgpEb8Kgbm90wqBiZcKgYWZyYWlkwqBvZsKgdGhlwqBiYW5rwqB3aGVyZcKgdGhl
wqBmdW5kwqB3YXPCoGRlcG9zaXRlZMKgYmVjYXVzZcKgdGhlwqBiYW5rwqBtecKgaHVzYmFuZMKg
ZGVwb3NpdGVkwqB0aGlzwqBmdW5kwqBoYXPCoGFzwqBDb3JyZXNwb25kaW5nwqBvcsKgQWZmaWxp
YXRlZMKgQmFua8KgaW7CoEV1cm9wZcKgYW5kwqBVbml0ZWTCoFN0YXRlLgoKUmVtYWluwqBibGVz
c2VkwqBpbsKgdGhlwqBMb3JkLgoKWW91cnMsCk1ycy7CoE1hcmlhwqBOZWxzb21hCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
