Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F4B53F8A6
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jun 2022 10:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38EDA60E11;
	Tue,  7 Jun 2022 08:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTmxIcWdyVW3; Tue,  7 Jun 2022 08:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD8C060BED;
	Tue,  7 Jun 2022 08:52:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABAC41BF990
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 08:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A819D404FF
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 08:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MhA_qdfwaIny for <devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 08:52:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3F504036A
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 08:52:01 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id er5so22019630edb.12
 for <devel@linuxdriverproject.org>; Tue, 07 Jun 2022 01:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=dk8zUgPEAH8sJMme+gRlsmI7BdAAwGXVFJaTHtWa1SI=;
 b=aVMUBmifunyJ3eJNn8udTNXTxhPIhrou9b0TIfgatuUDJ6RDsPttVrVuDJPRaRzT7P
 ODqjfB5P82EzqkW8UKYG/fR7A0X8dMI1rQVBy33scEDea79OR2FpescSFFEu6yUGXtlj
 7+yh2DOBNSAe7gUQHNBEU+7SRhc4B3xzjf3Xtgjp+R5IjxOUGj2cUONwmjl7Y3+KIqg3
 17U6vWa9VUpsZUTYSDoNKxkW2r4mQemTeOJnmsJKnB0zMttbn+QRzzWPHACghpL5+cqg
 PRHLpenskprDtpAdtm/olIFdTz7YlESeQ4fW55BB+hQ3flLZUcHSRknwE2dlBBLrZFzN
 PXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=dk8zUgPEAH8sJMme+gRlsmI7BdAAwGXVFJaTHtWa1SI=;
 b=5xqOfUKgf1YYKU843SwU4LGgE+msM71Cpav3fIVx1Mj71WdGeegF4Oe1+qScTb/nfh
 BsuDLhgaPUljIrHtF9/E18JqZWa1hd2fbsyDIT6tkURnOUsl0zlkemOOSShd9hpW4Nrt
 lYqwThh+t02CsUuNwPj4pQnh8Jnsu+w8bdvC0orXHSPUqQVFzxlbBj5rPBXv5kBa/LVq
 fsKBllcMbISVLS6/dvhpOvDlflRBojFqrnylCUhT9ps6Qc0oDdB2UuFytXQFhxIdNWjS
 pm1tMpBWiz/P5ztrgFqDAEwbBNnJPrwNh/8JDHXm7gJtkHjTZWdxzsAVGJVC0AfXIm9w
 4wPQ==
X-Gm-Message-State: AOAM531fdiP/tUrPYNmzQty1hdr3HXQnyVaGFMD/3pZuJPFvtZGkRPB0
 kxT4WDh2Ysk1MIQlxN+ZRypz5K9rL8l0aqkYdR8=
X-Google-Smtp-Source: ABdhPJwTszYuDknR/5P1tRox9JUMJZ7yacw+XAYXa3RbZiHwiEUF5IZu1f+VafRIYWKlxVn7sLtB7xtLwqTdBwhjIqk=
X-Received: by 2002:a05:6402:cab:b0:42d:c842:8369 with SMTP id
 cn11-20020a0564020cab00b0042dc8428369mr31787520edb.181.1654591919359; Tue, 07
 Jun 2022 01:51:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:21cc:0:0:0:0:0 with HTTP;
 Tue, 7 Jun 2022 01:51:58 -0700 (PDT)
From: Robert Baileys <yusifmaigari222@gmail.com>
Date: Tue, 7 Jun 2022 10:51:58 +0200
Message-ID: <CA+gykmASsyPcrB7E0o2TOLrzpHJJgKi5T9Qo3tWjHKVu=iwkWg@mail.gmail.com>
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
