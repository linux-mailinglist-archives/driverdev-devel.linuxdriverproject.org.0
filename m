Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B219265ADE0
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Jan 2023 09:09:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F83260AE3;
	Mon,  2 Jan 2023 08:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F83260AE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7F5TeECfPuX; Mon,  2 Jan 2023 08:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4919760AD2;
	Mon,  2 Jan 2023 08:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4919760AD2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 838E41BF8A8
 for <devel@linuxdriverproject.org>; Mon,  2 Jan 2023 08:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B2A0410DB
 for <devel@linuxdriverproject.org>; Mon,  2 Jan 2023 08:09:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B2A0410DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YRsnjDO0sH7H for <devel@linuxdriverproject.org>;
 Mon,  2 Jan 2023 08:09:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C97B410B5
Received: from mail-oa1-x44.google.com (mail-oa1-x44.google.com
 [IPv6:2001:4860:4864:20::44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C97B410B5
 for <devel@driverdev.osuosl.org>; Mon,  2 Jan 2023 08:09:10 +0000 (UTC)
Received: by mail-oa1-x44.google.com with SMTP id
 586e51a60fabf-150b06cb1aeso3393546fac.11
 for <devel@driverdev.osuosl.org>; Mon, 02 Jan 2023 00:09:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=XMHKvd27/mL2VyoxSJIxO4aPsgJb77jwpgU87g2Wz8czAekac9c8rpHv+ekQDi7qmC
 +2G2GgdzwYPosec4bqaAQbZEJJQY72BP2YLHy0Sgo2mUmBNmUL5gsdXCRpTlSBXlhJSn
 4BTpka6gaZJUEg/fMD/AgtIB4lCmTsUBjH4KqGiNuduZz2mmW1t1l8IT4H9RXq5q9ZYY
 fJyfrEKENxcQIztms81ZyKAYGRCzt9uvZ0nAhwxhxz1vBxROq70jvqQPOOg6v2/k3WD3
 6xLmOYtfNVL4/x6moxXOyRxXo4UTWURaOvLiGbuM0eQui9WoedBm4RsW7rKT5fShJ5nT
 m1VQ==
X-Gm-Message-State: AFqh2ko4JnRhSrhvd6v61mq4FR+uSl8P6AQZw2V+lYdtv8Gt0wFxMuqe
 kfLbSoUgeCIZ+3OQAmDakPmY/auNgh66kAtOkzM=
X-Google-Smtp-Source: AMrXdXtyl1jT5DXmmGKrrOIVNXzccgKm+SeQEDuEsBcN/695liPgro/849SVUNaZQbTG5wW5rglYkmPN+N1FobXrJQE=
X-Received: by 2002:a05:6870:6981:b0:144:a164:1ccb with SMTP id
 my1-20020a056870698100b00144a1641ccbmr2522193oab.260.1672646949027; Mon, 02
 Jan 2023 00:09:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6838:6c21:0:0:0:0 with HTTP; Mon, 2 Jan 2023 00:09:08
 -0800 (PST)
From: "Mrs. Josephine Karine Mikael" <drzackwilliams@gmail.com>
Date: Mon, 2 Jan 2023 08:09:08 +0000
Message-ID: <CAAvHn06Bh-M8osS3vFv4vP2X7v9oCp+Lv=xGBBDQ8QncTAu3Kw@mail.gmail.com>
Subject: FROM MRS JOSEPHINE KARINE MIKAEL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=jB//kNkG+pJw3V6J8EDVpR5WqtIXSJjRZgGksK8NU3JsDzLjU8HgZexqpPwsGebYA2
 tg1aCweO3gCmZps7UTjZ6Ezrl7bTz1yW7YphyRzd/HnXSniBDtao13RhULuy4+NbokJA
 v69+6sc5+vhiQnkJ6KNCllmfAn8waTU9kLxXEWLcuooNEDh1VbpnliQCHuPvh4IhH0Ml
 ZNsTw4YCDGFjViU4879MWm7haw5zlqIEvaE4pTDeNpEI3eSnanNjIO8mFaUh/OJBQNnp
 LZa9Uot6hcWWTYjgwWt6ean20x3MvfOauxY71AgEO94aqzLbyVMe0C+Eszcckta8tzWO
 r3Ww==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=jB//kNkG
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
