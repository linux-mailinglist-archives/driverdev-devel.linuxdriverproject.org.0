Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7767920F6
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Sep 2023 10:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0CFB60804;
	Tue,  5 Sep 2023 08:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0CFB60804
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhwpl1N3vX1U; Tue,  5 Sep 2023 08:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACA55606D3;
	Tue,  5 Sep 2023 08:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACA55606D3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B86F1BF2F0
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 08:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E57C640386
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 08:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E57C640386
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_H2C-bWcjen for <devel@linuxdriverproject.org>;
 Tue,  5 Sep 2023 08:20:54 +0000 (UTC)
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0C264035C
 for <devel@driverdev.osuosl.org>; Tue,  5 Sep 2023 08:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0C264035C
Received: by mail-lf1-x144.google.com with SMTP id
 2adb3069b0e04-501bef6e0d3so520341e87.1
 for <devel@driverdev.osuosl.org>; Tue, 05 Sep 2023 01:20:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693902051; x=1694506851;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CvUmRYKO5rN5JiKdYLn9/Xxm/soJiVGtQm650JnL3Yc=;
 b=HkYbXMg+xlPG6RYFYeUKWa1qL69kOs3Y4YAAmP3UFb8reXfGSzKHv5go9WaxjxEG7I
 Zjmvq53JUZLY8gpgTt9hQAjcVTsyfKK1BammaSiv1tqYY8UKjnEaIoO8XTZQws2RBW0S
 9ZebxazdhoZuk9UmhqZBx4T8i2pwhur1DdIYeSZ0KPwJfiPLMf8eP2/ZCn9BNiciiHgU
 QPQlWnVhMbwchnRf1zGtG1DHSuR0WCoJs1CK7Smw9hz6rLQyGJ4qvRV1ezXh9dd0a+YE
 G4NgPczZw+CjRUvWfkM2Ncdw51cf2jdOwxsFvHROwFlsLw2EKpqMeIF0FISu9xb3uoHH
 jrog==
X-Gm-Message-State: AOJu0Yyi6QrTgS1oNWN6nQMAppHlwFODYMJY2fjac0EeV+qAd+4sIf9S
 Hx7iEn/SKy7iFS/1j/8v2x5+MWk4l3pMKT5JRcY=
X-Google-Smtp-Source: AGHT+IHc9ajH3Rii9UZwOOqLrsXanmcTWvKjiURPKmJK5D52sTkbD7l1BRzq/bCfrfUZjlWt/04s1jIBCk3z7CpHIFE=
X-Received: by 2002:a19:6755:0:b0:501:bf37:1fc0 with SMTP id
 e21-20020a196755000000b00501bf371fc0mr624754lfj.33.1693902050884; Tue, 05 Sep
 2023 01:20:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3ac4:0:b0:22f:40f:e031 with HTTP; Tue, 5 Sep 2023
 01:20:50 -0700 (PDT)
