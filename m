Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0F31FF35F
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 15:41:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B988E884CD;
	Thu, 18 Jun 2020 13:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ljh53RdmIiyp; Thu, 18 Jun 2020 13:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 387918820A;
	Thu, 18 Jun 2020 13:41:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8BC61BF29C
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 13:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B138388649
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 13:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0ObS9-N7ftU for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 13:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-25.consmr.mail.ir2.yahoo.com
 (sonic312-25.consmr.mail.ir2.yahoo.com [77.238.178.96])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC17288647
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 13:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1592487687; bh=rSr8hvNpJ7ThyWjjBFl69/Iq1LcumvzfJdg1HxqXY6E=;
 h=Date:From:To:Subject:References:From:Subject;
 b=Gy34uhUEs/ikKobr+7aoLlrOF/646CG0gE+SefEGWidGyCzWrCwuEFScCzwZP/rBQvtSSpS9TbuzRxc87012N/NSD4LcXl6B+e0tbzUxhUSVIZoHO0/rwzTv1tHmSbQunQJESRDD10J/AUYr2kYvrWChCk23Dh+RCnDggc7yosCHeD5sG+8NkV3v492fle3bOOkGnfHsjCcG9zRSKUv0RgLKJZtxY3pan1KPSrQxf6u44yiMebmxHBizDrDLcvx+uIW65CnHmvYHwMC1thiRYmelasljeUpzGQ2qlmWo7Q4Be5aPqD9zPtEqHzDpe0WbHI+plpr4AJZ+tjZKWFFNiA==
X-YMail-OSG: zRWFiiEVM1m9JMqhdMB83xiZQlSerXeRsWVnPRmAHsj.ufBsCcyz9XggVQ_EVS3
 RuUz.wvKdpgYAYWLObSChPvp2FJOs4yqBdesCVTR.nHqsAQHL8doVLDMLZXxcbm7zryefz423HIZ
 VX0Ey70P2rlYvzXx0o73ejcF4NRoVOWn2QqlfktEi8zvr5uSewP7BXy.5GRzYz4bpZz2cbfIXWJL
 YoNFhjT5GHe1HOUuDhdMkF_gjzJwE56WiSAoh.F6gaHhEmahXkKRVnPNtk5jC5rystiQ2LTl_xer
 6GKI9JQMvYTwYd4YIeeurbeHdlZTl7bbFUT2pjv4CI2kPMGTtNexBpPcLPocJWN7HN5kGx9AfaAy
 3QB3Xn4xaDEBhb9W4KPMV5HgA5cq3hWGeBZIu3600bzuibws7c3cEB0Td5Sl0yYOQgIChnGxNSTI
 20IceBfqUuET54gplhNWU0xh4Q0BtbIq6sjKp1EH6PfcrgOEi.eMHazsoS5LFYDoAV9X88487bYw
 E8ibalRNcHbEtl8vFkf1q9y0olmQW5K9LvHRw8M9akeyDYd.feUjayZvTJE6c9se5vqoeqmuVv.q
 jxX1kmqzRRutLfCI6MDwHuZqAW7SnjBEtwXp3EMPiulGRrLmj98gKsEf1eX_6.UqHtmlcI71EUb8
 q8jiHNnMI3MS5T.PP9KtwIlrP9GjihpBUtGfsIn.ZrF_HjoFjx8nXe.waafltETwgApOva.S863U
 03CuCoXDrE62afcoewXoSuJC7kRnX8M_SizyPtcmxKOhEUjXZdHtlCyMHNv0.wVBDIOUC2cKpMrP
 cO2ZIqO2s0GQnwj3.eE5bgWb1JYYQ0ezxlrUg_0u3exlINZRVNvQEsvrkL0V38AcIAcm.Z5UDcMM
 DKfDOErpXlckovSKyrJF66rUgPftiwrD87xVMIQDxZFP.vTzQf2iwl0fLmgCOC5tAXxbpkbnfiI.
 eP8xV91MV9bmmwyUQvmgHRKc5sd17ULyzhtrKtlBRGkeM5T54NfrgW4FT.YQXw0cDMhhdmowfHXZ
 JI5QjQH6N2HrIi5lnyXqkwO5Ega9xGPKP291SjDBNhrRhRfsV.5Gcksieaghkv9bxxanX83XrqxA
 mqjMpakwW.E.09uPBM0sY.qFlKykRgsrQEcE3jQcGCEPmAVZrYDCXK39DR.ZqgKDUKqqaUcXCksP
 tVXs8iEQByBWJHEcndBTH4AczSStgaHW5rAI6fi6129LOA27KKd9L3TRjo8gsUVUeqSYAjLIejnC
 KzrUKk95jsh4cz_D7soWrYDeIo4qgDUyu8qSVdle1S0n8Ym9l3JUsw3gocIYxGdW6bUgXg891DEM
 9tklSC_sGuWt.mZuTQ9f_pQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ir2.yahoo.com with HTTP; Thu, 18 Jun 2020 13:41:27 +0000
