Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F939537E09
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 May 2022 15:48:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCB7384103;
	Mon, 30 May 2022 13:48:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tAK8f6FPZz94; Mon, 30 May 2022 13:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49D6383F78;
	Mon, 30 May 2022 13:48:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 425741BF357
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 13:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FA84405C7
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 13:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ie--It64f-wv for <devel@linuxdriverproject.org>;
 Mon, 30 May 2022 13:48:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE42C40191
 for <devel@driverdev.osuosl.org>; Mon, 30 May 2022 13:48:16 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id p10so14697860wrg.12
 for <devel@driverdev.osuosl.org>; Mon, 30 May 2022 06:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=xEec2ZWyguMaBkRaSSrOxFnbt0f7oLMTf7eSoq5X1H0=;
 b=R5q/5gGwwdlDkcdfUJ2O/kmuNli9+zO/lu3LQJ4egb4wXIUEVXOBkIU9e9ujkcgQ1d
 8YdTvZlbVDLwPxcZPEbXVD63LO4R57L8vWcul8uRex5sumeYHWFCRzcCCsn8QOttu7Qa
 yLGOYNE/F3NounBWm85Sz/Cp4YYw/oKfJBVI5WuUGrDGMHo2rE/rb5Zymft7JWOGm2eG
 LVP2AL14xAfwKJqOmp9agUqGAR5zsm5K671ahmVSf6bBWixcWzYc918Rpj8SsSpgAoXL
 /ayCF72qUWQk60H9RtxPBJ/PFUHCWAEEmwD6XNdhOQu+cvMDByPMsy1jq9892D4+NbKl
 XdKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=xEec2ZWyguMaBkRaSSrOxFnbt0f7oLMTf7eSoq5X1H0=;
 b=nqvJMHH+3GkoaW29sZGT0ZnRBS9RtA4Ji2mbfmRRPRAHSLpH40Wc/gCFxSTOngrM27
 28zb3Ob+zxX98S9S4ERc46p1qd1S/1SEnD5B8mbfHwqsr8PJqiJ40paidS11gSfR3TAF
 CtOlwIoQKbiWGv0JcNV+APQMSBLZN8znh9W+ky0vTOxbndSBpHebWyBUhjpV8jRgXMO2
 PJfwNiyVOkCbNT60zwXgpSEIT/HMC4UlDP6+vfPdLNmkJvOTU6dtkDURyvjLT6bzGmuz
 dWi5tP/O3JqppcWAiKbG4hohZ2kHkQdQGd08LRHHHNCMj4xiOHsaYqo+oPIrdnum64jB
 sgIg==
X-Gm-Message-State: AOAM531hJaRE30PmJckE+DuBiZbYivr/U2sjxkmintCOHIRChMrGaukU
 Pls/FYGw2AntzsK/4MKhfGAEDUi7Fa4=
X-Google-Smtp-Source: ABdhPJxLTG2Q+e1kId8FLb1f3pJ+yQHkFvmxjt/wRk9/EtJSDWxSbskWCNOUKrDNlKkL/hsLHutabA==
X-Received: by 2002:adf:ee8e:0:b0:210:824:5634 with SMTP id
 b14-20020adfee8e000000b0021008245634mr18413133wro.695.1653918495061; 
 Mon, 30 May 2022 06:48:15 -0700 (PDT)
Received: from [10.18.18.18] ([191.101.217.27])
 by smtp.gmail.com with ESMTPSA id
 j13-20020a05600c1c0d00b00397243d3dbcsm11279849wms.31.2022.05.30.06.48.10
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 30 May 2022 06:48:14 -0700 (PDT)
Message-ID: <6294cb1e.1c69fb81.babf1.44cc@mx.google.com>
From: re <bgudenkaufssandee@gmail.com>
X-Google-Original-From: "re"<@outlook.com>
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re;
To: Recipients <>
Date: Mon, 30 May 2022 21:44:30 +0800
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
Reply-To: susanne.klatten212@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkhlbGxvCgpJJ20gU3VzYW5uZSBLbGF0dGVuIGFuZCBJIGFtICBGcm9tIEdlcm1hbnksIEkgY2Fu
IGNvbnRyb2wgeW91ciBmaW5hbmNpYWwgcHJvYmxlbXMgd2l0aG91dCByZXNvcnRpbmcgQmFua3Mg
aW4gdGhlIHJhbmdlIG9mIENyZWRpdCBNb25leSAuIFdlIG9mZmVyIHBlcnNvbmFsIExvYW5zIGFu
ZCBCdXNpbmVzcyBMb2FuLCBpIGFtIGFuIGFwcHJvdmVkIGFuZCBjZXJ0aWZpZWQgbGVuZGVyIHdp
dGggeWVhcnMgb2YgZXhwZXJpZW5jZSBpbiBMb2FuIGxlbmRpbmcgYW5kIHdlIGdpdmUgb3V0IENv
bGxhdGVyYWwgYW5kIE5vbiBDb2xsYXRlcmFsIExvYW4gYW1vdW50cyByYW5naW5nIGZyb20gMTAs
MDAwLjAw4oKsICggJCkgIHRvIHRoZSBtYXhpbXVtIG9mIDUwMCwwMDAsMDAwLjAw4oKsICB3aXRo
IGEgZml4ZWQgaW50ZXJlc3Qgb2YgMyUgb24gYW4gIGFubnVhbCBiYXNpcy4gRG8geW91IG5lZWQg
YSBMb2FuPyAgIEVtYWlsIHVzIGF0OiAgc3VzYW5uZS5rbGF0dGVuMjEyQGdtYWlsLmNvbQoKWW91
IGNhbiBhbHNvIHZpZXcgbXkgbGluayBhbmQgbGVhcm4gbW9yZSBhYm91dCBtZS4KCmh0dHBzOi8v
ZW4ud2lraXBlZGlhLm9yZy93aWtpL1N1c2FubmVfS2xhdHRlbgpodHRwczovL3d3dy5mb3JiZXMu
Y29tL3Byb2ZpbGUvc3VzYW5uZS1rbGF0dGVuCgpFbWFpbCA6ICBzdXNhbm5lLmtsYXR0ZW4yMTJA
Z21haWwuY29tClNpZ25hdHVyZSwKRXhlY3V0aXZlIENoYWlybWFuClN1c2FubmUgS2xhdHRlbi4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
