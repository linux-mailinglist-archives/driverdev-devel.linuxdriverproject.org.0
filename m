Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5692A7920F5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Sep 2023 10:19:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E0BD60B8E;
	Tue,  5 Sep 2023 08:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E0BD60B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y6bAljSGEyrq; Tue,  5 Sep 2023 08:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33E44606D3;
	Tue,  5 Sep 2023 08:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33E44606D3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF9FC1BF2F0
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 08:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8DE9400A6
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 08:19:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8DE9400A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rW_-PiThtX6x for <devel@linuxdriverproject.org>;
 Tue,  5 Sep 2023 08:19:05 +0000 (UTC)
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91D5840129
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 08:19:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91D5840129
Received: by mail-qt1-x832.google.com with SMTP id
 d75a77b69052e-414b3b65e85so13929791cf.1
 for <devel@linuxdriverproject.org>; Tue, 05 Sep 2023 01:19:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693901944; x=1694506744;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CvUmRYKO5rN5JiKdYLn9/Xxm/soJiVGtQm650JnL3Yc=;
 b=KL+LGT1Z0Zlbdd46iBvtWJv01XIla71nQTUoNe6yQa/hy2u8wbLZW1Uq2n/5ZGaogY
 lHdMiUWrneCvxccAWjHZVuBoWNHctAcjZiC38qyr6UhdMOi2nOlW+vtoBo2u7GXyafDu
 t6EkEiLuhCoCjnPjmuLitVc2NMA1pAtknaldBNhcas1MvE9LD8ZfVB0Bcvf34fj2h59D
 hs7e7Ch1mUQaeX4+4py0adbXoYpHg/UpASYtwvviSKAeyi9L5uLZ1ivqPZM9Wnm143rL
 +ujFUPoopncsWqz2h2e2ecLx10xDcDhju1I0YTIPcy3nCZztitN6943K3Ium20G9p4tw
 S46Q==
X-Gm-Message-State: AOJu0Yw493U6eX0XiB1JxkmQ5QZ/JJd2+F79rBaYe01feDPzS91X+4nj
 AqGZQY1OURvh+aMkLkgtKLylaB91O5I+RjOX50M=
X-Google-Smtp-Source: AGHT+IERAX8PQb3+O/VRt2IpdT+B8+AIRhc7TR9qfBXEywqtD/tUeMqNmseulSPs3fS452xIhVN8tbhQYqX1LXl34po=
X-Received: by 2002:a0c:aa1b:0:b0:653:5736:c0b4 with SMTP id
 d27-20020a0caa1b000000b006535736c0b4mr10412089qvb.54.1693901943569; Tue, 05
 Sep 2023 01:19:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:de0e:0:b0:634:8588:8dcb with HTTP; Tue, 5 Sep 2023
 01:19:02 -0700 (PDT)
From: "(IMF) SCAM VICTIMS" <smmab4668@gmail.com>
Date: Tue, 5 Sep 2023 01:19:02 -0700
Message-ID: <CAPvhgiGb_xchv+cBfjtNXZbs3T38s2BJRqmONSNBDUeOvUkr=Q@mail.gmail.com>
Subject: Betrugsopfer
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693901944; x=1694506744;
 darn=linuxdriverproject.org; 
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CvUmRYKO5rN5JiKdYLn9/Xxm/soJiVGtQm650JnL3Yc=;
 b=RDOKG6j0vYx7gLUrhnIcsaCQSsYWUqelpl6ufF3DPbhXqobY6jiTNfNvpNcdypPPMk
 noWiPfRnDPhNQIrg9RkLqzQpASgslEpdrCpQh9JgRfRwGAuByJL8jBRvtdd6AmbSbJBK
 qkuBHJ/HHsIBMalhNTRXI72qEZxXJJ+w+V7kZVNnHmaqhnBL6uhe3dQpP4fRzQTQmDJQ
 u6t+fqzMxY8FVvimpSm61PAU/CtPgTvFQwwhMxdipOGXXvhVW7eoEgar2VfsTAil1vci
 1LmpAsRxa30MpKnuILPKpVu9CrTjglVnn0YgnsnMLc8lFWHJrpsusAyvBeNMDhZ5O4as
 rOiw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=RDOKG6j0
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