Date: Thu, 18 Jun 2020 13:41:26 +0000 (UTC)
From: Daniel Patrick <daniel.patrick101@yahoo.com>
To: daniel.patrick101@yahoo.com
Message-ID: <1945614344.538522.1592487686484@mail.yahoo.com>
Subject: Good News Dear Good Friend,
MIME-Version: 1.0
References: <1945614344.538522.1592487686484.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16138 YMailNodin Mozilla/4.0 (compatible; MSIE 8.0;
 Windows NT 6.1; Trident/4.0; GTB7.5; SLCC2; .NET CLR 2.0.50727;
 .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBOZXdzIERlYXIgR29vZCBGcmllbmQsCgpJIGFtIGhhcHB5IHRvIGluZm9ybSB5b3UgYWJv
dXQgbXkgc3VjY2VzcyBpbiBnZXR0aW5nIHRob3NlIGZ1bmRzIHRyYW5zZmVycmVkIHVuZGVyIHRo
ZSBjby1vcGVyYXRpb24gb2YgYSBuZXcgcGFydG5lciBmcm9tIEdlcm1hbnkuCgpQcmVzZW50bHkg
SSdtIGluIEdlcm1hbnkgZm9yIGludmVzdG1lbnQgcHJvamVjdHMgd2l0aCBteSBvd24gc2hhcmUg
b2YgdGhlIHRvdGFsIHN1bS4gTWVhbndoaWxlLCBJIGRpZG4ndCBmb3JnZXQgeW91ciBwYXN0IGVm
Zm9ydHMgYW5kIGF0dGVtcHRzIHRvIGFzc2lzdCBtZSBpbiB0cmFuc2ZlcnJpbmcgdGhvc2UgZnVu
ZHMgZGVzcGl0ZSB0aGF0IGl0IGZhaWxlZCB1cyBzb21lIGhvdywgbm93IGNvbnRhY3QgbXkgTGF3
eWVyIHRocm91Z2ggaGlzIGNvbnRhY3QgZGV0YWlscyBoZXJlIGJlbG93IFRIT1VHSCBoZSBpcyBp
biBBZnJpY2EgSXZvcnkgQ29hc3QuCgpOYW1lOiBCYXJyaXN0ZXIgRWdvIEFtYWthClRlbDogKzIy
NSA1NSA2NiAyOSA0NQpFbWFpbDrCoCBiYXJyaXN0ZXJlZ29hbWFrYUB5YWhvby5mcgoKSGUgaXMg
aW4gQWJpZGphbiBJdm9yeSBDb2FzdCwgaGlzIG5hbWUgaXMgQmFyci4gRWdvIEFtYWthLCBhc2sg
aGltIHRvIHNlbmQgeW91IHRoZSBDaGVxdWUgb2YgJDE1MCwwMDAuMDAgVVNEIChPbmUgSHVuZHJl
ZCBhbmQgRmlmdHkgVGhvdXNhbmQgVW5pdGVkIFN0YXRlIERvbGxhcnMpIHdoaWNoIGkga2VwdCBm
b3IgeW91ciBjb21wZW5zYXRpb24gZm9yIGFsbCB5b3VyIHBhc3QgZWZmb3J0cyBhbmQgYXR0ZW1w
dHMgdG8gYXNzaXN0IG1lIGluIHRoaXMgbWF0dGVyLiBJIGFwcHJlY2lhdGVkIHlvdXIgZWZmb3J0
cyB0byBoZWxwIG1lIGF0IHRoYXQgdGltZSB2ZXJ5IG11Y2guCgpGZWVsIGZyZWUgYW5kIGdldCBp
biB0b3VjaCB3aXRoIGhpbSBhbmQgcGxlYXNlIGRvIGxldCBtZSBrbm93IGltbWVkaWF0ZWx5IHlv
dSByZWNlaXZlIHRoZSBDaGVxdWUgc28gdGhhdCB3ZSBjYW4gc2hhcmUgdGhlIGpveSB0b2dldGhl
ciBhZnRlciBhbGwgdGhlIHN1ZmZlcmluZyBhdCB0aGF0IHRpbWUuIGF0IHRoZSBtb21lbnQsIEkn
bSB2ZXJ5IGJ1c3kgaGVyZSBiZWNhdXNlIG9mIHRoZSBpbnZlc3RtZW50IHByb2plY3RzIHdoaWNo
IEkgYW5kIG15IG5ldyBwYXJ0bmVyIGFyZSBoYXZpbmcgYXQgaGFuZCBub3cuCgpJIGhhdmUgZm9y
d2FyZGVkIGluc3RydWN0aW9uIHRvIG15IExhd3llciBvbiB5b3VyIGJlaGFsZiB0byByZWNlaXZl
IHRoZSBjaGVxdWUsIHNvIGZlZWwgZnJlZSB0byBnZXQgaW4gdG91Y2ggd2l0aCBoaW0sIGhlIHdp
bGwgc2VuZCBpdCB0byB5b3Ugd2l0aG91dCBhbnkgZGVsYXkuCgpGb3IgeW91ciBpbmZvcm1hdGlv
biwgSSBnYXZlZCB0aGUgTGF3eWVyICQxMDAgVVNEIGluY2FzZSBvZiBhbnkgZXhwZW5jZXMgZHVy
aW5nIHRoZSBDaGVxdWUgZGVsaXZlcnkgdG8geW91IGluIHlvdXIgY291bnRyeSBwbGVhc2UgdGFr
ZSBub3RlLgoKUmVtYWluIEJsZXNzZWQKRGFuaWVsIFBhdHJpY2suCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
