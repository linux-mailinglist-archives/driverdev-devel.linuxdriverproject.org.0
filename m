Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5DB6127F6
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Oct 2022 07:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B7814038C;
	Sun, 30 Oct 2022 06:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B7814038C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pojfstpJUH1j; Sun, 30 Oct 2022 06:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A75D40361;
	Sun, 30 Oct 2022 06:25:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A75D40361
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40F7A1BF599
 for <devel@linuxdriverproject.org>; Sun, 30 Oct 2022 06:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B2D64038C
 for <devel@linuxdriverproject.org>; Sun, 30 Oct 2022 06:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B2D64038C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mKBH6gHPGWLs for <devel@linuxdriverproject.org>;
 Sun, 30 Oct 2022 06:25:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10BF340361
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10BF340361
 for <devel@driverdev.osuosl.org>; Sun, 30 Oct 2022 06:25:44 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id
 f16-20020a05600c491000b003cf66a2e7c0so1599070wmp.5
 for <devel@driverdev.osuosl.org>; Sat, 29 Oct 2022 23:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=fzs1+6/X6DxVKb9aDRAXZZBI3gKRvnrZLwe0GxLiFoM7CbC2YxYI8JILzg5NatA1VI
 fLjvfx/IInB0c+SMu0Gg2muZHtDy6zsUnndD/5XYd0iwqWZMxoDd+o8otTr7E1jYDB8M
 b/boaQMmeHD8zJcffp17P8UF3XUXiFaG4BZHjhxmRbuQ+Rm9IUhzyQgcJsZa6C01AY4/
 +/jxQ1pi/PcVrQK/zRrowWTynxHfM4nfExcwWxv9vP6a7DJl0P4IF44peZ+WTG+92OsM
 AcV15oB2E6lYBP7XyS25mEBfVF7yFnYUoCqlH6fWAZUtDWWQQtfBCaCB612VRV0V46nU
 ugPw==
X-Gm-Message-State: ACrzQf2LjzosrZMXhSDt+1VVZ+QMbQpO3VXTGJ20HDoTLKlqzNlh4PUj
 UiiwMCOyvatds64whhAYNooGl66/pDtJM+3+768=
X-Google-Smtp-Source: AMsMyM7KIZPcnq8x4AuUhovB24v5SepCxaSutHBJqNFjU4NGJIWARMkhV1oe5HhhDVgaghKNB3G+z5xcomfGUVj3S5w=
X-Received: by 2002:a1c:f60d:0:b0:3be:708b:c96c with SMTP id
 w13-20020a1cf60d000000b003be708bc96cmr14494007wmc.168.1667111142754; Sat, 29
 Oct 2022 23:25:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:e341:0:0:0:0:0 with HTTP; Sat, 29 Oct 2022 23:25:41
 -0700 (PDT)
From: "Mrs. Josephine Karine Mikael" <lisaw9803@gmail.com>
Date: Sun, 30 Oct 2022 06:25:41 +0000
Message-ID: <CAOSUE-=gfX1KAO62Sfx88bvKxSiC-DhhDdA-o16k0h8w0D3crg@mail.gmail.com>
Subject: FROM MRS JOSEPHINE KARINE MIKAEL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=OQENlMbbsDPFaH8zBhpdMXYH+JLaPWHuJ3IOblq8d6DjmrBnwtoUKXAHdCThLJutO7
 Cbuexqj8bN9rFwz4JybwdfnwnlrPZ7SnnED6FPykM80shJdyis3PPFsv2GZX+nj1BfQE
 LC3VrPNjdzCQsU1KLlsQ/e/Ps7Vbg4Slk1dujjFArbJJz+ZGHNBgvD5i+1zeUPj+f5QL
 c/smsTwRNNa+GZ2Y3cAwxyY2RsnG7uzoZwH3E5E91W+SYpHcGYNjWWVXu5smJnyNxO/T
 AvcgkkRPFoJWI6SGUpqEdr8v3i9E+gbv0gF1whBWfIIxz8RB8arzf0tFeSSt1HTv3QeO
 cxmQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OQENlMbb
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
