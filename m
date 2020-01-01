Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBC912DDF8
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jan 2020 07:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EA4688B56;
	Wed,  1 Jan 2020 06:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4p-xF2UCv2A; Wed,  1 Jan 2020 06:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F32584AB8;
	Wed,  1 Jan 2020 06:12:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E8871BF83A
 for <devel@linuxdriverproject.org>; Wed,  1 Jan 2020 06:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 33E4F2F195
 for <devel@linuxdriverproject.org>; Wed,  1 Jan 2020 06:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scxKHTrDAdsP for <devel@linuxdriverproject.org>;
 Wed,  1 Jan 2020 06:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic311-15.consmr.mail.bf2.yahoo.com
 (sonic311-15.consmr.mail.bf2.yahoo.com [74.6.131.125])
 by silver.osuosl.org (Postfix) with ESMTPS id 2BAC32049F
 for <devel@driverdev.osuosl.org>; Wed,  1 Jan 2020 06:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1577859142; bh=RFkL5gy5YztyhjPEqb8C7YgdticOB4/BDMyv0010KkE=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=UIzzcZZNDxpW4ERikqBKBjRYKRclPg1BpgPxQtwSCqf2a3XzVrGIT1xCCG7GxTDpbmgjAFsbOTwKPxCrc+apRIQ3XOdulqHqHFJ+0KpKXhxB00I06jJD+tkZ00UIyM2FZsGOucu11zUDRZ6X1InDHOEceYs2lOiK3o1yYqQapn7+dtDObMmeW0YA07Fad6tvurh/HNA7zOhORRxsYmcDnPmJ3lzKhcwRvi089nOpr9ZUTNyqp+oFugVlQpxV+YbNB4DOVQUVPceKc1dzUk9ef8Gx147klyoLVnrPUShI/bpR35RKCTTYMgg8gZuLc0YPBZyr4zMaBLRAq1RVTlPzCw==
