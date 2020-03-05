Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB717A40D
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 12:19:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C8AC87D33;
	Thu,  5 Mar 2020 11:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69QFQwNpfhrd; Thu,  5 Mar 2020 11:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9A4087CB8;
	Thu,  5 Mar 2020 11:19:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2D541BF3FB
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 11:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD57387CD4
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 11:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVSa75jWmDsn for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 11:19:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mailgw.pagasa.dost.gov.ph (ulan.pagasa.dost.gov.ph
 [202.90.128.205])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 235BB87CB8
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 11:19:41 +0000 (UTC)
Received: from webmail.pagasa.dost.int ([10.10.11.8])
 by mailgw.pagasa.dost.gov.ph  with ESMTP id 025BEdfJ007534-025BEdfL007534
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Mar 2020 19:14:40 +0800
Received: from localhost (localhost [127.0.0.1])
 by webmail.pagasa.dost.int (Postfix) with ESMTP id 11E1729819E7;
 Thu,  5 Mar 2020 18:38:23 +0800 (PST)
Received: from webmail.pagasa.dost.int ([127.0.0.1])
 by localhost (webmail.pagasa.dost.int [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id YnuvZAb2OsP2; Thu,  5 Mar 2020 18:38:22 +0800 (PST)
Received: from localhost (localhost [127.0.0.1])
 by webmail.pagasa.dost.int (Postfix) with ESMTP id 37CAE29819BE;
 Thu,  5 Mar 2020 18:38:22 +0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 webmail.pagasa.dost.int 37CAE29819BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pagasa.dost.gov.ph;
 s=96B9A03E-48B0-11EA-A7E8-92F42F537CE2; t=1583404702;
 bh=RC75T5p3JPNk7JUNB+lH0UfaFQO1Ac584gPL3SIL6h8=;
 h=Date:From:Message-ID:MIME-Version;
 b=0BVs3l/Kud10YxpqK7yH3Syq6fpV0aKkymd15qZWltzCm8VK59QSMedqhGEojQVX6
 DQqg0IQJRHkbUBrK/wm8dlJwzc9gu78s1z+8RF/6JwTrjLS1FunEtGSxM/u+J/uJ1I
 XDhgUt5ihjT2J2yrGoO2zfOyGqLBTQfv5XeyY3Ec=
X-Virus-Scanned: amavisd-new at pagasa.dost.int
Received: from webmail.pagasa.dost.int ([127.0.0.1])
 by localhost (webmail.pagasa.dost.int [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hk4fH2NMMTWO; Thu,  5 Mar 2020 18:38:22 +0800 (PST)
Received: from webmail.pagasa.dost.int (webmail.pagasa.dost.int [10.11.1.8])
 by webmail.pagasa.dost.int (Postfix) with ESMTP id E403929819B5;
 Thu,  5 Mar 2020 18:38:20 +0800 (PST)
Date: Thu, 5 Mar 2020 18:38:20 +0800 (PST)
From: "Juanito S. Galang" <juanito.galang@pagasa.dost.gov.ph>
Message-ID: <650617410.3574544.1583404700901.JavaMail.zimbra@pagasa.dost.gov.ph>
Subject: 
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.15_GA_3899 (ZimbraWebClient - GC79 (Win)/8.8.15_GA_3895)
Thread-Index: Sc2Ktac5+BtarmK7oT/CvuN4AcbGAw==
Thread-Topic: 
X-FEAS-DKIM: Valid
Authentication-Results: mailgw.pagasa.dost.gov.ph;
 dkim=pass header.i=@pagasa.dost.gov.ph
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

CgpIZXJ6bGljaGVuIEdsw7xja3d1bnNjaCBMaWViZXIgQmVnw7xuc3RpZ3RlcixTaWUgZXJoYWx0
ZW4gZGllc2UgRS1NYWlsIHZvbiBkZXIgUm9iZXJ0IEJhaWxleSBGb3VuZGF0aW9uLiBJY2ggYmlu
IGVpbiBwZW5zaW9uaWVydGVyIFJlZ2llcnVuZ3Nhbmdlc3RlbGx0ZXIgYXVzIEhhcmxlbSB1bmQg
ZWluIEdld2lubmVyIGRlcyBQb3dlcmJhbGwgTG90dGVyeSBKYWNrcG90IGltIFdlcnQgdm9uIDM0
Myw4IE1pbGxpb25lbiBVUy1Eb2xsYXIuIEljaCBiaW4gZGVyIGdyw7bDn3RlIEphY2twb3QtR2V3
aW5uZXIgaW4gZGVyIEdlc2NoaWNodGUgZGVyIE5ldyBZb3JrZXIgTG90dGVyaWUgaW0gVVMtQnVu
ZGVzc3RhYXQgQW1lcmlrYS4gSWNoIGhhYmUgZGllc2UgTG90dGVyaWUgYW0gMjcuIE9rdG9iZXIg
MjAxOCBnZXdvbm5lbiB1bmQgbcO2Y2h0ZSBTaWUgZGFyw7xiZXIgaW5mb3JtaWVyZW4sIGRhc3Mg
R29vZ2xlIGluIFp1c2FtbWVuYXJiZWl0IG1pdCBNaWNyb3NvZnQgSWhyZSAiRS1NYWlsLUFkcmVz
c2UiIGF1ZiBtZWluZSBCaXR0ZSwgZWluZW4gU3BlbmRlbmJldHJhZyB2b24gMy4wMDAuMDAwLDAw
IE1pbGxpb25lbiBFdXJvIHp1IGVyaGFsdGVuLCDDvGJlcm1pdHRlbHQgaGF0LiBJY2ggc3BlbmRl
IGRpZXNlIDMgTWlsbGlvbmVuIEV1cm8gYW4gU2llLCB1bSBkZW4gV29obHTDpHRpZ2tlaXRzaGVp
bWVuIHVuZCBhcm1lbiBNZW5zY2hlbiBpbiBJaHJlciBHZW1laW5kZSB6dSBoZWxmZW4sIGRhbWl0
IHdpciBkaWUgV2VsdCBmw7xyIGFsbGUgdmVyYmVzc2VybiBrw7ZubmVuLldlaXRlcmUgSW5mb3Jt
YXRpb25lbiBmaW5kZW4gU2llIGF1ZiBkZXIgZm9sZ2VuZGVuIFdlYnNpdGUsIGRhbWl0IFNpZSBu
aWNodCBza2VwdGlzY2ggc2luZApEaWVzZSBTcGVuZGUgdm9uIDMgTWlvLiBFVVIuaHR0cHM6Ly9u
eXBvc3QuY29tLzIwMTgvMTEvMTQvbWVldC10aGUtd2lubmVyLW9mLXRoZS1iaWdnZXN0LWxvdHRl
cnktamFja3BvdC1pbi1uZXcteW9yay1oaXN0b3J5L1NpZSBrw7ZubmVuIGF1Y2ggbWVpbiBZb3VU
dWJlIGbDvHIgbWVociBCZXN0w6R0aWd1bmcgYXVmcGFzc2VuOgpodHRwczovL3d3dy55b3V0dWJl
LmNvbS93YXRjaD92PUg1dlQxOFlzYXZjCkJpdHRlIGJlYWNodGVuIFNpZSwgZGFzcyBhbGxlIEFu
dHdvcnRlbiBhbiAocm9iZXJ0ZG9uYXRpb243QGdtYWlsLmNvbcKgICkgZ2VzZW5kZXQgd2VyZGVu
LCBkYW1pdCB3aXIgZGFzIGvDtm5uZW4KRmFocmVuIFNpZSBmb3J0LCB1bSBkYXMgZ2VzcGVuZGV0
ZSBHZWxkIGFuIFNpZSB6dSDDvGJlcndlaXNlbi5FLU1haWw6IHJvYmVydGRvbmF0aW9uN0BnbWFp
bC5jb21GcmV1bmRsaWNoZSBHcsO8w59lLApSb2JlcnQgQmFpbGV5CiogKiAqICogKiAqICogKiAq
ICogKiAqICogKiAqICoKUG93ZXJiYWxsIEphY2twb3QgR2V3aW5uZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
