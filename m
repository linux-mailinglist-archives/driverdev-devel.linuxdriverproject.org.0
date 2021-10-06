Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309C54240B8
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 17:03:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45766407F6;
	Wed,  6 Oct 2021 15:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VZMBjjk0UK6; Wed,  6 Oct 2021 15:03:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F359F4015F;
	Wed,  6 Oct 2021 15:03:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DCE61BF40B
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 15:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1AA0783E45
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 15:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c45pU9536ubk for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 15:02:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69E1983B17
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 15:02:48 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id x27so11690613lfa.9
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 08:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=R4UxXX9KG4xRnVHb1QP83F57gPSySRp26PaptBp9W+E=;
 b=c2A8rXvYzl1XNvZe6X4yZXQ3DLXLxHVa95fIeuj9rBZ45m5+8eQqA0RVm1pT9i5zOe
 IP0uAHiT77O47MvBhw0735+i5MKafDMF8rm3XY3+GiY3sm1DHFCDtLS1irEQ7rjem6PH
 z6EPzmh3XFxdiXENPbjV4F/Nf8XkcT+AS3X7bYULQ8nuQH/96YZs/87VtOMKIKoncsmB
 wA9+TSN42zh2xgxKchxfLbMFWohuQcgnEa0N5aqbEa5qFEoqSh5C/B6sWPtyoLrUx+Wb
 saDrRNUR/xjybJOgghpZJTkrVZHaWjg59TzFmav3zbSgFAtoov70UgIuygPiykA8TN7O
 vaig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=R4UxXX9KG4xRnVHb1QP83F57gPSySRp26PaptBp9W+E=;
 b=hUCMyeMynYoDr8edBoe+kFz7k5Tc/AgxiakM/LjBKfgrcNtUxotXzTWQ0LbzIJ0TjP
 QRLOHV2LeG63UHBmF1PL25M25B4tovxeIWWEw0aMopHyiexAxe/hV7lbOLSRUGHkiriw
 Id7doD/rV3eZjT95RqmwcUAJN1kG5ooBR/EOLCCB1uQaDKZISeCUlHLmRyUh5KWp6WA8
 sX65Ejrx3hq+KQ6mkqAUNu/pa8bgChquqHskZxI4WwTbH+BNCFskFxe8qNPZhbd1mYaM
 gDTWUGp+NjWbm8nw/FdQTd0yQVCi0mlPfdk22ZVH55flgn0cCXU8+FbfKsg2yn6rpNU8
 wQUg==
X-Gm-Message-State: AOAM532f/12xNl43zRBuOtQZF/kicsva7EC6WlrGhOsMdDZMpM9anxb0
 GxGloN/yGw3H/yQhX5r6IQmLh0ZlYrt05F1Cm8I2aA==
X-Google-Smtp-Source: ABdhPJwzkIcdOlAvbcG0LoR5b5rYqJwoDDhoAr9cF2QmPGsGTRkgcfVrKXVLKuhHnG+954Nczl0s2lh35/naoTki6mY=
X-Received: by 2002:a2e:85c2:: with SMTP id h2mr30410582ljj.367.1633532563483; 
 Wed, 06 Oct 2021 08:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210930170646.cffsuytdpa72izbh@pali>
 <CAPDyKFoaw8rdPRdjgAJz3-T2_fS1iA9jtonbwZAYE0npUNfOQQ@mail.gmail.com>
 <149139701.nbvtKH4F0p@pc-42>
