Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 869BA719802
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Jun 2023 12:00:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF70A841A9;
	Thu,  1 Jun 2023 10:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF70A841A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIoZIEzsJEUF; Thu,  1 Jun 2023 10:00:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D7A4841B8;
	Thu,  1 Jun 2023 10:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D7A4841B8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2111BF3B0
 for <devel@linuxdriverproject.org>; Thu,  1 Jun 2023 10:00:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2571F841B8
 for <devel@linuxdriverproject.org>; Thu,  1 Jun 2023 10:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2571F841B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWnekFtEX1Ze for <devel@linuxdriverproject.org>;
 Thu,  1 Jun 2023 10:00:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C5E281CD0
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C5E281CD0
 for <devel@driverdev.osuosl.org>; Thu,  1 Jun 2023 10:00:03 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id
 a1e0cc1a2514c-76fc767acc2so8041241.1
 for <devel@driverdev.osuosl.org>; Thu, 01 Jun 2023 03:00:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685613602; x=1688205602;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=cCmAlTNl0wj0CdfO87arJwpUbadjexjDCBvC21y1lT5e58zDzF3PEOSOdgT5zNOAgu
 775Xxrf2OY0fCRwkISWMOiuYHEny9hFVm3gtSo6CP3/d4U4d42Q6SfOEVkaYQ43w4s1e
 JM7PtzMrRlpBn5ols4gwI8Qk4drkXZ2KVa0nwVVuIGWaRDincJaoYBEyhU7lcD3o0Q15
 tvyEfuJ5lEu0S9RbdEUE2VeK3NVJ6qAENb1T+byfjg5XPhcDBvB5yHsshrK5JtLvSPPc
 PNZlsgDfHUDM2dAA6Kr0r0tK7iJRLI5zUjojajayHQkF0efCiC7M/PsXbWJFcop9NqQu
 qguQ==
X-Gm-Message-State: AC+VfDytf2V+oIqRGbY6aNESz7cq7CKlI3tm2cK8ojgZcRAPeSTmLFE8
 8B/5D7saZjIjCZ83bBPRy7NNvydz3gSgb1rX9G4=
X-Google-Smtp-Source: ACHHUZ6mNTVJSmyct7MgwoPw+Fzi0sg40WvxiRRIOjkrT1+G0yWi9f4E6+RgkDIEUQE7QgUn4Noat/Tu5HHuBCDvWHU=
X-Received: by 2002:a05:620a:26a7:b0:75b:23a1:69ef with SMTP id
 c39-20020a05620a26a700b0075b23a169efmr5253570qkp.6.1685613602132; Thu, 01 Jun
 2023 03:00:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:2996:b0:35e:5769:df70 with HTTP; Thu, 1 Jun 2023
 03:00:01 -0700 (PDT)
