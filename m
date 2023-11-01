Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F417DE628
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Nov 2023 19:52:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EFAC7042F;
	Wed,  1 Nov 2023 18:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EFAC7042F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9hqMAqTXK-P; Wed,  1 Nov 2023 18:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54F4B70459;
	Wed,  1 Nov 2023 18:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54F4B70459
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 471241BF841
 for <devel@linuxdriverproject.org>; Wed,  1 Nov 2023 18:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 268DE4ED66
 for <devel@linuxdriverproject.org>; Wed,  1 Nov 2023 18:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 268DE4ED66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KfvWnFE6McMy for <devel@linuxdriverproject.org>;
 Wed,  1 Nov 2023 18:52:06 +0000 (UTC)
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 743F34ED1E
 for <devel@driverdev.osuosl.org>; Wed,  1 Nov 2023 18:52:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 743F34ED1E
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-1ef9f1640a5so84159fac.3
 for <devel@driverdev.osuosl.org>; Wed, 01 Nov 2023 11:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698864725; x=1699469525;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hgPPOLL7hEMD1v3SluTIBpExw0/hkhrUp3cmNuslYk4=;
 b=xRGyiO6W1QwQJl5+nMd0IipXbgcDwhZKiUDXyBXqVTpjSerxQtiCWrt0Cw6t7s22ie
 h5mALK4TrrA+0JF/aULwgHe6QDN5xMlSmCtNTWLUaqdy1xTWMHro6m3fDJGFlHxpMKtn
 jrGtwniUEreRvlypyEjTOH8z/izWtPAoDSZARxibmPt1mt9qYsI4aIqwi2xIk2YTZ5Tu
 8bClddXUdhpVof1k9Sp+ViaDCHJBMKq6lhiHRn7KQ8HtNZxCF59T/QYOIBwSvaItsVTb
 kIhIy5kCAhBcNhwfymfzdCfOkbC0+7A36vDtf8VAXns4yYKx6euklaGAjNVJ7/BvCjIi
 ofZQ==
X-Gm-Message-State: AOJu0Yy+KgxVAvojjZ0Xs/i+9XkaBzk/hWp2u9Coq3DQBhueYpv+fyhV
 lvPhKHE31WrXJIDVxNjSpqLrSrqJC11HkMqyeeU=
X-Google-Smtp-Source: AGHT+IHwiZ25f/NKAVG9C/lIW2Gv6p2nXaQB7Uk+U8iWPbeJOytJKMGOHbp4N7AUuYpLPHk6WFDVrdyoFL8Usxc+r88=
X-Received: by 2002:a05:6870:3645:b0:1ef:3c56:3c50 with SMTP id
 v5-20020a056870364500b001ef3c563c50mr17143929oak.45.1698864725209; Wed, 01
 Nov 2023 11:52:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:5248:b0:140:fd3e:c5cb with HTTP; Wed, 1 Nov 2023
 11:52:04 -0700 (PDT)
From: Stepan CHERNOVETSKY <s.chernovetskyi@gmail.com>
Date: Wed, 1 Nov 2023 19:52:04 +0100
X-Google-Sender-Auth: zzL8dDf7Y3jfPs9OocjhnE1Y_Ag
Message-ID: <CAApFGfSN3LYCxapQpHtT8mhAjUi_dU7dwtvaaPSZ9PQwLc1-9A@mail.gmail.com>
Subject: Inquiry for an investment there in your country.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698864725; x=1699469525; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=hgPPOLL7hEMD1v3SluTIBpExw0/hkhrUp3cmNuslYk4=;
 b=ED1GfmICpdquBj3084WG3PfwQz+4bt6K+LCZQ68sVuXGMof4umbhj6v/pT0tmAm672
 XxuvV/RImuTq5ncStvUYdy2svX212xH44LGvItzEcH3Wj1vShrfyBWxb8mt//sVGMV6U
 jj5JdZ3AXMar/FgmwRoX4OtG44VDy9//KJB3dkroHvjqDBO37z6Px9BnUP3SkFv4U+bH
 XxoNWCprhNf9lVVvh0tIdcxvh6PMto0nSw/jQy3GO1blVi+nRNZl3Wn5puzKlzz3alyh
 kR2+oAbrBLRN8EqqeKyy3YMFxZTXuulxXSf8ku2FMvuZeYEceyJKrXGJY0UtmTy/G8mZ
 555Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ED1GfmIC
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

