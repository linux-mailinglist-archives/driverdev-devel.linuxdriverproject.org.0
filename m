Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0AF13265C
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 13:38:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65D0E856F4;
	Tue,  7 Jan 2020 12:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VA-qF4o+tm2i; Tue,  7 Jan 2020 12:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D7C584B82;
	Tue,  7 Jan 2020 12:38:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8FC1BF3DE
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 12:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A7172035B
 for <devel@linuxdriverproject.org>; Tue,  7 Jan 2020 12:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RmbqkPWSLd+E for <devel@linuxdriverproject.org>;
 Tue,  7 Jan 2020 12:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 5ABE820002
 for <devel@driverdev.osuosl.org>; Tue,  7 Jan 2020 12:38:32 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y19so38732614lfl.9
 for <devel@driverdev.osuosl.org>; Tue, 07 Jan 2020 04:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xNdg/eGe2spHZF8Ar7NLXHqFtzVzxyf+teERuO/bVjc=;
 b=IBgA2Em6iQG71nytT7MVKkAkSpchm34hogp9nrPDVFD2uq6bE3RLvT5EC2lmzO6J6c
 Dbg1dYo4ATLwVPgn2RytyJdEgTF84i4p/VdfrHVBASGlIo/MAWHtdDIDJErP4DFAXMh3
 aN4WgMRJ1rLGHzDYNjfegkvyLIlgRMuRRr2IftbxWokVUQTvks65sqQ/2lcGa1brrus0
 50pN1du3FO+emJhqwhHyfYqrCvhVETASPAVhymc1hEnaXzq3JRmoVXDN00dq1VCT5laB
 Q+0jWOsP1P9M4W9EabnTv4RrlSWAniEilZ7hgrBtP5rtkEooAK4qRb4b+dGg2y2mIqYi
 dXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xNdg/eGe2spHZF8Ar7NLXHqFtzVzxyf+teERuO/bVjc=;
 b=iQ7B3HmFXdS1jJNWBrreVdyHc07fjXyG9ZcrzKwvqBZVrQclBJJaZVxBk3RsVc/8Kx
 lMf1LaxIWg0D6qs4qkAoTvJqUaeznO6G+cfBl1T8SEG1a4/Kr9xqfH/3OvovSav9gbY4
 rpLK1DNPdqfvzqX1+ZA/dw3eq+N0TkSl58GbR7TI3Aa/p2jfVh8roman+kJxxrTqZ50k
 4MWBzyzJEcZlLkl5RBhU1SZ44LKfWjM82lzeQnXCKIztiel0WRhE8aXQgfRZE2kIhLyq
 pxlKjU1UHcr7akQwDCCo53o0+IlvQ+GKryWW5vxtjcTy8UGhiNWbIEFKFYNlllRiSSGK
 2lxg==
X-Gm-Message-State: APjAAAV0xWtHznPh713EJHMzUVURM3R3iveHQYuQ2WibBG0di9RmUzR0
 5k6m+yIogPT5w8GMHSdaO3Y8TflmsHiWxB0r29wZFw==
X-Google-Smtp-Source: APXvYqyjy7HCbuFJZMBW/ujChvDuspmEEyJbLXUF8TFZisyKZFmn1M7N7wpY7pWWtfq9hM2MIuNebIt0EKDUy/5fjNI=
X-Received: by 2002:a19:8a41:: with SMTP id m62mr59247202lfd.5.1578400710421; 
 Tue, 07 Jan 2020 04:38:30 -0800 (PST)
MIME-Version: 1.0
References: <20191215183047.9414-1-digetx@gmail.com>
 <CACRpkdYAKS50-CNmE0nRNQanFxKejoHrwxho3fZXROoLZUb4+Q@mail.gmail.com>
 <CAMpxmJVi1hy6a72M7rAHP0AXW1Z4cGp8H0O6ayLMwFm9UL3WPQ@mail.gmail.com>
 <CACRpkdaNAzpDu6uxETnuDGxnXTJTh0LhcE=9DL9-Kwi4butZLA@mail.gmail.com>
 <CAMpxmJXbR8=esuKhMKzD8LGFC6_Rz4uQXJ2egCXGLj_eauxS5g@mail.gmail.com>
In-Reply-To: <CAMpxmJXbR8=esuKhMKzD8LGFC6_Rz4uQXJ2egCXGLj_eauxS5g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 13:38:19 +0100
Message-ID: <CACRpkdZZc2z9_9tjwOEYCuv1fzrqJ7Eb5UK-T9GA+6BqBYe_LQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
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
Cc: devel@driverdev.osuosl.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBKYW4gNywgMjAyMCBhdCAxMDozMSBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPiB3dC4sIDcgc3R5IDIwMjAgbyAxMDoyOSBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IG5hcGlzYcWCKGEpOgoKPiA+
ID4gVWdoLCBJIG5vdyBub3RpY2VkIEkgcmVzcG9uZGVkIHRvIFRoaWVycnkgb25seSBhZnRlciBh
cHBseWluZyB0aGlzIHRvIG15IHRyZWUuCj4gPiA+Cj4gPiA+IEFueXdheSwgaXQgc2hvdWxkbid0
IGJlIGEgcHJvYmxlbS4gSSdsbCB0YWtlIG1vcmUgY2FyZSBuZXh0IHRpbWUuCj4gPgo+ID4gT0sg
c2hhbGwgSSBkcm9wIHRoZSBwYXRjaGVzIGZyb20gbXkgdHJlZSB0aGVuPyBObyBiaWcgZGVhbC4K
PiA+Cj4KPiBJZiB5b3UncmUgZmluZSB3aXRoIHRoaXMsIHN1cmUhCgpPSyBkcm9wcGVkIHRoZW0s
IGhhZG4ndCBldmVuIHB1c2hlZCB0aGUgYnJhbmNoIG91dCB5ZXQuCgpTb29uIHJlYWNoaW5nIHRo
ZSB0b3Agb2YgbXkgbWFpbGJveCBzbyBJIHdpbGwgYmUgcHVzaGluZyB0aGUgYnJhbmNoZXMKZm9y
IHRoZSBhdXRvYnVpbGRlcnMgYW5kIGxhdGVyIHRvbmlnaHQgZm9yLW5leHQuCgpZb3VycywKTGlu
dXMgV2FsbGVpagpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
