Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEFE7E4BA7
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Nov 2023 23:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73CAD60D62;
	Tue,  7 Nov 2023 22:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73CAD60D62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fSL2ZUimr79; Tue,  7 Nov 2023 22:24:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B9EE60D65;
	Tue,  7 Nov 2023 22:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B9EE60D65
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FCAC1BF59B
 for <devel@linuxdriverproject.org>; Tue,  7 Nov 2023 22:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAF0D4023F
 for <devel@linuxdriverproject.org>; Tue,  7 Nov 2023 22:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAF0D4023F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-1PQ9tFp2WY for <devel@linuxdriverproject.org>;
 Tue,  7 Nov 2023 22:24:23 +0000 (UTC)
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DA3E40182
 for <devel@driverdev.osuosl.org>; Tue,  7 Nov 2023 22:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DA3E40182
Received: by mail-pj1-x102a.google.com with SMTP id
 98e67ed59e1d1-2806cbd43b8so5690246a91.3
 for <devel@driverdev.osuosl.org>; Tue, 07 Nov 2023 14:24:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699395862; x=1700000662;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HQvLA7Ftco3vVkZ6lPAzeYkHHvg+o3ynlBYXF65y7Ww=;
 b=f2K9jNy6KrJO/CiRsTI4UoeAPayS0i9it5mLJ3QBrhlofBxXYPy03H6D5/RI0tmZdi
 Ju09NXAPXwyrQAXP3/L5Uq/cIav5SHK5l8FSadE+Zs3yPyIuAn0EB/YD5NsS2xL8R/v3
 k72cgSUyWcP/OjW1UjEO79sxhag0ArEqHI79Ex8PH3PKmxabZ017wla98HRwarz3LsqZ
 znU8CGlzs+uLt699M29zcve0glJ3VyM/cilZECLk2SseyDwWqiEF2hq8B20NePP+HrgR
 5apPZVTyRgLa218kW4yJII2Uxx8xoWV0qkD/2HML5GJsg/BNaGXz74S7HALidIJ1scJT
 g0hQ==
X-Gm-Message-State: AOJu0YzWlfAmwQMnASjZWzSODDJMCtpIKW7APSac3qp7oY+PqEbo9e9V
 PyyAP02u6A7ujSs5cZ5S0A12SCZKCUJFBiefYvA=
X-Google-Smtp-Source: AGHT+IFmH/+zzeDsaC3C3cJh2XLsAxEC04jHGBRlyg2bRR5uUsT3zxEoydG2zclPPiPQ6bKMcETMcP3EKCSP91EEPg0=
X-Received: by 2002:a17:90b:1d82:b0:27c:f8f4:fedb with SMTP id
 pf2-20020a17090b1d8200b0027cf8f4fedbmr97669pjb.21.1699395862649; Tue, 07 Nov
 2023 14:24:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7022:5e03:b0:6c:91c5:71d0 with HTTP; Tue, 7 Nov 2023
 14:24:22 -0800 (PST)
