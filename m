Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA97A288FFF
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 19:31:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D4108773F;
	Fri,  9 Oct 2020 17:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5e-ojV10xow; Fri,  9 Oct 2020 17:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5417E87487;
	Fri,  9 Oct 2020 17:31:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 530E51BF57C
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 17:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3676C8723A
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 17:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIZI5bnCeRrU for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 17:31:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic307-54.consmr.mail.ir2.yahoo.com
 (sonic307-54.consmr.mail.ir2.yahoo.com [87.248.110.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BC7281612
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 17:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1602264663; bh=tjrjkIzve6Gsedupb7nqXzJ+2wwws8dhVrfKijOZEHg=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=WaG0XKHdF0AJlUC17D54XGErVQ7YSoGVmP9UZ+Z/ePmUm+Ka1fXn8aIZect01oLuTeaO0IZIQl3D6JBantRxm5hzmyzylOH111b6cWVnSM6RlDJBJiJ/WuwU+S4SXLX1yjcUT9tJDPSWbipokc1tJ7ApnkMuWapODMPyeanHJuK+OYmm3hPivu+/Zg8iLQWTFAKnYrIbFxNY8RKZDV4jOTXJZkagynkLJypV0f+JoR3dKg2sPCO0lYK7CyaEh3O/V/J2HOZGzaZVTr450fUjPCnOiJWh765Mndu/7HSI6UzaIW6GaxAsHqZBDG8kqnbrYC9oAQEZN7CyZ3QGxCJKgA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1602264663; bh=DmJPWpJJAczpQomzALDEIlN9BbCSTrcTsl56eHgzWrj=;
 h=Date:From:Subject;
 b=H+Miub4S8l8CXioS6lpE1TuJEH/Wsah5sMk6NMIZMmxohQpZcgZ8F7AS2l1juQLWHTu2IG3Pzcc0GdAH2QkJ8yWSMGURe146GFdJcAqwd5dO4xtb/TzbmGMYxFZOnfZLsDE/zA06qdYmjclGwGK/qmFCag3tC6UaQlvd6tjuSkoXTELe+sOt2feM7ikujNofvNBtql54Gx7q6mdkWpdoqsmAOSeyE0PIdBPc7n30AOGefICdMinX4+XH2A5Q7Vp42kVAEaO07KVI0cvGWdF6JDg4+aRicRjIdqE1ShWkYsmRXzTy/P9HBwCVPTB+lxaPdB+wrrXHcXffbIlPazRlUg==
X-YMail-OSG: ZU3C8fwVM1k2G_vGOJwMxftHx4P.20ZvQ7hOZNZijGLoQosNF7Qq9e9ylUzENZ.
 uQF8gpAVc2PrKJ3y_kZua4fRRaboQz9nzxVvtN7sYXbrWf.GThCHYs73wA154tGTcUrmCE9MAYto
 iDE8pWI1_GBOUBixbN0RRu4Gu8bdl0n8NMFodxkP7c29XEP_2tG46eWqLshKxHtgcRudHLTfgFaY
 pri1KYQLT0HIGTFfDKvYrzJ9J1yZaZPO3ngFEMJX3lPBLrlcfsjOrhRPUzJuo2gXbbVuFhbHHEX9
 KBIMJTQSLUrHEvqSnXuH6urkE90.lrb4VMa.jmPfZd2zZfF5db.gO.GSF2xwxEIDKsUwjvJ.ZrWA
 WwLG1eFh65vyxX7YbnBQtwu1Mkd2NdOGaPLylm2uHMi3nvR1SOLZUcIPkngN3VMSTuOgTnMNeG.t
 1KAk9P83jRl9d1Jgjo6TWoUWBf0f0sunfIH1bSX6bSbFkfCYLpKvDkb9tyQdiw2uiFcB8s.bb0OP
 JsUOTXeAtbwnJD4AaSI1i8Zk9BW6qsedLPmhqcces0j1HG16.BgomAbbN6B.joxDCYsajFDs0xF4
 u.20f2_qNWMUVSY2MIlENO5fTChbA94b3X8afjj.Ix6iW0v4b2x21AJUXkwZcY65hde99God9LJC
 TUxruX6adURJ5.Ug3I4qHI.5YGkA8ugatuF5QqI9SdYJN9QcPvurfyBJeRSo9GzXT4fDyuzIIdLk
 dyb_3XAmDJkPFNpkDYepJ1Z0s6zVuwAYzsLw0ykj6uypMR3_oR2IW98oRpQAJAO1xTHvk1hDSDzI
 n52AJYTUk3_WN83HqKDlvHvR5s13id67Z_fY0OgnZn3qOOpA53joB_vuBlzO_geFPfHHBR_Ree_.
 y8R5dnFM3ZXyH0Zt.RJ90Cp1Ta3DLcmh6RxLN.Fj9S7bEdjcckSaDafet90cN6MDeZXP_ZfqQLMW
 h9vYX38o0LiPJvmPiTs6zWdiNFyQp92kQVPq.jHQ0Ky1.XQzM__ME.gR.HiTzEvw2ZlWzzrOgJ7g
 n1NN_r2EIkXE_RvEkFgWJHy8Iryfqv18S10MrdJiLaHrJJbLXW7.TclLEc87tBQEZGqg.P_Vekdu
 fI81RKfCc.xeh2OXYbxVYhjVIxqbiBk4gNpT7E42VqH_hjr2x.K1WfTvX4030xyVSgjzjp_I254s
 jJEGi.pZ0kPwh79LQC97h1jxFxVyhoRdRVQXkp5dtXlSpHWQmYmJzZJ3GPoVVbWH2nMnvbct3gJt
 7ZH3WijhW2FWAxTT.OAdmr7SFNLIS1zHGgn2bjKbmgnCXS5uCD_tkqG1eCT9lNYHJCRCfZ0f1LKo
 wjsDNZ1cdKSwqKOUCWALJxyCNntubBdB2UPRtLlHt9EtANzqQPELiHU605hyVeV0JbJX6.pifH2u
 _Ov6FTnvmm3YV8XXB4AfLqXzB1paMt58qGlH8dfWxVylmHaqK3g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ir2.yahoo.com with HTTP; Fri, 9 Oct 2020 17:31:03 +0000
Date: Fri, 9 Oct 2020 17:30:58 +0000 (UTC)
From: Vernitha Maynard <vernithamaynard6@yahoo.com>
Message-ID: <1060959612.1931686.1602264658033@mail.yahoo.com>
Subject: =?UTF-8?Q?Gru=C3=9F,?=
MIME-Version: 1.0
References: <1060959612.1931686.1602264658033.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16795 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102
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
Reply-To: vernitha.maynard@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3J1w58sCgpNaXQgd2FybWVtIEhlcnplbiBiaWV0ZSBpY2ggSWhuZW4gbWVpbmUgRnJldW5kc2No
YWZ0IHVuZCBtZWluZSBHcsO8w59lIGltIE5hbWVuIHVuc2VyZXMgSGVycm4gYW4sIHVuZCBpY2gg
aG9mZmUsIGRhc3MgZGllc2VyIEJyaWVmIFNpZSByZWNodHplaXRpZyB0cmlmZnQuIEljaCBzY2hs
YWdlIG1pdCBtZWluZW0gZnJlaWVuIFZlcnN0YW5kIHZvciB1bmQgYWxzIGVpbmUgUGVyc29uIGRl
ciBJbnRlZ3JpdMOkdCB2b24gR290dCB3ZWnDnyBpY2gsIGRhc3MgZGllcyBEaWUgQm90c2NoYWZ0
IHdpcmQgSWhuZW4gYWxzIMOcYmVycmFzY2h1bmcgZXJzY2hlaW5lbiwgZGllIHdpciBrYXVtIGtl
bm5lbiwgYWJlciBkaWUgR25hZGUgR290dGVzIGhhdCBtaWNoIHp1IElobmVuIGdlbGVpdGV0LCB1
bmQgaWNoIHfDvG5zY2hlLCBkYXNzIFNpZSBkaWVzZSBCb3RzY2hhZnQgbGVzZW4gdW5kIGltIE5h
bWVuIGRlcyBIZXJybiBnZXNlZ25ldCB3ZXJkZW4uCgpJY2ggaGFiZSBlaW5lbiBHZWhpcm50dW1v
cjsgSWNoIGxlaWRlIGltIE1vbWVudCBzY2hyZWNrbGljaC4gTWVpbiBBcnp0IGhhdCBtaXIgZ2Vy
YWRlIG1pdGdldGVpbHQsIGRhc3MgbWVpbmUgVGFnZSB3ZWdlbiBtZWluZXIgR2VzdW5kaGVpdCBn
ZXrDpGhsdCBzaW5kIHVuZCBkYWhlciB6dW0gc2ljaGVyZW4gVG9kIHZlcnVydGVpbHQgc2luZC4g
RGVyemVpdCBoYWJlIGljaCBhbGxlIG1laW5lIEVyc3Bhcm5pc3NlIGbDvHIgbWVpbmUgbWVkaXpp
bmlzY2hlIFZlcnNvcmd1bmcgYXVmZ2VicmF1Y2h0LgoKQWJlciBpY2ggaGFiZSBlaW5pZ2UgTWl0
dGVsIGbDvHIgbWVpbiBXb2hsdMOkdGlna2VpdHNwcm9qZWt0OyBEaWVzZSBHZWxkZXIgd2VyZGVu
IGJlaSBlaW5lciBkZXIgQmFua2VuIGhpZXIgaW4gQ290ZSBEJ0l2b2lyZSBXZXN0YWZyaWthIGhp
bnRlcmxlZ3QuIE1laW4gRmFtaWxpZW5zdGFuZCBpc3Qgc28sIGRhc3MgaWNoIGxlZGlnIGJpbiwg
d2VpbCBpY2ggbWVpbmVuIEVoZW1hbm4gw7xiZXIgOSBKYWhyZSB2ZXJsb3JlbiBoYWJlIHVuZCBs
ZWlkZXIga2VpbiBLaW5kIHp1c2FtbWVuIGhhdHRlLCBmw7xyIGRhcyBpY2ggbWVpbiBWZXJtw6Rj
aHRuaXMgbmljaHQgaGludGVybGFzc2VuIGthbm4uIFVtIG1laW4gR2VsZCBmcmVpenVnZWJlbiwg
bcO2Y2h0ZSBpY2ggZGFoZXIgZWluZSBTcGVuZGUgbWFjaGVuLCBkYW1pdCBtZWluIEdlbGQgbmlj
aHQgc3RyZW5nIGJlc3RldWVydCB3aXJkLgoKRGF6dSB3w6RyZSBpY2ggc28gYW5tdXRpZyB1bmQg
dW0gZGVuIEFybWVuIHp1IGhlbGZlbiwgZGFzIEVyYmUgaW4gSMO2aGUgdm9uIHZpZXIgTWlsbGlv
bmVuIEV1cm8gKDQuMDAwLjAwMCwwMCBNaWxsaW9uZW4gRXVybykgenUgZ2ViZW4sIGRhbWl0IFNp
ZSBpbiBtZWluZW0gR2Vkw6RjaHRuaXMgZWluZSB3b2hsdMOkdGlnZSBHcnVuZGxhZ2Ugc2NoYWZm
ZW4ga8O2bm5lbiwgZGFtaXQgZGllIEduYWRlIEdvdHRlcyBtaXQgbWlyIGlzdCBiaXMgenUgbWVp
bmVtIGxldHp0ZW4gWnVoYXVzZSwgZGFtaXQgaWNoIGVpbmVuIGVocmVudm9sbGVuIFBsYXR6IGJl
aW0gSGVycm4sIHVuc2VyZW0gVmF0ZXIsIGVyaGFsdGVuIGthbm4uCgpJY2ggaGFiZSBrZWluZSBB
bmdzdCwgZGVubiBiZXZvciBpY2ggU2llIGtvbnRha3RpZXJ0ZSwgaGFiZSBpY2ggbWVocmVyZSBO
w6RjaHRlIGxhbmcgZGFydW0gZ2ViZXRldCwgZGFzcyBkZXIgSGVyciBtaXIgZGVuIEtvbnRha3Qg
ZWluZXIgdmVydHJhdWVuc3fDvHJkaWdlbiBQZXJzb24gZ2lidCwgZGVyIGljaCBkaWVzZSBBbmdl
bGVnZW5oZWl0IGFudmVydHJhdWVuIGthbm4sIHVuZCBpY2ggZ2xhdWJlLCBkYXNzIG1laW5lIEtv
bnRha3RlIHp1IElobmVuIGfDtnR0bGljaCBzaW5kLgoKV2lzc2UsIGRhc3MgZHUgMzAlIGRlcyBH
ZWxkZXMgZsO8ciBkaWNoIGJlaGFsdGVuIGthbm5zdCB1bmQgZGVyIFJlc3Qgd2lyZCB2ZXJ3ZW5k
ZXQsIHVtIGVpbmUgZ2VtZWlubsO8dHppZ2UgU3RpZnR1bmcgaW4gbWVpbmVtIEdlZMOkY2h0bmlz
IHVuZCBlaW5lbiBWZXJiYW5kIGltIEthbXBmIGdlZ2VuIEtyZWJzIHp1IHNjaGFmZmVuIHVuZCBh
dWNoIFdhaXNlbmjDpHVzZXIgenUgYmF1ZW4uCgpJY2ggesOkaGxlIGF1ZiBJaHJlbiBndXRlbiBX
aWxsZW4gdW5kIGluc2Jlc29uZGVyZSBhdWYgZGllIG9yZG51bmdzZ2Vtw6TDn2UgVmVyd2VuZHVu
ZyBkaWVzZXIgTWl0dGVsLiBJY2ggYmV6d2VpZmxlIG5pY2h0LCBkYXNzIGljaCBJaG5lbiBzZWhy
IHZlcnRyYXVlLCBkYXNzIEdvdHQgbWljaCB6dSBJaG5lbiBmw7xocmVuIGthbm4uIE1laW5lIEUt
TWFpbCB2ZXJuaXRoYS5tYXluYXJkQHlhaG9vLmNvbQoKCkluIEVyd2FydHVuZyBJaHJlciBwcm9t
cHRlbiBBbnR3b3J0IGVyaGFsdGVuIFNpZSBtZWluZSBoZXJ6bGljaGVuIHVuZCBicsO8ZGVybGlj
aGVuIEdyw7zDn2UuCgpEZWluLApGcmF1IFZlcm5pdGhhIE1heW5hcmQKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
