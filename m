Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B18632419D
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 21:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 245B4853F8;
	Mon, 20 May 2019 19:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dt3De4vQot+x; Mon, 20 May 2019 19:59:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4435785205;
	Mon, 20 May 2019 19:59:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE7841BF2B0
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 19:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB58E85142
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 19:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PH9DKhVY64uf for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:59:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
 [209.85.166.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0400285078
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 19:59:45 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id t184so1089054itf.2
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 12:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VVW9wD/qxMbb1dV3/1vl/BKh7b6QCqLkCa88/L/fMdE=;
 b=XHD4K5/qHii8YIULZlh3fl3uulbU8JGAJR1V8KgW858HapYARaDH8bLwjPqyccwr87
 qSxee6YFzJ/AscPA0JEIfmxlA1FHjXCR195sPKocydebYX7aE+ed2uqAJCf4vTWa6pdT
 P92YkSfgUChnukOk9283EjvJv/cChX488FOTIBVy87wx8/qj2XY+OHCiYVQ08RFlRT4/
 pNTvkKbHcxu4Hc+9NbASZhL6NX5jdY+cRlgFVzAnnEmbQvtD4/u1S9d//W4hsaPcw0jx
 8VnwmymQ85Ubrg21gK04PtucAwN4RNk26K+uUaTaK3dhXUB/0n+xOZVBZBovuE+eOtLj
 xE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VVW9wD/qxMbb1dV3/1vl/BKh7b6QCqLkCa88/L/fMdE=;
 b=JnTTqcDONhsn0IbgVVQbv5iHjJLInpf1sq7vLdWbPMCNc8ZdYVgdzEjOIDVvU5Rt0j
 GDGjOEfJpc938fVczq1vLM1r0vK90ExA2lLH4UsvtqvcgAfel2Cum+LjkhdKsU5mPS62
 9vt+iT3aSaYwg+TmqQF1mGOH01DThK2JsFdv+jkO7phpB33j31749VFsNrN6NNv5AiVz
 l0njZpRFZEv13SHRu0sXbE439kx3DOkbPO8NsxUv1bx0gxbpDcSHDlN7o1OoJb3lqgT/
 7tJWTayJSkTWqbjC6aax6oa0UEVc8/2LboESOBqs2hkDGtgchJAELN3CD8/p8cl8lFwf
 uw2A==
X-Gm-Message-State: APjAAAW9gVykibBaNJXRBJjAh3fZpy8ZAdcRzfdp/q8xts9oa3TbM7xf
 IKHUd7nlIFqrTI3GUHpVCoMS1xBcjqkZkUDmLow=
X-Google-Smtp-Source: APXvYqw+JTSio1QmKKLc3SXdlT+4eq6mkw0FklRjcsewxKjdEsoC4iDutSx4sLkL0+2iud+NEj7/Q/BMG1iKqMaUNGg=
X-Received: by 2002:a02:9381:: with SMTP id z1mr11574837jah.130.1558382384204; 
 Mon, 20 May 2019 12:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
 <CAGngYiUZmfnuj5WUnwk18szijmsQjF27j=OxQfJtp5bNORppRQ@mail.gmail.com>
 <CAGngYiUCedv6oqTPOS+eFwnQJajor3hwKjxeNRcKq031giZeXg@mail.gmail.com>
In-Reply-To: <CAGngYiUCedv6oqTPOS+eFwnQJajor3hwKjxeNRcKq031giZeXg@mail.gmail.com>
From: Oscar Gomez Fuente <oscargomezf@gmail.com>
Date: Mon, 20 May 2019 21:59:08 +0200
Message-ID: <CALtfCQbccsEioqWRZn_cnQZmykXYce6Xc8qAdxYubN9CuJMW9A@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
To: Sven Van Asbroeck <thesven73@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU3ZlbiwKClllcy4KCk9zY2FyIEdvbWV6IEZ1ZW50ZQoKCsOTc2NhciBHw7NtZXogRnVlbnRl
CkVsZWN0cm9uaWMgRW5naW5lZXIgJiBEZWdyZWUgaW4gUGh5c2ljYWwgU2NpZW5jZXMKTW9iaWxl
OiA2NTkuMjguOTcuOTAKRW1haWw6IG9zY2FyZ29tZXpmQGdtYWlsLmNvbQpXZWJzaXRlOiB3d3cu
b3NjYXJnb21lemYuY29tCgoKCk9uIE1vbiwgMjAgTWF5IDIwMTkgYXQgMjE6MzksIFN2ZW4gVmFu
IEFzYnJvZWNrIDx0aGVzdmVuNzNAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgTWF5IDIw
LCAyMDE5IGF0IDI6MzUgUE0gU3ZlbiBWYW4gQXNicm9lY2sgPHRoZXN2ZW43M0BnbWFpbC5jb20+
IHdyb3RlOgo+ID4KPiA+IEhpIE9zY2FyLCB0aGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9u
ISBJIGhhdmUgYSBxdWVzdGlvbiwgc2VlIGlubGluZS4KPiA+Cj4gPiBPbiBGcmksIE1heSAxNywg
MjAxOSBhdCAxOjUwIFBNIE9zY2FyIEdvbWV6IEZ1ZW50ZQo+ID4gPG9zY2FyZ29tZXpmQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFRoZXNlIGNoYW5nZXMgc29sdmUgYSB3YXJuaW5nIHJl
YWxhdGVkIHRvIGFuIGluY29ycmVjdCB0eXBlIGluaWxpemVyIGluIHRoZSBmdW5jdGlvbgo+ID4g
PiBmaWVsZGJ1c19wb2xsLgo+ID4gPgo+Cj4gVGhpcyB3YXJuaW5nIHdhcyBnZW5lcmF0ZWQgYnkg
c3BhcnNlLCByaWdodD8KPgo+ICQgbWFrZSBDPTIgZHJpdmVycy9zdGFnaW5nL2ZpZWxkYnVzLwo+
IDxzbmlwPgo+ICAgQ0hFQ0sgICBkcml2ZXJzL3N0YWdpbmcvZmllbGRidXMvZGV2X2NvcmUuYwo+
IGRyaXZlcnMvc3RhZ2luZy9maWVsZGJ1cy9kZXZfY29yZS5jOjIzMjoyNzogd2FybmluZzogaW5j
b3JyZWN0IHR5cGUgaW4KPiBpbml0aWFsaXplciAoZGlmZmVyZW50IGJhc2UgdHlwZXMpCj4gZHJp
dmVycy9zdGFnaW5nL2ZpZWxkYnVzL2Rldl9jb3JlLmM6MjMyOjI3OiAgICBleHBlY3RlZCByZXN0
cmljdGVkCj4gX19wb2xsX3QgKCAqcG9sbCApKCAuLi4gKQo+IGRyaXZlcnMvc3RhZ2luZy9maWVs
ZGJ1cy9kZXZfY29yZS5jOjIzMjoyNzogICAgZ290IHVuc2lnbmVkIGludCAoCj4gKjxub2lkZW50
PiApKCAuLi4gKQo+IDxzbmlwPgo+Cj4gSSB3aWxsIHRlc3QgeW91ciBwYXRjaCBvbiBhY3R1YWwg
aC93LCBwcm9iYWJseSB0b21vcnJvdy4KPiBJIGRvbid0IGV4cGVjdCB0byBzZWUgYW55IHByb2Js
ZW1zLgo+Cj4gU3ZlbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