From: "Mrs. Josephine Karine Mikael" <mrsyettybayarmaa0003@gmail.com>
Date: Thu, 1 Jun 2023 10:00:01 +0000
Message-ID: <CAPw0jLGhQZvpFFC1OaKiAhAmNZ+tWxaORTR=ahPqO+=7Q7iaog@mail.gmail.com>
Subject: FROM MRS JOSEPHINE KARINE MIKAEL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685613602; x=1688205602;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=nMHVCSvGFtZNBJBTpAuPMNXnqDPiLYuzDAMXukXmzdU+KlPPvkld66Q96xbGzMQBV+
 zT0DQQbLtHe6iUfPRI7HV1MPIX986HerWkbuetTtfnYixRYWthC+V7ihXPx0/ppzynR7
 WiKQQ+QmopdkqnnwkivBZ+1vXi9ub+kWhtXoKPV7aVWvs/zSfYxTdxvWoMhqqG55mbnC
 xScUfXsMrgSbSoxL3tTo2DGpgTB2UC+Hq8+IeIz2NNfaxq2VwbC8ppRHUaw0Lf+lH5C7
 ewSApZQAJrlO4Si9Ak7cTjTphs0WXcSAIyaWZer9AMzAC4UtoyZpSuW+DLt5DXt4z5s6
 6Syg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=nMHVCSvG
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
Reply-To: mrsjosephinemikae01@myself.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhcmVzdCBCZWxvdmVkIE9uZS4KClBsZWFzZSBwYXJkb24gbXkgbWFubmVycyBvZiBjb250
YWN0aW5nIHlvdSB0aGlzIHdheSwgSSBhbSBNcnMuCkpvc2VwaGluZSBLYXJpbmUgTWlrYWVsLCBm
cm9tIERlbm1hcmsgYnV0IGJhc2VkIGluIFJlcHVibGljIG9mIEJ1cmtpbmEKRmFzbyBXZXN0ZXJu
IEFmcmljYSBmb3Igb3RoZXIgMTQgeWVhcnMgbm93LCBJIGFtIG1hcnJpZWQgdG8gRHIuIE1pa2Fl
bArCoElicmFoaW0sIHdobyBkaWVkIG9uIEphbnVhcnkgMTZ0aMKgwqAgMjAxNS4gV2Ugd2VyZSBt
YXJyaWVkIGZvciBlbGV2ZW4KeWVhcnMgd2l0aG91dCBhIGNoaWxkIGFuZCB3ZSB3ZXJlIGJvdGgg
Ym9ybiBhZ2FpbiBDaHJpc3RpYW5zLCB3aGljaAptYWRlIHNpbmNlIGhpcyBkZWF0aCBJIGRlY2lk
ZWQgbm90IHRvIHJlLW1hcnJ5IG9yIGdldCBhIENoaWxkIG91dHNpZGUKbXkgbWF0cmltb25pYWwg
aG9tZS4KCsKgV2h5IEkgY29udGFjdGVkIHlvdSBpcyBiZWNhdXNlIEkgaGF2ZSBhIFZlcnkgaW1w
b3J0YW50IGFuZCB1cmdlbnQKcmVxdWVzdCB0byBtYWtlOyBJIHdhcyBkaWFnbm9zZWQgd2l0aCBP
dmFyaWFuIENhbmNlciBEaXNlYXNlLCBvZiB3aGljaApJIGFtIGluIHRoZSBIb3NwaXRhbCB3aXRo
IHRoZSBQYWxsaWF0aXZlIENhcmUgVGVhbSBhbmQgdGhlIGRvY3RvcnMKaGF2ZSBjb25maXJtZWQg
dG8gbWUgdGhhdCBJIGhhdmUgb25seSBmZXcgZGF5cyB0byBsZWF2ZSB0aGlzIEVhcnRoLApOb3cg
dGhhdCBJ4oCZbSBlbmRpbmcgdGhlIHJhY2UgbGlrZSB0aGlzLCB3aXRob3V0IGFueSBmYW1pbHkg
bWVtYmVycyBhbmQKbm8gY2hpbGQgb2YgbXkgb3duLCBCZWVuIGEgYnVzaW5lc3Mgd29tYW4gZnJv
bSBEZW5tYXJrIGRlYWxpbmcgd2l0aApnb2xkIGV4cG9ydGF0aW9uIGhlcmUgaW4gUmVwdWJsaWMg
b2YgQnVya2luYSBGYXNvIFdlc3Rlcm4gQWZyaWNhLiBJCmhhdmUgZGVjaWRlZCB0byBoYW5kIG92
ZXIgdGhlIHN1bSBvZiAoJDEwLjUgTWlsbGlvbiBEb2xsYXJzKSBpbiBteQphY2NvdW50IHRvIHlv
dSwgeWVzIGZvciB0aGUgaGVscCBvZiBPcnBoYW5hZ2UgSG9tZXMvdGhlIG5lZWR5IGFuZApoZWxw
bGVzcyBwZW9wbGUgaW4geW91ciBsb2NhdGlvbiwgZG9pbmcgdGhhdCBpcyB0byBmdWxmaWxsIG15
IGxhc3QKd2lzaCBvbiBFYXJ0aC4gQnV0IGJlZm9yZSBoYW5kaW5nIG92ZXIgbXkgZGF0YeKAmXMg
dG8geW91LCBraW5kbHkgYXNzdXJlCm1lIHRoYXQgeW91IHdpbGwgdGFrZSBvbmx5IDUwJSBvZiB0
aGUgZnVuZHMgYW5kIHNoYXJlIHRoZSByZXN0IHRvCm9ycGhhbmFnZSBob21lcy90aGUgbmVlZHkg
YW5kIGhlbHBsZXNzIHBlb3BsZSBpbiB5b3VyIGNvdW50cnkgb3IgaWYKcG9zc2libGUgeW91IGNh
biBidWlsZCBhbiBPcnBoYW5hZ2UgSG9tZSBpbiBteSBuYW1lLgoKUGxlYXNlIGFsd2F5cyBiZSBQ
cmF5ZXJmdWwgYWxsIHRocm91Z2ggeW91ciBsaWZlIGFuZCByZXBseSBtZSBvbiB0aW1lLApiZWNh
dXNlIGFueSBkZWxheSBpbiB5b3VyIHJlcGx5IHdpbGwgZ2l2ZSBtZSByb29tIGluIHNlYXJjaGlu
ZyBmb3IKc29tZW9uZSBlbHNlLCBJIHdpbGwgbm90IHdhbnQgdGhlIHNpdHVhdGlvbiB3aGVyZWJ5
IEkgd2lsbCBoYXZlIHdvcmRzCm9uIHRoaXMgcHJvamVjdCB3aXRoIG1vcmUgdGhhbiBvbmUgcGVy
c29uLCBQbGVhc2UgYXNzdXJlIG1lIHRoYXQgeW91CndpbGwgYWN0IGFjY29yZGluZ2x5IGFzIEkg
c3RhdGVkIGhlcmVpbiBhbmQgYWZ0ZXIgeW91ciByZXBseSBJIHdpbGwKc2VuZCB5b3UgbXkgcHJv
b2Ygb2YgaW50ZXJuYXRpb25hbCBwYXNzcG9ydCwgbXkgc2ljayBwaG90b3MgYW5kIHRoZQpkb2N1
bWVudHMgcHJvb2YgYWJvdXQgdGhlIGZ1bmRzLgoKUExFQVNFIFJFUExZIE1FIFdJVEggVEhFIEFO
U1dFUlMgVE8gVEhPU0UgUVVFU1RJT05TIENPTkZJUk1BVElPTiBCRUxPVyAuCgoxLiBGVUxMIE5B
TUU6CgoyLiBZT1VSIEFHRToKCjMuIFNFWDoKCjQuIE5BVElPTkFMSVRZOgoKNS4gQ09VTlRSWSBP
RiBSRVNJREVOQ0U6Cgo2LiBURUxFUEhPTkUgTlVNQkVSOgoKNy4gWU9VUiBNQVJJVEFMIFNUQVRV
UzoKCjguIFlPVVIgT0NDVVBBVElPTjoKCjkuIFNFTkQgVE8gTUUgWU9VUiBQSUNUVVJFOgoKCgpS
ZXBseSBiYWNrIHRvIG1lIHVyZ2VudGx5IHRvIGVuYWJsZSBtZSBmb3J3YXJkIHRvIHlvdSB0aGUg
QmFuayBjb250YWN0CmRldGFpbHMgYW5kIHRoZSB2aXRhbCBkb2N1bWVudHMgbmVlZGVkIHRvIHBy
b2NlZWQgZm9yIHRoZSBjbGFpbSBvZgpmdW5kcyBmcm9tIHRoZSBCYW5rLCBSZXBseSBtZSBub3cg
dGhhdCBJIGhhdmUgYWNjZXNzIHRvIEludGVybmV0IGluCnRoZSBob3NwaXRhbCB0byBlbmFibGUg
eW91IGNvbnRhY3QgdGhlIGJhbmsuCgpTaW5jZXJlbHkgdGhhbmtzIGFuZCBHb2QgYmxlc3MgeW91
LgoKTXJzLiBKb3NlcGhpbmUgS2FyaW5lIE1pa2FlbC4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