From: Morris Anderson <usfinancialdepartment0120@gmail.com>
Date: Tue, 7 Nov 2023 22:24:22 +0000
Message-ID: <CAAH0rADTs7j4V+M_750wCC=DrNviHuN1SXW96qMMTbg0-TyNeA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699395862; x=1700000662; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HQvLA7Ftco3vVkZ6lPAzeYkHHvg+o3ynlBYXF65y7Ww=;
 b=JM4lMM1/lfp6W5iVIts4ceEUF0CXDa28kg2O6eSbhX6gZpzYpDgS99TBXxqFby8qGA
 aeMuePPDNL9QSNpJlvYv4scQtgGGhSB0bm4bMmO0gM6gt89tSuFYmH3qDp1tM7J4b8vD
 TdjU6+/l4A2DfRioKxNjNGmFiKKt1l2yc84skXbDYp6hNvjz7+tV3rVk8pOuWdMfpYKz
 HV8ihxbPh4fVu1r1zqsRzBFV6XaJI63gNTSHmIz8NeyZS0Ak3/eGDuRAx/BilFCaa5SE
 a0IV71slU64Aghy49xbW97sVD84oyVZef+bBfRk+NITxmfqCW7eLiZl2fT64gvF9Amxx
 TmCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=JM4lMM1/
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
Reply-To: andersonmorris490@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkd1dGVuIE1vcmdlbiBtZWluIGxpZWJlciBGcmV1bmQsCgogV2llIGdlaHQgZXMgZGlyPyBJ
Y2ggaGFiZSBJaG5lbiB6dXZvciBlaW5lIE5hY2hyaWNodCBiZXrDvGdsaWNoIGVpbmVzCkdlc2No
w6RmdHN2b3JzY2hsYWdzIGdlc2NoaWNrdCwgYXVmIGRlbiBTaWUgbmljaHQgZ2VhbnR3b3J0ZXQg
aGFiZW4sCnZpZWxsZWljaHQga29ubnRlIElociBHZXNjaMOkZnRzcGxhbiBlcyBJaG5lbiBuaWNo
dCBlcmxhdWJlbiwgbWlyIHp1CmFudHdvcnRlbi4gSWNoIG51dHplIGRpZXNlIEdlbGVnZW5oZWl0
LCB1bSBJaG5lbiBtaXR6dXRlaWxlbiwgZGFzcyBkZXIKVm9yc2NobGFnIG1pdCBVbnRlcnN0w7x0
enVuZyBlaW5lcyBhdXNsw6RuZGlzY2hlbiBQYXJ0bmVycywgZGVyIGlobiB6dQplaW5lbSBsb2dp
c2NoZW4gQWJzY2hsdXNzIGZpbmFuemllcnQgaGF0LCBlcmZvbGdyZWljaCBhYmdlc2NobG9zc2Vu
Cnd1cmRlLgogSWNoIG3DtmNodGUgSWhuZW4gZGFmw7xyIGRhbmtlbiwgZGFzcyBTaWUgbWljaCBp
Z25vcmllcnQgaGFiZW4sIHdhcwptaWNoIGRhenUgYnJpbmd0LCBlaW5lIHZvbiBHb3R0IGdlc2Fu
ZHRlIFBlcnNvbiB6dSBncsO8bmRlbiB1bmQgSWhuZW4KenUgYmV3ZWlzZW4sIGRhc3MgZXMgaW1t
ZXIgbm9jaCBndXRlIE1lbnNjaGVuIGdpYnQsIHVuZCBpY2gKZW50c2Now6RkaWdlIFNpZSBtaXQg
ZGVyIFN1bW1lIHZvbiBmw7xuZmh1bmRlcnR0YXVzZW5kIERvbGxhciB1bmQgaWNoCmhhYmUgbWVp
bmVtIEJhbmttYW5hZ2VyIGVpbmUgR2VsZGF1dG9tYXRlbi1WaXNhLUthcnRlIGltIFdlcnQgdm9u
CjUwMC4wMDAgVVMtRG9sbGFyIHp1ciBWZXJmw7xndW5nIGdlc3RlbGx0LCB1bSBzaWUgSWhuZW4g
enUgZ2ViZW4sIGJldm9yClNpZSBmw7xyIGVpbiBJbnZlc3RpdGlvbnNwcm9qZWt0IG5hY2ggSW5k
aWVuIHppZWhlbiwgdW5kIG3DtmNodGUsIGRhc3MKU2llIGRpZXNlcyBaZWljaGVuIGluIGd1dGVt
IEdsYXViZW4gYWt6ZXB0aWVyZW4gZGVubiBkYXMga29tbXQgYXVzCnRpZWZzdGVtIEhlcnplbi4K
CktvbnRha3RpZXJlbiBTaWUgbWVpbmUgQmFua21hbmFnZXJpbiBGcmF1IExpc2EgT2tlaXRhIHVu
dGVyIGlocmVyCnByaXZhdGVuIEUtTWFpbC1BZHJlc3NlIHVuZCBzaWUgd2lyZCBJaG5lbiBoZWxm
ZW4sIElobmVuIGRpZQpHZWxkYXV0b21hdGVuLVZpc2EtS2FydGUgenUgc2VuZGVuLgoKRS1NYWls
LUFkcmVzc2UgKExpc2Fva2VpdGEwMUBmaW5hbmNpZXIuY29tKQpHcsO8w59lCkhlcnIuIEFuZGVy
c29uIE1vcnJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