From: "(IMF) SCAM VICTIMS" <mimichi4500@gmail.com>
Date: Tue, 5 Sep 2023 01:20:50 -0700
Message-ID: <CAGhkD8USA9d9+1HDw3AKO0o45v_Z8cjdpcgnjTbVjdDUbiyg2w@mail.gmail.com>
Subject: Betrugsopfer
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693902051; x=1694506851; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CvUmRYKO5rN5JiKdYLn9/Xxm/soJiVGtQm650JnL3Yc=;
 b=lgTnm7lKnxTuV4vX+07NeawAEn1gBHgZMipuYK0ZU67mDquTzqopEK7hpQDUH4Pjbq
 Ow71NiQ5EQh53Ji/+lj4f2YxhYfiUo85nrrA/ELlM6lPRnz88CsfzWoe5AS9q9BW9BPi
 m/mCPXdoRbCshAFZLK4YnP+qaU1xzwg9e8O6sWftDsLJ40ayKpb1mXGc5+hKNLr9Ic3M
 mUDAFQyO+s/tKXfetDMzQwkZnUKUEGpxz1RrH1OfuH87Gdz/xLQ2MrMBd+CO7RrEHDky
 foS6M+ycagaTOiRlKivftsWhj9+O0Hhxo4dP1X1wjbyH72i//cQ7K6NVyw0icDVR/UFl
 MvxQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=lgTnm7lK
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
Reply-To: wuwumoneytransfer5000@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U2VociBnZWVocnRlciBFLU1haWwtQmVzaXR6ZXIsCgoKCkRlciBJbnRlcm5hdGlvbmFsZSBXw6Ro
cnVuZ3Nmb25kcyAoSVdGKSBlbnRzY2jDpGRpZ3QgYWxsZSBCZXRydWdzb3BmZXIKdW5kIElocmUg
RS1NYWlsLUFkcmVzc2Ugd3VyZGUgYXVmIGRlciBMaXN0ZSBkZXIgQmV0cnVnc29wZmVyIGdlZnVu
ZGVuLgoKRGllc2VzIFdlc3Rlcm4gVW5pb24tQsO8cm8gd3VyZGUgdm9tIElXRiBiZWF1ZnRyYWd0
IElobmVuIElocmUKVmVyZ8O8dHVuZyBwZXIgV2VzdGVybiBVbmlvbiBNb25leSBUcmFuc2ZlciB6
dSDDvGJlcndlaXNlbi4KCldpciBoYWJlbiB1bnMgamVkb2NoIGVudHNjaGllZGVuIElocmUgZWln
ZW5lIFphaGx1bmcgw7xiZXIgR2VsZHRyYW5zZmVyCmRlciBXZXN0dW5pb24gaW4gSMO2aGUgdm9u
IOKCrDUsMDAwLCBwcm8gVGFnIHZvcnp1bmVobWVuIGJpcyBkaWUKR2VzYW10c3VtbWUgdm9uIOKC
rDEsNTAwLjAwMC4wMCwgdm9sbHN0w6RuZGlnIGFuIFNpZSDDvGJlcndpZXNlbiB3dXJkZS4KCldp
ciBrw7ZubmVuIGRpZSBaYWhsdW5nIG3DtmdsaWNoZXJ3ZWlzZSBuaWNodCBudXIgbWl0IElocmVy
CkUtTWFpbC1BZHJlc3NlIHNlbmRlbiBkYWhlciBiZW7DtnRpZ2VuIHdpciBJaHJlIEluZm9ybWF0
aW9uZW4gZGFyw7xiZXIKd29oaW4gd2lyIGRhcyBHZWxkIGFuIFNpZSBzZW5kZW4gd2llIHouIEIu
OgoKCk5hbWUgZGVzIEFkcmVzc2F0ZW4gX19fX19fX19fX19fX19fXwoKQWRyZXNzZV9fX19fX19f
X19fX19fX18KCkxhbmRfX19fX19fX19fX19fX19fX18KClRlbGVmb25udW1tZXJfX19fX19fX19f
X19fX19fCgpBbmdlaMOkbmd0ZSBLb3BpZSBJaHJlcyBBdXN3ZWlzZXNfX19fX19fX19fX19fXwoK
RGFzIEFsdGVyIF9fX19fX19fX19fX19fX19fX19fX19fXwoKCldpciBiZWdpbm5lbiBtaXQgZGVy
IMOcYmVydHJhZ3VuZyBzb2JhbGQgd2lyIElocmUgSW5mb3JtYXRpb25lbgplcmhhbHRlbiBoYWJl
bjogS29udGFrdCBFLU1haWw6ICggd3V3dW1vbmV5dHJhbnNmZXI1MDAwQGhvdG1haWwuY29tKQoK
CkdldHJldSwKCgpIZXJyIEFudGhvbnkgRHVydSwKCkRpcmVrdG9yIHZvbiBHZWxkdHJhbnNmZXIg
ZGVyIFdlc3R1bmlvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
