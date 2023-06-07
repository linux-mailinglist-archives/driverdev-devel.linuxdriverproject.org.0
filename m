Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E615C7272E4
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Jun 2023 01:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F29560FFA;
	Wed,  7 Jun 2023 23:25:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F29560FFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVigv42G0T9k; Wed,  7 Jun 2023 23:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F69C60BA3;
	Wed,  7 Jun 2023 23:25:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F69C60BA3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BED681BF3CA
 for <devel@linuxdriverproject.org>; Wed,  7 Jun 2023 23:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 966184050F
 for <devel@linuxdriverproject.org>; Wed,  7 Jun 2023 23:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 966184050F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saKjwdDWioXT for <devel@linuxdriverproject.org>;
 Wed,  7 Jun 2023 23:24:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C2E940509
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com
 [IPv6:2607:f8b0:4864:20::933])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C2E940509
 for <devel@linuxdriverproject.org>; Wed,  7 Jun 2023 23:24:56 +0000 (UTC)
Received: by mail-ua1-x933.google.com with SMTP id
 a1e0cc1a2514c-783f88ce557so24786241.3
 for <devel@linuxdriverproject.org>; Wed, 07 Jun 2023 16:24:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686180295; x=1688772295;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lwmqmz3SLTAm/5XHn54kA2Qkz1KiGdBlOiEDAaxIk1A=;
 b=HSL+ES9v9DPZZ1bVTKmC+VnvSi4BjshMe00T4sqCgXs0JO7kjbI1ABAc2DmWD1/6i6
 GUVAaVQykq4kLilF2QhEE/DUe1BFP4WJ54VIIhYZN1XQkwxVS9v4iFpdauO8qvCLHS6R
 geGkE80r4FaZLHJSg482CY+rJEl/kZZ5EjE1BOm20+DP3d25P9C1WcinWEYDD8daqg64
 c0qQ8Fy9DIcHXsB/A6XHAJFyx56THdTdgecFQI4n+RUZsOUkDwVjcj9VSY2NqruPaug9
 f2MKFyNSjYD0LkS/2y/QTdPI5RpvZXzyC3dFdrzDnZKZZXvWqugWfWVhZvszskVwVP2S
 ev5A==
X-Gm-Message-State: AC+VfDy2qVjA9Ir1qJv8CpHtWqUfgnFXlCN3r08+UYx/QStnXIaGoUbF
 PNm1byLS8MPn/MkOwpNmJxbN8/D07mVfms49ZXk=
X-Google-Smtp-Source: ACHHUZ7fpeaKssFgYSTd2Jo1l0iBWxyoZACNUniS47bLuH+jSeLbWj52IEagnK3W0VCd3SekeVaJdsSPQx1ilSBG0zo=
X-Received: by 2002:a67:ee45:0:b0:43b:3553:f53 with SMTP id
 g5-20020a67ee45000000b0043b35530f53mr1249625vsp.29.1686180295214; Wed, 07 Jun
 2023 16:24:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:3244:0:b0:785:6e9:a396 with HTTP; Wed, 7 Jun 2023
 16:24:54 -0700 (PDT)
From: "UNITED NATION DEPUTY SECRETARY-GENERAL (U.N)"
 <ww.westernunionfreetransfer@gmail.com>
