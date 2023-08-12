Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C40779DA1
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Aug 2023 08:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7E8760A79;
	Sat, 12 Aug 2023 06:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7E8760A79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5FTt50_dr0JT; Sat, 12 Aug 2023 06:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9AC5607EC;
	Sat, 12 Aug 2023 06:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9AC5607EC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D76031BF291
 for <devel@linuxdriverproject.org>; Sat, 12 Aug 2023 06:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE05082109
 for <devel@linuxdriverproject.org>; Sat, 12 Aug 2023 06:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE05082109
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9B2WB-EB5LBG for <devel@linuxdriverproject.org>;
 Sat, 12 Aug 2023 06:16:36 +0000 (UTC)
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com
 [IPv6:2607:f8b0:4864:20::b41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DF76820FD
 for <devel@driverdev.osuosl.org>; Sat, 12 Aug 2023 06:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DF76820FD
Received: by mail-yb1-xb41.google.com with SMTP id
 3f1490d57ef6-d62b9bd5b03so2417187276.1
 for <devel@driverdev.osuosl.org>; Fri, 11 Aug 2023 23:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691820995; x=1692425795;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gWMNcM2ifm3+Dqi+mOO8zsq0oQygDekuQQDTcMJ+HJE=;
 b=ZNlnQ5SCHDPorPXdxLFwvi+QlsokYv0+8UYngatadbaHrp2otE3Q0W7meMwXK++rYg
 ILgQ2STcDcGBVz5j3ugeSUEyNqOc5X6OoywjBwB0ehqZygSuO56H6hg97nSGd7hszPJy
 sstKnSco5DJftFqxocY4bz1sEKyd9fm5EST7UX5XwVe/M0YeEOcDEAeBYB/acD75khpZ
 GjIHp0QAnUF+hSVquTcSoSsf221lq9fBY5CSJutE0PdFf1+H7SIFmgbRwLOOAes0fjOS
 iZkRgGDRLQ2co6qNB/nZEOWbtebOccxuHsKfaD8s71PonGKov1n9myuDucAJZan2gnR/
 cy9Q==
X-Gm-Message-State: AOJu0Yy9cIdSXeaJwzlc+QKwxpl9EKfMwPsBvKG7G8Arc0SqAI2Gstpl
 Chtswl4hiv9zhmM0hejf4LyVhuLL+R55Ji0bbT8=
X-Google-Smtp-Source: AGHT+IHJKjuNBq+rrKZc6yJuy3mZ8wVO7/cQro+iRT0XMuPV9FwPPvFx2AZz5Ls4Qpp5weXGPk5hY1Kj1tDjIIylDe4=
X-Received: by 2002:a25:c554:0:b0:d62:ecfb:dd3a with SMTP id
 v81-20020a25c554000000b00d62ecfbdd3amr3756855ybe.26.1691820995090; Fri, 11
 Aug 2023 23:16:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:9f82:b0:4f3:2ef5:b115 with HTTP; Fri, 11 Aug 2023
 23:16:34 -0700 (PDT)
From: Wang Wei <ramenmate100@gmail.com>
Date: Sat, 12 Aug 2023 07:16:34 +0100
Message-ID: <CAHFLvFAVetWTyAqvREWomJYxsvL+StdrVbUW59RgvR3OR9YZ2w@mail.gmail.com>
Subject: =?UTF-8?B?RFJJTkdFTkRFIEFOVFdPUlQgQkVOw5ZUSUdUISEh?=
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691820995; x=1692425795;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gWMNcM2ifm3+Dqi+mOO8zsq0oQygDekuQQDTcMJ+HJE=;
 b=CRp/iN9xShObNNgGxUexMYCnd+LrXpgomx0aOu1f5Pn6BBfAJ/MrqvVD8NPVKRzMJ9
 YOY5Yfy7hAV+1Eg6VY4XWJH2IdatEbWPKoKOT3lAWApfHCLw5wW84dmOiKl5622KRewP
 2QyFrhjZ57yv+3m6Y3DrX67Er6zw8qXjeKkBuGsiC0G8oexu5T1Ge65EqjlOS99cwZsP
 +KYY4bQ+Tt/LfwZIJGdUxgYME87OJ7Q7COB/RVgzWDnlUW29ZFLTtx/h8exRhmkQQDLQ
 g5qEZZlnu4zN0i2mE/1aEN4wwWUA9BadFHTs/t4ikIRaVWJOyt1dMw2WtpGATNp1f1MU
 En4Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=CRp/iN9x
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
Reply-To: wanggwei100@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCk1laW4gTmFtZSBpc3QgSGVyciBXYW5nIFdlaSwgZWluIE1pdGFyYmVpdGVyIGRlciBXaW5n
IEhhbmcgQmFuayBoaWVyCmluIENoaW5hLCBIb25na29uZy4gS2FubiBpY2ggSWhuZW4gZWluZSDD
nGJlcndlaXN1bmcgdm9uIDEwLjUwMC4wMDAsMDAKJCBhbnZlcnRyYXVlbj8gV2VubiBqYSwga29u
dGFrdGllcmVuIFNpZSBtaWNoIHBlciBFLU1haWw6Cndhbmdnd2VpMTAwQGdtYWlsLmNvbQoKCkdS
w5xTU0UKV0FORyBXRUkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