RGVhciBTaXIvTWFkYW0sCgpQbGVhc2UgZG8gbm90IGJlIGVtYmFycmFzc2VkIGZvciBjb250YWN0
aW5nIHlvdSB0aHJvdWdoIHRoaXMgbWVkaXVtOyBJCmdvdCB5b3VyIGNvbnRhY3QgZnJvbSBHb29n
bGUgcGVvcGxlIHNlYXJjaCBpbiBCdXNpbmVzcyBhbmQgY29tcGFueQpEaXJlY3RvcnkgYW5kIHRo
ZW4gZGVjaWRlZCB0byBjb250YWN0IHlvdS4gTXkgZ29hbCBpcyB0byBlc3RhYmxpc2ggYQp2aWFi
bGUgYnVzaW5lc3MgcmVsYXRpb25zaGlwIHdpdGggeW91CnRoZXJlIGluIHlvdXIgY291bnRyeS4K
CkkgYW0gQ0hFUk5PVkVUU0tZSSBTdGVwYW4sIGZyb20gS3lpdiAoVWtyYWluZSk7IEkgd2FzIGEK
YnVzaW5lc3NtYW4sIEludmVzdG9yIGFuZCBGb3VuZGVyIG9mIENoZXJub3ZldHNreWkgSW52ZXN0
bWVudCBHcm91cAooQ0lHKSBpbiBLeWl2IGJlZm9yZSBSdXNzaWHigJlzIEludmFzaW9uIG9mIG15
IGNvdW50cnkuIE15IGJ1c2luZXNzIGhhcwpiZWVuIGRlc3Ryb3llZCBieSB0aGUgUnVzc2lhbiBt
aWxpdGFyeSB0cm9vcHMgYW5kIHRoZXJlIGFyZSBubwptZWFuaW5nZnVsIGVjb25vbWljIGFjdGl2
aXRpZXMgZ29pbmcgb24gaW4gbXkgY291bnRyeS4KCkkgYW0gbG9va2luZyBmb3IgeW91ciBoZWxw
IGFuZCBhc3Npc3RhbmNlIHRvIGJ1eSBwcm9wZXJ0aWVzIGFuZCBvdGhlcgppbnZlc3RtZW50IHBy
b2plY3RzLCBJIGNvbnNpZGVyIGl0IG5lY2Vzc2FyeSB0byBkaXZlcnNpZnkgbXkKaW52ZXN0bWVu
dCBwcm9qZWN0IGluIHlvdXIgY291bnRyeSwgZHVlIHRvIHRoZSBpbnZhc2lvbiBvZiBSdXNzaWEg
dG8KbXkgY291bnRyeSwgVWtyYWluZSBhbmQgdG8gc2FmZWd1YXJkIHRoZSBmdXR1cmUgb2YgbXkg
ZmFtaWx5LgoKUGxlYXNlLCBJIHdvdWxkIGxpa2UgdG8gZGlzY3VzcyB3aXRoIHlvdSB0aGUgcG9z
c2liaWxpdHkgb2YgaG93IHdlIGNhbgp3b3JrIHRvZ2V0aGVyIGFzIGJ1c2luZXNzIHBhcnRuZXJz
IGFuZCBpbnZlc3QgaW4geW91ciBjb3VudHJ5IHRocm91Z2gKeW91ciBhc3Npc3RhbmNlLCBpZiB5
b3UgY2FuIGhlbHAgbWUuCgpQbGVhc2UsIGlmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbiBwYXJ0bmVy
aW5nIHdpdGggbWUsIHBsZWFzZSByZXNwb25kCnVyZ2VudGx5IGZvciBtb3JlIGluZm9ybWF0aW9u
LgoKWW91cnMgU2luY2VyZWx5LApDSEVSTk9WRVRTS1lJIFN0ZXBhbgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