Date: Wed, 7 Jun 2023 16:24:54 -0700
Message-ID: <CANnY+t5FJx9DBhDs57UnXAhNb9VL4w1XCaFApYonAhE3odgwdg@mail.gmail.com>
Subject: CONTACT DHL OFFICE IMMEDIATELY FOR YOUR ATM MASTER CARD 1.5 MILLION,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686180295; x=1688772295;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lwmqmz3SLTAm/5XHn54kA2Qkz1KiGdBlOiEDAaxIk1A=;
 b=XJxpYe+iSMaB5qEHgHHr0M9Lb/s9YcZGOU94wMy2Aj9hLgIRSfIP8DYMwNp1vqGKZJ
 lgvteuM4DqBSokcgpvqXzh4gTiO3LUQmS6KSW8R0Rqc323JEdoMZgnKdArVHQcINTuKm
 9dxrv9KuK35wAxQBdsLQI+pRVFuy2oE8iSjTiy3SeCKKPXdXR+D929aDqCkxHe/hJA4J
 nIywWY5Us07iPpHgZaRBlqiV9JI3xZ1E8ffM0ohc7VRu+n97Ais2ew+72jNOvrmEaIGY
 f4Q6NgsW3tTfggiiYMDSgdeuGKK2Whqhu811FXzqYcIU36WO9AOBPUnkPLvdTMBoIWK3
 9Blw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=XJxpYe+i
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
Reply-To: unitednationcompensationcoordinatortreasury@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VU5JVEVEIE5BVElPTiBERVBVVFkgU0VDUkVUQVJZLUdFTkVSQUwuCgpUaGlzIGlzIHRvIG9mZmlj
aWFsIGluZm9ybSB5b3UgdGhhdCB3ZSBoYXZlIGJlZW4gaGF2aW5nIG1lZXRpbmdzIGZvcgp0aGUg
cGFzdCB0aHJlZSAoMykgd2Vla3Mgd2hpY2ggZW5kZWQgdHdvIGRheXMgYWdvIHdpdGggTVIuIEpJ
TSBZT05HCktJTSB0aGUgd29ybGQgYmFuayBwcmVzaWRlbnQgYW5kIG90aGVyIHNldmVuIGNvbnRp
bmVudCBwcmVzaWRlbnRzIG9uCnRoZSBjb25ncmVzcyB3ZSB0cmVhdGVkIG9uIHNvbHV0aW9uIHRv
IHNjYW0gdmljdGltIHByb2JsZW1zLgoKIE5vdGU6IHdlIGhhdmUgZGVjaWRlZCB0byBjb250YWN0
IHlvdSBmb2xsb3dpbmcgdGhlIHJlcG9ydHMgd2UKcmVjZWl2ZWQgZnJvbSBhbnRpLWZyYXVkIGlu
dGVybmF0aW9uYWwgbW9uaXRvcmluZyBncm91cCB5b3VyCm5hbWUvZW1haWwgaGFzIGJlZW4gc3Vi
bWl0dGVkIHRvIHVzIHRoZXJlZm9yZSB0aGUgdW5pdGVkIG5hdGlvbnMgaGF2ZQphZ3JlZWQgdG8g
Y29tcGVuc2F0ZSB5b3Ugd2l0aCB0aGUgc3VtIG9mIChVU0QkIDEuNSBNaWxsaW9uKSB0aGlzCmNv
bXBlbnNhdGlvbiBpcyBhbHNvIGluY2x1ZGluZyBpbnRlcm5hdGlvbmFsIGJ1c2luZXNzIHRoYXQg
ZmFpbGVkIHlvdQppbiB0aGUgcGFzdCBkdWUgdG8gZ292ZXJubWVudCBwcm9ibGVtcyBldGMuCgog
V2UgaGF2ZSBhcnJhbmdlZCB5b3VyIHBheW1lbnQgdGhyb3VnaCBvdXIgQVRNIE1hc3RlciBDYXJk
IGFuZApkZXBvc2l0ZWQgaXQgaW4gREhMIE9mZmljZSB0byBkZWxpdmVyIGl0IHRvIHlvdSB3aGlj
aCBpcyB0aGUgbGF0ZXN0Cmluc3RydWN0aW9uIGZyb20gdGhlIFdvcmxkIEJhbmsgcHJlc2lkZW50
IE1SLiBKSU0gWU9ORyBLSU0sIEZvciB5b3VyCmluZm9ybWF0aW9u4oCZcywgdGhlIGRlbGl2ZXJ5
IGNoYXJnZXMgYWxyZWFkeSBwYWlkIGJ5IFUuTiB0cmVhc3VyeSwgdGhlCm9ubHkgbW9uZXkgeW91
IHdpbGwgc2VuZCB0byBESEwgb2ZmaWNlIHNvdXRoIEtvcmVhIGlzCigkNTAwKS4gZm9yIHNlY3Vy
aXR5IGtlZXBpbmcgZmVlLCBVLk4gY29vcmRpbmF0b3IgYWxyZWFkeSBwYWlkIGZvcgpvdGhlcnMg
Y2hhcmdlcyBmZWVzIGZvciBkZWxpdmVyeSBleGNlcHQgdGhlIHNlY3VyaXR5IGtlZXBpbmcgZmVl
LCB0aGUKZGlyZWN0b3Igb2YgREhMIHJlZnVzZWQgdG8gY29sbGVjdCB0aGUgc2VjdXJpdHkga2Vl
cGluZyBmZWUgZnJvbSBVLk4KY29vcmRpbmF0b3IsIHRoZSBEaXJlY3RvciBvZiBESEwgb2ZmaWNl
IHNhaWQgdGhhdCB0aGV5IGRvbuKAmXQga25vdwpleGFjdGx5IHRpbWUgeW91IHdpbGwgY29udGFj
dCB0aGVtIHRvIHJlY29uZmlybSB5b3VyIGRldGFpbHMgdG8gYXZvaWQKY291bnRpbmcgZGVtdXIt
cmFnZSB0aGF0IGlzIHdoeSB0aGV5IHJlZnVzZWQgY29sbGVjdGluZyB0aGUgKCQ1MDApIC4KZm9y
IHNlY3VyaXR5IGtlZXBpbmcgZmVlLgoKIFRoZXJlZm9yZSBiZSBhZHZpY2UgdG8gY29udGFjdCBE
SEwgT2ZmaWNlIGFnZW50IHNvdXRoIEtvcmVhLiBSZXY6Sm9obgpMZWUgVGFlLXNlb2sKd2hvIGlz
IGluIHBvc2l0aW9uIHRvIGRlbGl2ZXIgeW91ciBBVE0KTWFzdGVyIENhcmQgdG8geW91ciBsb2Nh
dGlvbiBhZGRyZXNzLCBjb250YWN0IERITCBPZmZpY2UgaW1tZWRpYXRlbHkKd2l0aCB0aGUgYmVs
bG93IGVtYWlsICYgcGhvbmUgbnVtYmVyIGFzIGxpc3RlZCBiZWxvdy4KCiBDb250YWN0IG5hbWU6
IEpvaG4gTGVlIFRhZS1zZW9rCgogRW1haWw6KCBkaGxnZW5lcmFsaGVhZHF1YXJ0ZXJzcmVwdWJs
aWNAZ21haWwuY29tICkKCiBEbyBub3QgaGVzaXRhdGUgdG8gQ29udGFjdCBSZXY6IEpvaG4gTGVl
IFRhZS1zZW9rLCBhcyBzb29uIGFzIHlvdQoKIHJlYWQgdGhpcyBtZXNzYWdlLiBFbWFpbDooIGRo
bGdlbmVyYWxoZWFkcXVhcnRlcnNyZXB1YmxpY0BnbWFpbC5jb20gKQoKIE1ha2Ugc3VyZSB5b3Ug
cmVjb25maXJtZWQgREhMIE9mZmljZSB5b3VyIGRldGFpbHMgQVNBUCBhcyBzdGF0ZWQKYmVsb3cg
dG8gYXZvaWQgd3JvbmcgZGVsaXZlcnkuCgogWW91ciBmdWxsIG5hbWUuLi4uLi4uLi4uCgogSG9t
ZSBhZGRyZXNzOi4uLi4uLi4uLgoKIFlvdXIgY291bnRyeS4uLi4uLi4uLi4uCgogWW91ciBjaXR5
Li4uLi4uLi4uLi4uLi4KCiBUZWxlcGhvbmUuLi4uLi4KCiBPY2N1cGF0aW9uOi4uLi4uLi4KCiBB
Z2U64oCm4oCm4oCm4oCm4oCm4oCmLi4KCiBMZXQgdXMga25vdyBhcyBzb29uIGFzIHBvc3NpYmxl
IHlvdSByZWNlaXZlIHlvdXIgQVRNIE1hc3RlckNhcmQKZm9yIHByb3BlciB2ZXJpZmljYXRpb24u
CgogUmVnYXJkcywKCiBNcnMgVml2aWFuIGtha2FkdS4KCiBERVBVVFkgU0VDUkVUQVJZLUdFTkVS
QUwgKFUuTikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