In-Reply-To: <149139701.nbvtKH4F0p@pc-42>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 6 Oct 2021 17:02:07 +0200
Message-ID: <CAPDyKFr62Kykg3=9WiXAV8UToqjw8gj4t6bbM7pGQ+iGGQRLmg@mail.gmail.com>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
To: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCA1IE9jdCAyMDIxIGF0IDEwOjE0LCBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBv
dWlsbGVyQHNpbGFicy5jb20+IHdyb3RlOgo+Cj4gT24gRnJpZGF5IDEgT2N0b2JlciAyMDIxIDE3
OjIzOjE2IENFU1QgVWxmIEhhbnNzb24gd3JvdGU6Cj4gPiBPbiBUaHUsIDMwIFNlcHQgMjAyMSBh
dCAxOTowNiwgUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFRo
dXJzZGF5IDMwIFNlcHRlbWJlciAyMDIxIDE4OjUxOjA5IErDqXLDtG1lIFBvdWlsbGVyIHdyb3Rl
Ogo+ID4gPiA+IE9uIFRodXJzZGF5IDMwIFNlcHRlbWJlciAyMDIxIDEyOjA3OjU1IENFU1QgVWxm
IEhhbnNzb24gd3JvdGU6Cj4gPiA+ID4gPiBPbiBNb24sIDIwIFNlcHQgMjAyMSBhdCAxODoxMiwg
SmVyb21lIFBvdWlsbGVyCj4gPiA+ID4gPiA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdy
b3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPiA+
ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4
L2J1c19zZGlvLmMgfCAyNjEgKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjYxIGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93
ZngvYnVzX3NkaW8uYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8u
Ywo+ID4gPiA+ID4KPiA+ID4gPiA+IFsuLi5dCj4gPiA+ID4gPgo+ID4gPiA+ID4gPiArCj4gPiA+
ID4gPiA+ICtzdGF0aWMgaW50IHdmeF9zZGlvX3Byb2JlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMs
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHNkaW9f
ZGV2aWNlX2lkICppZCkKPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wID0gZnVuYy0+ZGV2Lm9mX25vZGU7Cj4gPiA+ID4gPiA+ICsgICAgICAg
c3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1czsKPiA+ID4gPiA+ID4gKyAgICAgICBpbnQgcmV0Owo+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgaWYgKGZ1bmMtPm51bSAhPSAxKSB7Cj4g
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKCZmdW5jLT5kZXYsICJTRElPIGZ1bmN0
aW9uIG51bWJlciBpcyAlZCB3aGlsZSBpdCBzaG91bGQgYWx3YXlzIGJlIDEgKHVuc3VwcG9ydGVk
IGNoaXA/KVxuIiwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZnVuYy0+bnVt
KTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+ID4gPiA+ID4g
PiArICAgICAgIH0KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIGJ1cyA9IGRldm1f
a3phbGxvYygmZnVuYy0+ZGV2LCBzaXplb2YoKmJ1cyksIEdGUF9LRVJORUwpOwo+ID4gPiA+ID4g
PiArICAgICAgIGlmICghYnVzKQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1F
Tk9NRU07Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoIW5wIHx8ICFvZl9t
YXRjaF9ub2RlKHdmeF9zZGlvX29mX21hdGNoLCBucCkpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgIGRldl93YXJuKCZmdW5jLT5kZXYsICJubyBjb21wYXRpYmxlIGRldmljZSBmb3VuZCBp
biBEVFxuIik7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+
ID4gPiA+ID4gKyAgICAgICB9Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgICBidXMt
PmZ1bmMgPSBmdW5jOwo+ID4gPiA+ID4gPiArICAgICAgIGJ1cy0+b2ZfaXJxID0gaXJxX29mX3Bh
cnNlX2FuZF9tYXAobnAsIDApOwo+ID4gPiA+ID4gPiArICAgICAgIHNkaW9fc2V0X2RydmRhdGEo
ZnVuYywgYnVzKTsKPiA+ID4gPiA+ID4gKyAgICAgICBmdW5jLT5jYXJkLT5xdWlya3MgfD0gTU1D
X1FVSVJLX0xFTklFTlRfRk4wIHwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgTU1DX1FVSVJLX0JMS1NaX0ZPUl9CWVRFX01PREUgfAo+ID4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBNTUNfUVVJUktfQlJPS0VOX0JZVEVfTU9ERV81MTI7Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gSSB3b3VsZCByYXRoZXIgc2VlIHRoYXQgeW91IGFkZCBhbiBTRElP
X0ZJWFVQIGZvciB0aGUgU0RJTyBjYXJkLCB0bwo+ID4gPiA+ID4gdGhlIHNkaW9fZml4dXBfbWV0
aG9kc1tdLCBpbiBkcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oLCBpbnN0ZWFkIG9mCj4gPiA+ID4g
PiB0aGlzLgo+ID4gPiA+Cj4gPiA+ID4gSW4gdGhlIGN1cnJlbnQgcGF0Y2gsIHRoZXNlIHF1aXJr
cyBhcmUgYXBwbGllZCBvbmx5IGlmIHRoZSBkZXZpY2UgYXBwZWFycwo+ID4gPiA+IGluIHRoZSBk
ZXZpY2UgdHJlZSAoc2VlIHRoZSBjb25kaXRpb24gYWJvdmUpLiBJZiBJIGltcGxlbWVudCB0aGVt
IGluCj4gPiA+ID4gZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaCB0aGV5IHdpbGwgYmUgYXBwbGll
ZCBhcyBzb29uIGFzIHRoZSBkZXZpY2UgaXMKPiA+ID4gPiBkZXRlY3RlZC4gSXMgaXQgd2hhdCB3
ZSB3YW50Pwo+ID4gPiA+Cj4gPiA+ID4gTm90ZTogd2UgYWxyZWFkeSBoYXZlIGhhZCBhIGRpc2N1
c3Npb24gYWJvdXQgdGhlIHN0cmFuZ2UgVklEL1BJRCBkZWNsYXJlZAo+ID4gPiA+IGJ5IHRoaXMg
ZGV2aWNlOgo+ID4gPiA+ICAgaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbmV0ZGV2L21z
ZzY5MjU3Ny5odG1sCj4gPiA+Cj4gPiA+IFllcywgdmVuZG9yIGlkIDB4MDAwMCBpcyBpbnZhbGlk
IHBlciBTRElPIHNwZWMuIFNvIGJhc2VkIG9uIHRoaXMgdmVuZG9yCj4gPiA+IGlkLCBpdCBpcyBu
b3QgcG9zc2libGUgdG8gd3JpdGUgYW55IHF1aXJrIGluIG1tYy9zZGlvIGdlbmVyaWMgY29kZS4K
PiA+ID4KPiA+ID4gVWxmLCBidXQgbWF5YmUgaXQgY291bGQgYmUgcG9zc2libGUgdG8gd3JpdGUg
cXVpcmsgYmFzZWQgb24gT0YKPiA+ID4gY29tcGF0aWJsZSBzdHJpbmc/Cj4gPgo+ID4gWWVzLCB0
aGF0IHdvdWxkIGJlIGJldHRlciBpbiBteSBvcGluaW9uLgo+ID4KPiA+IFdlIGFscmVhZHkgaGF2
ZSBEVCBiaW5kaW5ncyB0byBkZXNjcmliZSBlbWJlZGRlZCBTRElPIGNhcmRzIChhIHN1Ym5vZGUK
PiA+IHRvIHRoZSBtbWMgY29udHJvbGxlciBub2RlKSwgc28gd2Ugc2hvdWxkIGJlIGFibGUgdG8g
ZXh0ZW5kIHRoYXQgSQo+ID4gdGhpbmsuCj4KPiBTbywgdGhpcyBmZWF0dXJlIGRvZXMgbm90IHll
dCBleGlzdD8gRG8geW91IGNvbnNpZGVyIGl0IGlzIGEgYmxvY2tlciBmb3IKPiB0aGUgY3VycmVu
dCBwYXRjaD8KClllcywgc29ycnkuIEkgdGhpbmsgd2Ugc2hvdWxkIGF2b2lkIHVubmVjZXNzYXJ5
IGhhY2tzIGluIFNESU8gZnVuYwpkcml2ZXJzLCBlc3BlY2lhbGx5IHRob3NlIHRoYXQgZGVzZXJ2
ZSB0byBiZSBmaXhlZCBpbiB0aGUgbW1jIGNvcmUuCgpNb3Jlb3Zlciwgd2UgYWxyZWFkeSBzdXBw
b3J0IHRoZSBzaW1pbGFyIHRoaW5nIGZvciBlTU1DIGNhcmRzLCBwbHVzCnRoYXQgbW9zdCBwYXJ0
cyBhcmUgYWxyZWFkeSBkb25lIGZvciBTRElPIHRvby4KCj4KPiBUbyBiZSBob25lc3QsIEkgZG9u
J3QgcmVhbGx5IHdhbnQgdG8gdGFrZSBvdmVyIHRoaXMgY2hhbmdlIGluIG1tYy9jb3JlLgoKSSB1
bmRlcnN0YW5kLiBBbGxvdyBtZSBhIGNvdXBsZSBvZiBkYXlzLCB0aGVuIEkgY2FuIHBvc3QgYSBw
YXRjaCB0bwpoZWxwIHlvdSBvdXQuCgo+Cj4gLS0KPiBKw6lyw7RtZSBQb3VpbGxlcgoKS2luZCBy
ZWdhcmRzClVmZmUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
