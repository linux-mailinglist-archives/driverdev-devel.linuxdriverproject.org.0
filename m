Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 112CF53F8A7
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jun 2022 10:52:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C18C613DF;
	Tue,  7 Jun 2022 08:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e6ZFqNkQ9c6a; Tue,  7 Jun 2022 08:52:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 082ED60E11;
	Tue,  7 Jun 2022 08:52:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A702A1BF990
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 08:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 930AE8424D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 08:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llKphbfjjS3N
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 08:52:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F66E8424A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 08:52:16 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id w27so22003167edl.7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 07 Jun 2022 01:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=dk8zUgPEAH8sJMme+gRlsmI7BdAAwGXVFJaTHtWa1SI=;
 b=LtqYZEm4XHuBexbAKpTFh17RdfW+Jef52Y8LTcBVTMZtNreHK/cnD21prQVtFUyc1l
 EHXrL8cJjwk8kyuR1u1tLWYY7B64qYVsdYGUV+/2ojxzdl7NOr3C36XMiGbRxKrSF1fg
 9FiGuyJa7DDsXQaUDiv1p1GPMiT9MoAFQgy109yv7zqJfgotKLt/KI5dzCwxPEkJxUWZ
 PGuL3TsjdhDeTHPMUNnUrtWxirrYsj0X/JlmyfDhm3oodw+Wny/F9CCBczMIjV5BST1b
 lUa/KmoA3LtFQi37WAxiUJT8ILIBRBgEm3SMSLWXuZok1nOcZQG1M/1jJm05JJrb007R
 RwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=dk8zUgPEAH8sJMme+gRlsmI7BdAAwGXVFJaTHtWa1SI=;
 b=y66SyyxL+6IcvYoB1/j3oz64CI9yAjJ1da5Ec9gkrKry3wArxbpxkJgkGZ/LYFO2Xm
 tTVXm5EzzoL4qNYbwPW2+35WeWeCOhgoiBiKTZnelGG39BSxFAcjfOWe/YWk65MjWDiw
 FQV/N+4xr2S5zRtq76gYzo3NxJiMg2O//cn1+LPK9LsOSWLpx2sLT/1xkY57Vz1xm7oV
 BYzWNAH68XujtSFExcTeW4j/V9wWKmBECSMzerbZn2/XucSRaAt8URZ7jPiOW8/HJFsZ
 FO9vvm5ZYw1xTy3BSEaP9eNJBzKZbKeLCVml5/DeEA86oxLk6qY1hOvytNkBlq6Mew3o
 /bbQ==
X-Gm-Message-State: AOAM530RVKhjYV+/u/cg/yMnDftWMYWZyzjp74MthcY55ziqsWVpzcEp
 avjT9vHLNMwC12O1GAVePzX/CshndfrzN9oHjW4=
X-Google-Smtp-Source: ABdhPJwolgBD53tp2STXLQP8QVeMTZDtprg6ysZgxNZNCoufFtKe7Pz/7HIHIVnmfjHeZ5q0y4IT1ZYVz5Xfpm/OVyM=
X-Received: by 2002:a05:6402:35d1:b0:430:d38d:9c6a with SMTP id
 z17-20020a05640235d100b00430d38d9c6amr18078969edc.400.1654591934473; Tue, 07
 Jun 2022 01:52:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:21cc:0:0:0:0:0 with HTTP;
 Tue, 7 Jun 2022 01:52:13 -0700 (PDT)
