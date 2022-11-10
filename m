Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D4E62413D
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Nov 2022 12:18:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1985410A3;
	Thu, 10 Nov 2022 11:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1985410A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJCOZdXV8_tK; Thu, 10 Nov 2022 11:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC7A40896;
	Thu, 10 Nov 2022 11:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EC7A40896
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F0761BF423
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 11:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 174E960F2D
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 11:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 174E960F2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbkeWYgLfreO for <devel@linuxdriverproject.org>;
 Thu, 10 Nov 2022 11:18:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D65E60E5F
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D65E60E5F
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 11:18:43 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id i131so1764195ybc.9
 for <devel@linuxdriverproject.org>; Thu, 10 Nov 2022 03:18:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=LnLO53q/rikXoaKrFlTBu8yo4V8ju6o48dwRrkh9e9pxgUuCeqm2seXlLs6rCfFa88
 mCKh2XOoWaipYUVmL2nNF4MO7VlO1/cFcQvh1Lx4dwrSME0XFJXM6RoGcmMMsoX2mMLc
 Ab1lWkThVeD4e67+F7qJPHzO/ClR7n1XhSuNXqaF2yiZC1Y4BQZktYeb4IBfH+f8dxNH
 xdGJ3Izk6VHui5UjnjGUL2QnvhLxC0U/RgIdfoUCPW6DpOVqWw5Uhube9iOQtunHNK6V
 g42xXpTd/59DvPy61fvOidVus/Pq05EByd29UYVl+t2LvbDCN74wXnZ8JaJnT/3dzg2c
 TNbg==
X-Gm-Message-State: ACrzQf30FB0OC1AMwSN33QzzIYYpzfzshFB3fy/LMWkdH0dEEI7Zi4B4
 mSo2psVGSbXk6RgMI4K66QGCg+96WP0lPr66DVo=
X-Google-Smtp-Source: AMsMyM784PEuW09zghrSGwwhGWIhT4ZZyVce8eT0y8EbTbs5aEdnp4xHIbpe4IAwpBGqzUO2oFGGjot07O4EEgw9KgQ=
X-Received: by 2002:a25:7ac6:0:b0:6b5:646:4596 with SMTP id
 v189-20020a257ac6000000b006b506464596mr64489025ybc.177.1668079121630; Thu, 10
 Nov 2022 03:18:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:5a42:b0:3c6:af1:e3b7 with HTTP; Thu, 10 Nov 2022
 03:18:40 -0800 (PST)
From: "Mrs. Josephine Karine Mikael" <okumajudith2@gmail.com>
Date: Thu, 10 Nov 2022 11:18:40 +0000
Message-ID: <CAJyRuT+7Q0NM84V2fy8VFr9Jz3ZhumE2EYiE4=M=YRypjkYSfw@mail.gmail.com>
Subject: FROM MRS JOSEPHINE KARINE MIKAEL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C0WAXL/WoyqTz2Jf0nTKwtsmkHBQXNbIJoVmQc6EvvQ=;
 b=GYClBMMKTveoiYi1r+X37knIzAQs+9cqdAdq+RV44/TttIjzAin4fbWIqOdGZg4JhV
 eTC8PI1eA6vkTm+ToQAuiOg84p81RxrU6jGrug2bTZpT1oTDHs2jfv2P24UNBSIfw6Pb
 CrQEpiDDhNVzgA/PhVipoRrqBd7tDl74UMu8RR7MFPJT0J3VkTGDhiXMumCnHVkgGu7Y
 lmsz1cFHmV1Hu3eOifxzemKGYqjbZRsmgbuwVS58yJLXVhcbj0rmOegphyDY0FPtrf5p
 nOXR2IMTPYPprD/s4H+GAsKhPkf3o0K9WuWfZ8lzSw1biwSAekx9nyfCnIYLWMR6Itxo
 lHuw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=GYClBMMK
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
