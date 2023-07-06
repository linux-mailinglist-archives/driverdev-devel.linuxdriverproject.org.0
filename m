Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D3C7498CE
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jul 2023 11:56:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B063D415FB;
	Thu,  6 Jul 2023 09:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B063D415FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TaNSP6nLWrFN; Thu,  6 Jul 2023 09:56:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FFC5415E0;
	Thu,  6 Jul 2023 09:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FFC5415E0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D11D11BF3EB
 for <devel@linuxdriverproject.org>; Thu,  6 Jul 2023 09:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B59FD415FB
 for <devel@linuxdriverproject.org>; Thu,  6 Jul 2023 09:56:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B59FD415FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WE68iFPnhjBo for <devel@linuxdriverproject.org>;
 Thu,  6 Jul 2023 09:56:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A18C3415E0
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A18C3415E0
 for <devel@driverdev.osuosl.org>; Thu,  6 Jul 2023 09:56:36 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id
 6a1803df08f44-635dbfa710dso4550256d6.0
 for <devel@driverdev.osuosl.org>; Thu, 06 Jul 2023 02:56:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688637395; x=1691229395;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9AzgtpWCF3+Hz3ZhsbJDMqK4tmJOwAYQ6e+X53j2ZZ4=;
 b=TK5/KlwWKuX6Qa6N8r6FzS7zQDdZwQMQTZJLXUHMyEsPztBC3GpEI3J8HbzsuTjNWH
 XlLxqUF1K9D2UaQjL2t9hNPmn82o/8m08SoYybT3tG+D+2zhEGP5qcQqrxOgLDC0b2ge
 V8AJyDreA54I2w87eAjrz+pij4A2Elmq5U+BMMN4y2ySC6dvspV4bGDcdXetat2/hN1i
 oYM9s5nL5vK1dG5V3JNayjMVJG7r9w0p4X3Vgg+HlZC5yW38xP5d0fp8OYhClTbTwZmw
 Kvs1A32DRAYIKOCt+Z6yKwPYaOIdOUSub5d72UwqDeJGFeD0FOH+vvTlGyaOIBOgWsH7
 jufQ==
X-Gm-Message-State: ABy/qLaLGN79xubblPheR6YVJYfjiHmUbZJABBgdhaOivYKOo2Kf/VMf
 LLSP9Rw3tQs1vLGCfokGnXmPyVS/sDfdA6PSvT4=
X-Google-Smtp-Source: APBJJlEUw5Yil4ApBMQr2kcvrNA/T9dN9OEq+SUwsL7MRtu4N+H7vr25EFlbzhxnvZWtRrY5jwHgw6XptFJd6A4oVco=
X-Received: by 2002:a0c:ca06:0:b0:630:1bc8:9c7 with SMTP id
 c6-20020a0cca06000000b006301bc809c7mr1088092qvk.2.1688637395360; Thu, 06 Jul
 2023 02:56:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6200:492:b0:50b:7b5f:6dbc with HTTP; Thu, 6 Jul 2023
 02:56:34 -0700 (PDT)
From: Israel Ojie <israelojie3@gmail.com>
Date: Thu, 6 Jul 2023 02:56:34 -0700
Message-ID: <CAM8Cj3=+Dn-OytZh8kVk3SGWPSFNdPAKMev12i5po=jfBGv5-Q@mail.gmail.com>
Subject: Aw: Spende
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688637395; x=1691229395;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9AzgtpWCF3+Hz3ZhsbJDMqK4tmJOwAYQ6e+X53j2ZZ4=;
 b=UPwKGVSuX2YEC4nVWX8VxuSWW+vsgXlkZIO/eNGWl1goxkKTywZAGcLvtOd1RJKWiR
 o/1m79W5I72HqwI89CCY5iU2NHRbeb7pyjb2MIDXa8yvSvI9DrgWb9t1YaHrnwN79HyY
 WBF8beAIjcv5qIFtdheyNYPt+6UKRuhGYvgbvKDS3LE19Vie43iRPtfyFq4IakLjZRqU
 lc/kdtS1VdzeKBPy0SiJ9JS66q9Hh6N+7GzOU3QIjXSGjkzpoPdAaHQfJRTXcf09gPJf
 IPuYoZsVgLd/qzhJuV5+rm5i6Eva9nYUMSMnerJi4N57aytBjtgmB0O9IaJiiSfW7UGV
 pnkg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=UPwKGVSu
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

LS0gCkhhbGxvLAoKSWNoIGJpbiBNYXJpYSBFbGlzYWJldGgsIGVpbmUgZGV1dHNjaGUgR2VzY2jD
pGZ0c2ZyYXUsIEludmVzdG9yaW4sIHVuZApuYWNoZGVtIGljaCBtZWluZW4gTWFubiBpbSBLcmFu
a2VuaGF1c2JldHQgdmVybG9yZW4gaGF0dGUsIHNhZ3RlIGVyCm1pciwgaWNoIHNvbGxlIGVpbmVy
IGd1dGVuIFBlcnNvbiB3aWUgSWhuZW4gMS4wMDAuMDAwIEV1cm8gc3BlbmRlbi4KSWNoIGhhYmUg
MzUgUHJvemVudCBtZWluZXMgcGVyc8O2bmxpY2hlbiBWZXJtw7ZnZW5zIGbDvHIgd29obHTDpHRp
Z2UKWndlY2tlIGdlc3BlbmRldC4gVW5kIGljaCBoYWJlIGF1Y2ggenVnZXNhZ3QsIGRpZSByZXN0
bGljaGVuIDM1JSBpbgpkaWVzZW0gSmFociAyMDIzIGFuIEVpbnplbHBlcnNvbmVuIHp1IHZlcnNj
aGVua2VuLiBJY2ggaGFiZSBtaWNoCmVudHNjaGllZGVuLCAxLjAwMC4wMDAsMDAgRXVybyBhbiBT
aWUgenUgc3BlbmRlbi4gV2VubiBTaWUgYW4gbWVpbmVyClNwZW5kZSBpbnRlcmVzc2llcnQgc2lu
ZCwga29udGFrdGllcmVuIFNpZSBtaWNoIGJpdHRlIGbDvHIgd2VpdGVyZQpJbmZvcm1hdGlvbmVu
LgoKTGVzZW4gU2llIGRlbiBMaW5rLCBkZW4gU2llIGhpZXIgc2VoZW4ga8O2bm5lbjoKaHR0cHM6
Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTWFyaWEtRWxpc2FiZXRoX1NjaGFlZmZsZXIKCj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpNaXQgZnJldW5kbGljaGVuIEdy
w7zDn2VuLApGcmF1IE1hcmlhIEVsaXNhYmV0aCBTY2hhZWZmbGVyLApWb3JzaXR6ZW5kZQpTdXBl
cm1hcmt0a2V0dGUuCkUtTWFpbDogbWFyaWFlbGlzYWJldGhzY2hhZWZmbGVyNDdAZ21haWwuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