From: Robert Baileys <yusifmaigari222@gmail.com>
Date: Tue, 7 Jun 2022 10:52:13 +0200
Message-ID: <CA+gykmDOxQuU3NLKnvSLQ5pbxf0joE8OnntPpBaU1ZMViX1Zkg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
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
Reply-To: robertbaileys_spende@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLCBsaWViZXIgQmVnw7xuc3RpZ3RlciwKClNpZSBoYWJlbiBkaWVzZSBFLU1haWwg
dm9uIGRlciBSb2JlcnQgQmFpbGV5IEZvdW5kYXRpb24gZXJoYWx0ZW4uIEljaApiaW4gZWluIHBl
bnNpb25pZXJ0ZXIgUmVnaWVydW5nc2FuZ2VzdGVsbHRlciBhdXMgSGFybGVtIHVuZCBlaW4KUG93
ZXJiYWxsLUxvdHRlcmllLUphY2twb3QtR2V3aW5uZXIgdm9uIDM0Myw4IE1pbGxpb25lbiBEb2xs
YXIuIEljaApiaW4gZGVyIGdyw7bDn3RlIEphY2twb3QtR2V3aW5uZXIgaW4gZGVyIEdlc2NoaWNo
dGUgZGVyIE5ldyBZb3JrIExvdHRlcnkKaW4gQW1lcmlrYS4gSWNoIGhhYmUgZGllc2VuIFdldHRi
ZXdlcmIgYW0gMjcuIE9rdG9iZXIgMjAxOCBnZXdvbm5lbgp1bmQgbcO2Y2h0ZSBJaG5lbiBtaXR0
ZWlsZW4sIGRhc3MgR29vZ2xlIGluIEtvb3BlcmF0aW9uIG1pdCBNaWNyb3NvZnQKSWhyZSAiRS1N
YWlsLUFkcmVzc2UiIGbDvHIgbWVpbmUgQW5mcmFnZSBoYXQgdW5kIGRpZXNlIDMuMDAwLjAwMCww
MApNaWxsaW9uZW4gRXVybyBrb3N0ZW4gd2lyZC4gSWNoIHNwZW5kZSBkaWVzZSAzIE1pbGxpb25l
biBFdXJvIGFuIFNpZSwKdW0gYXVjaCBXb2hsdMOkdGlna2VpdHNvcmdhbmlzYXRpb25lbiB1bmQg
YXJtZW4gTWVuc2NoZW4gaW4gSWhyZXIKR2VtZWluZGUgenUgaGVsZmVuLCBkYW1pdCB3aXIgZGll
IFdlbHQgenUgZWluZW0gYmVzc2VyZW4gT3J0IGbDvHIgYWxsZQptYWNoZW4ga8O2bm5lbi4gQml0
dGUgYmVzdWNoZW4gU2llIGRpZSBmb2xnZW5kZSBXZWJzaXRlIGbDvHIgd2VpdGVyZQpJbmZvcm1h
dGlvbmVuLCBkYW1pdCBTaWUgZGllc2VuIDMgTWlvLiBFVVIgQXVzZ2FiZW4gbmljaHQgc2tlcHRp
c2NoCmdlZ2Vuw7xiZXJzdGVoZW4uCmh0dHBzOi8vbnlwb3N0LmNvbS8yMDE4LzExLzE0L21lZXQt
dGhlLXdpbm5lci1vZi10aGUtYmlnZ2VzdC1sb3R0ZXJ5LWphY2twb3QtaW4tbmV3LXlvcmstaGlz
dG9yeS9TaWUKV2VpdGVyZSBCZXN0w6R0aWd1bmdlbiBrYW5uIGljaCBhdWNoIGF1ZiBtZWluZW0g
WW91dHViZSBzdWNoZW46Cmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9SDV2VDE4WXNh
dmMKQml0dGUgYW50d29ydGVuIFNpZSBtaXIgcGVyIEUtTWFpbCAocm9iZXJ0YmFpbGV5c19zcGVu
ZGVAYW9sLmNvbSkuClNpZSBtw7xzc2VuIGRpZXNlIEUtTWFpbCBzb2ZvcnQgYmVhbnR3b3J0ZW4s
IGRhbWl0IGRpZSDDvGJlcndlaXNlbmRlCkJhbmsgbWl0IGRlbSBFcmhhbHQgZGllc2VyIFNwZW5k
ZSBpbiBIw7ZoZSB2b24gMy4wMDAuMDAwLDAwIE1pbGxpb25lbgpFdXJvIGJlZ2lubmVuIGthbm4u
CkJpdHRlIGtvbnRha3RpZXJlbiBTaWUgZGllIHVudGVuc3RlaGVuZGUgRS1NYWlsLUFkcmVzc2Ug
ZsO8ciB3ZWl0ZXJlCkluZm9ybWF0aW9uZW4sIGRhbWl0IFNpZSBkaWVzZSBTcGVuZGUgdm9uIGRl
ciDDvGJlcndlaXNlbmRlbiBCYW5rCmVyaGFsdGVuIGvDtm5uZW4uCgpFLU1haWw6IHJvYmVydGJh
aWxleXNfc3BlbmRlQGFvbC5jb20KCkdyw7zDn2UsClJvYmVydCBCYWlsZXkKKiAqICogKiAqICog
KiAqICogKiAqICogKiAqICogKgpQb3dlcmJhbGwtSmFja3BvdC1HZXdpbm5lcgpFLU1haWw6IHJv
YmVydGJhaWxleXNfc3BlbmRlQGFvbC5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