X-YMail-OSG: tE.B2n4VM1m7ZnFAUdCuoBa5DxpowOC77ihfu3oTZEyvpAGdZqRvXZV94cHX_sA
 .dPrhmknCwllEFa6pj_PwMOezRE.7KgrTUxGh_agSJ6J_RL68y3t9sCy6gnmIE8LgGM1nDdxPzEJ
 mSFW.kxH3sIFCxQQYL9tT8Kz0emaFPlpKe.beRqqLVAgeqOB7y3jFU2bcGwL3FKq6BhUj3qKoqqT
 _lJLCsvBchtfWJrN.B89MMyQvKGgQOR9C417Cwq8EGXpsaH66eBbV3Q4o6bBhxXcp4snk8x0ldR.
 EkPQK0yUWsyKtDVuWBB5lbf7Vi6_i4.pr3.R7rj8zGx4fwv0pjkdmyZ0NsWuxqhFNdbPkHIwY3a3
 DoCRRBHRW6lcFXWh6VReqr1_oa.QMEXavTQms1s5TbbNe8mvGqYGLiuLfQEDTal07IwswAr1z58S
 dkZeKvWPpmBzDfec_zswY6gqP.goF8KaQ_XHB14ZvoygkOs4oTS4iglPi4m2yxHBURnizFZWEdJ5
 KGdsARnXp1wFs432XCHiiNAZYoISSCMKq8tTMUVoR5skaIvv5yuU4KYLW45as6sNwsT1YcHt7JbH
 Nqdi_BARAqtFnoGWDrK1s.XIp5RJ7PGz_9AQdkpjg7GVJisWMRdg8bkQTUTv9ENUS0EMLi_f.ObE
 j5i1EAL_vpb.w2_qutP9_xaaEelFG5ogATafpPB1VjsqLYaZvZoahi.K4P7DDaszVI4rBAJsSD.b
 8L2pb5jS9uZVid.zPECT3YsQLFNpxQNaRWbjTpJPyBg8vleFkeCdjlCgv0QQATq3i6rDz9lLw0MK
 QfEOSKkvip_nXmdFCd6zJ0PKd2fSWTSwlNFaVyWU.SWLL6hYVUwknXV1SSGlT39CNb9g.jbAsKuw
 U3OpxY5vMvgnTLASYW4CmJ8bhTOGBi7kDXbiQt7SKTyF4ZQswy2BCi93MRhKXfvtBp9LBlKQ61zc
 s2.FGva.VS75t6NHLzczLaSuGhyCbBCszdMZsiLpPmj1VHH2y9R3J2PecGd05hwOdtcc7mjizKda
 GxcPdQ2e5iYDhzhyyUxtOb0281Nbrne18dqukJlCzA9yXTnU7mI6u_ujtqiehc_0IHKmA38qyxDq
 AGD7jI3lL92jo8HfFoSr_6qZkURrEb2NZROMzfTzxoRsmPWk0lKqGJHTJJDCm0HOoA9NZoaSNwLb
 hIvMhZAIEO_6k_Dtbm0yzOXm0tTQoCsNFqOG6Sxq9P8MsLF4To34ADBwfsHENuaxgmOOy12gBDUM
 IurufJYbpUUpf0vQMYAHP.9paFfX1_9rX3Uy0dvG2j0qeKyBov0RR3Yhv7hE5dnaz82mlDfWcC0V
 5Js4mPCSwz3gVn0IZ.L9_GF4O5E9AMgDWcv_N
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.bf2.yahoo.com with HTTP; Wed, 1 Jan 2020 06:12:22 +0000
Date: Wed, 1 Jan 2020 06:12:18 +0000 (UTC)
From: Mrs Aisha Al-gaddafi <mrsaishagaddafi18@gmail.com>
Message-ID: <1780032366.3542320.1577859138270@mail.yahoo.com>
Subject: Greetings
MIME-Version: 1.0
References: <1780032366.3542320.1577859138270.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNodin Mozilla/5.0 (Windows NT 10.0;
 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120
 Safari/537.36 AVG/77.2.2156.122
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
Reply-To: mrsaishaalgaddafi09@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpHcmVldGluZ3MgYW5kIE5pY2UgRGF5LgoKQXNzYWxhbXUgQWxhaWt1bQoK
TWF5IGkgwqB1c2UgdGhpcyBtZWRpdW0gdG8gb3BlbiBhIG11dHVhbCBjb21tdW5pY2F0aW9uIHdp
dGggeW91IHNlZWtpbmcgeW91ciBhY2NlcHRhbmNlIHRvd2FyZHMgaW52ZXN0aW5nIGluIHlvdXIg
Y291bnRyeSB1bmRlciB5b3VyIG1hbmFnZW1lbnQgYXMgbXkgcGFydG5lciwgTXkgbmFtZSBpcyBB
aXNoYSDCoEdhZGRhZmkgYW5kIHByZXNlbnRseSBsaXZpbmcgaW4gT21hbiwgaSBhbSBhIFdpZG93
IGFuZCBzaW5nbGUgTW90aGVyIHdpdGggdGhyZWUgQ2hpbGRyZW4sIHRoZSBvbmx5IGJpb2xvZ2lj
YWwgRGF1Z2h0ZXIgb2YgbGF0ZSBMaWJ5YW4gUHJlc2lkZW50IChMYXRlIENvbG9uZWwgTXVhbW1h
ciBHYWRkYWZpKSBhbmQgcHJlc2VudGx5IGkgYW0gdW5kZXIgcG9saXRpY2FsIGFzeWx1bSBwcm90
ZWN0aW9uIGJ5IHRoZSBPbWFuaSBHb3Zlcm5tZW50LgoKSSBoYXZlIGZ1bmRzIHdvcnRoICJUd2Vu
dHkgU2V2ZW4gTWlsbGlvbiBGaXZlIEh1bmRyZWQgVGhvdXNhbmQgVW5pdGVkIFN0YXRlIERvbGxh
cnMiIC0kMjcuNTAwLjAwMC4wMCBVUyBEb2xsYXJzIHdoaWNoIGkgd2FudCB0byBlbnRydXN0IG9u
IHlvdSBmb3IgaW52ZXN0bWVudCBwcm9qZWN0IGluIHlvdXIgY291bnRyeS5JZiB5b3UgYXJlIHdp
bGxpbmcgdG8gaGFuZGxlIHRoaXMgcHJvamVjdCBvbiBteSBiZWhhbGYsIGtpbmRseSByZXBseSB1
cmdlbnQgdG8gZW5hYmxlIG1lIHByb3ZpZGUgeW91IG1vcmUgZGV0YWlscyB0byBzdGFydCB0aGUg
dHJhbnNmZXIgcHJvY2Vzcy4KSSBzaGFsbCBhcHByZWNpYXRlIHlvdXIgdXJnZW50IHJlc3BvbnNl
IHRocm91Z2ggbXkgZW1haWwgYWRkcmVzcyBiZWxvdzoKCm1yc2Fpc2hhYWxnYWRkYWZpMDlAZ21h
aWwuY29tCgpCZXN0IFJlZ2FyZHMKTXJzIEFpc2hhIEdhZGRhZmkKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
