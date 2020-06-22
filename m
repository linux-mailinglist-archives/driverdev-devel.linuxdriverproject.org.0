Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EE7203BAF
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 17:58:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 541C087315;
	Mon, 22 Jun 2020 15:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sm9pw4_GdAAD; Mon, 22 Jun 2020 15:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9887A87252;
	Mon, 22 Jun 2020 15:58:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78E9B1BF389
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 15:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7548989402
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 15:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H9KEBk-d2EbN
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 15:58:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic302-21.consmr.mail.ne1.yahoo.com
 (sonic302-21.consmr.mail.ne1.yahoo.com [66.163.186.147])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42259893F1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 15:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1592841515; bh=ac0sCjJUI93cXt8Ne4UV+BUmdTO8c8UeaDLEdPti3zY=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=scCB+Q6Gjf0KzflGkUiiHnirxZPhUadIbQy4yqWUwgd55dcbqJHRgQGLKmTmzqJRp9B2jypnIKM0+UPee5Qdin17acYTeNSrZNUWc6b8oFHl1JV6YKexGdFVS+/g68rZoDDx9kHpElPAxiEVNlQC8DiI6l9b0bVmEziivC8tnStES7wQyJe+E5PdVac/SOi9fBmvp+eAJtQBd8y/Fgr2PCNau4wnbAY64iunL4XaQjLCqJ139Y7RY8FW2N+MyDAiVOai0ceUcO2kUiFo4FiBwCBNMJq9ytN3HTe7p8faMG9+6vDMjF/bPQnwGRC3YsYHGGXB+LMYsdqWdmJRLW/Axw==
X-YMail-OSG: Dx4DwhEVM1nMKsfl753AL1pa_1MAl8PfB8S1hTI6fa0HXgcVGSu063xlTclFjGM
 Tws5nt5YK7rscRG_1mkppPcX.Erbobn8VyUscr9DzjmOdR1UzLYgvXUvwhaZ7ryd1WNLUxbzGTWZ
 KbS4DctdPNI3mv1hwwM_UZnyBQvKFBybprZU35c3IxT4Lyw41JmhXjAi784Nn2ypycxtE8eKgoW1
 L41NbW6aZHZvtjCd5OZ1YuuIsrybZOWnlx2YD9JufWql.U0.H4v8oIuuL5ePMzn8ubBi49QDnv.k
 YWliC2QYR8SeTaHA1giR.cczaM4SDsn.6AG2OqP38l4y.ANQ3RhADP6n3fsDMIgVAqwC4lQFXuH4
 8mslR4RB8TxntYo8eTAVJj_yMmLP7hEkTBa.ovdicFbV00z4EfmVLkHPi971cPA59HIf1fTiu5EY
 hkoJhl2Ss1sDmzehldZhUO_zbjfWoO0J_ar5mrHAdQrZl8XBanSCqVUAUj13U88AjW3UthilWyZB
 gdhHlDgfsV6hdx51ZsdEgrNGnND41QNriAPwC2X4LADhjlssDD0ll2zrYI8xS0_uRi3rgaNXa_qx
 .qhLlOqvP5BlTMHWYE_A6aka2RWQ9Ge6dfqtZfecpiBoI684jYmkMa4s7SIJ6Xie.RCfp4s82uJa
 a7ah.2fuCxJnxTVL8g9.uCLWZjhj_l7sZzzc99TTa0_U5r5Iu_MIK7midAJA27doj1Mh3gECuy_u
 EUwWWBkn6PsZMHiFM9DtKhLHunaHNxtIJYqynw6_V8nJOMKaFJc6lUxXPbGZzolNX3R5My4wimNw
 3zCYTc1boqkUzSaUoKws_OgOHDPCd7p_T0pME_PS.gkwTdScv.ZvvUviqwp4ZXwW8Gv8HvdzK_3T
 RgctJIfLBUlvQd94oTCmBfbQjgtMK8iDI2fG0tGIqt54fchCYNZWvsjm2p1_zsqIoCzVCuIhQRxP
 IPUIc45AD_PHDPYsVAf2WbjRu2z4bM_yPsp3z28AcqdCSGZZg0bCPVWWyRdwnyymN9GJFlBarMeC
 bimltNJ2B5bQG36hI9AyJDXtfqoK89rSiGL_HdR.kfXEb88dpSQ3tA8rrw5mnWKH6l_UR8kZcYav
 N1lVsOwcwlkyi4sjcUs9P4AYeu.TBh1WZuj89heu5qvwpFQSOsjpoKN5u.y0QEpabN9EnLs_kiaL
 OUVmoS1GwABBJSEmGcKs0iRrnpw55fDV1OvEmMwWjEz6pkcOoxSaAtsUPwlpKW9KohCdEOZqTedT
 3mLuj4Wab9.aQVB8jP_uJLcIpaZbaGBDIKk9ZuTtW8zpp9lm8y5PcigeF3iSLLUJXXixKbJDhRw-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.ne1.yahoo.com with HTTP; Mon, 22 Jun 2020 15:58:35 +0000
Date: Mon, 22 Jun 2020 15:58:31 +0000 (UTC)
From: Karim Zakari <kariim1960z@gmail.com>
Message-ID: <823920628.1857692.1592841511779@mail.yahoo.com>
Subject: URGENT REPLY.
MIME-Version: 1.0
References: <823920628.1857692.1592841511779.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16138 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106
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
Reply-To: kzakari04@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpHb29kLURhecKgRnJpZW5kLAoKwqBIb3BlwqB5b3XCoGFyZcKgZG9pbmfCoGdyZWF0wqBUb2Rh
eS7CoEnCoGhhdmXCoGHCoHByb3Bvc2VkwqBidXNpbmVzc8KgZGVhbMKgd29ydGh5wqAoVVMkMTYu
NcKgTWlsbGlvbsKgRG9sbGFycynCoHRoYXTCoHdpbGzCoGJlbmVmaXTCoGJvdGjCoHBhcnRpZXMu
wqBUaGlzwqBpc8KgbGVnaXRpbWF0ZSfCoGxlZ2FswqBhbmTCoHlvdXLCoHBlcnNvbmFsaXR5wqB3
aWxswqBub3TCoGJlwqBjb21wcm9taXNlZC4KCldhaXRpbmfCoGZvcsKgeW91csKgcmVzcG9uc2XC
oGZvcsKgbW9yZcKgZGV0YWlscyzCoEFzwqB5b3XCoGFyZcKgd2lsbGluZ8KgdG/CoGV4ZWN1dGXC
oHRoaXPCoGJ1c2luZXNzwqBvcHBvcnR1bml0ecKgd2l0aMKgbWUuCgpTaW5jZXJlbHnCoFlvdXJz
LApNci7CoEthcmltwqBaYWthcmkuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
