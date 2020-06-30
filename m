Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB8C20ECC0
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 06:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E381388221;
	Tue, 30 Jun 2020 04:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZUghRW7WQCtd; Tue, 30 Jun 2020 04:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C157881DC;
	Tue, 30 Jun 2020 04:42:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A51991BF304
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 04:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1CDC855B5
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 04:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FT2d8JQdN8Xu for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 04:41:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A71F85593
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 04:41:57 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id x8so7075295plm.10
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 21:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/4EbjWc3OcYBVYlmz6RH6shyF/Bf9W7LIE0MBGcrCAc=;
 b=MzAXhvAodARvduNMO3wJCALgHXwOz8vGXAsrWe4j14bZ2ULzrL+S2QmffOpsHzIEMT
 tn1fyGE5N5lupBTHUVdykDNyFMkcRe4H+JGWXpvAR3qmt7ZMHSrTbn20zTmBrBKkD1Nx
 PuYFnAKh6fq3w0QOex6KtrSpnSYyVda1XZ6lZQ7ez2K3zQW5lrq6QgDdeDtp0cs6xXUl
 /Sgrg9Txp5ac4SGiCK5HeMR3qLjs7+GeoMqsk5aZ6bAlCAGEzHY92STFFdZ77DJ7FG/w
 c1IuS2qkKnZITN74FmVqu3ooHjdQStSUwqqEpODEWSSRp/U5+mM7ksTtPGGxwKLrsf+M
 POKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/4EbjWc3OcYBVYlmz6RH6shyF/Bf9W7LIE0MBGcrCAc=;
 b=HidN9+DBohqHYsx6P9jot5vqNtXKbbORpbp729ugdvfMlSnQvmKfW+jo6WzHqHvu36
 oIca4uP258WnnhZ+yb+fnATt787wbiOfwcx3TxgpSXpP2LD24OftkgCHxq0hWjApMqS2
 9TzbQ78b1a/4hY80zo/UqYDk7wR+OR4wYwSN7AcCy9bDMRO7AKx4Pkg4tEzmHEb+KEhT
 K/1SCru/Ll/t4mTXKAxjme/eZlO1RBPjg883OZxZn954mtQ4JbJJm4utvr6S5OgZEg+/
 Ya/zyuvI5tkML5V4+L2FDjty1S/QdyIaLDNitBXAgLKbJ9e2E2DI4Q8VowlMKpagv+rZ
 mpWw==
X-Gm-Message-State: AOAM532ofZnwSs6lRl3CpqROhc2DtHkcokO5cyKDWs5BlNBLi2tXCNl4
 DYEZY5xWZJ7hMOIroIp44vo=
X-Google-Smtp-Source: ABdhPJzKSASVm1LZHs45CVwtA2XbE2R50KOnbmEaHjY91c/pCVPXpQnXpGKdEO4YpUBb/wyvVFxfoA==
X-Received: by 2002:a17:90a:ac05:: with SMTP id
 o5mr21099604pjq.228.1593492116510; 
 Mon, 29 Jun 2020 21:41:56 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id nv9sm929621pjb.6.2020.06.29.21.41.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 21:41:55 -0700 (PDT)
Date: Tue, 30 Jun 2020 13:41:51 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v2 4/4] staging: qlge: replace pr_err with netdev_err
Message-ID: <20200630044151.GA125790@f3>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
 <20200627145857.15926-5-coiby.xu@gmail.com>
 <20200629053004.GA6165@f3> <20200629174352.euw4lckze2k7xtbm@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629174352.euw4lckze2k7xtbm@Rk>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 gregkh@linuxfoundation.org, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAyMC0wNi0zMCAwMTo0MyArMDgwMCwgQ29pYnkgWHUgd3JvdGU6Cj4gT24gTW9uLCBKdW4g
MjksIDIwMjAgYXQgMDI6MzA6MDRQTSArMDkwMCwgQmVuamFtaW4gUG9pcmllciB3cm90ZToKPiA+
IE9uIDIwMjAtMDYtMjcgMjI6NTggKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+ID4gWy4uLl0KPiA+
ID4gIHZvaWQgcWxfZHVtcF9xZGV2KHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2KQo+ID4gPiAgewo+
ID4gPiBAQCAtMTYxMSw5OSArMTYxOCwxMDAgQEAgdm9pZCBxbF9kdW1wX3FkZXYoc3RydWN0IHFs
X2FkYXB0ZXIgKnFkZXYpCj4gPiA+ICAjaWZkZWYgUUxfQ0JfRFVNUAo+ID4gPiAgdm9pZCBxbF9k
dW1wX3dxaWNiKHN0cnVjdCB3cWljYiAqd3FpY2IpCj4gPiA+ICB7Cj4gPiA+IC0JcHJfZXJyKCJE
dW1waW5nIHdxaWNiIHN0dWZmLi4uXG4iKTsKPiA+ID4gLQlwcl9lcnIoIndxaWNiLT5sZW4gPSAw
eCV4XG4iLCBsZTE2X3RvX2NwdSh3cWljYi0+bGVuKSk7Cj4gPiA+IC0JcHJfZXJyKCJ3cWljYi0+
ZmxhZ3MgPSAleFxuIiwgbGUxNl90b19jcHUod3FpY2ItPmZsYWdzKSk7Cj4gPiA+IC0JcHJfZXJy
KCJ3cWljYi0+Y3FfaWRfcnNzID0gJWRcbiIsCj4gPiA+IC0JICAgICAgIGxlMTZfdG9fY3B1KHdx
aWNiLT5jcV9pZF9yc3MpKTsKPiA+ID4gLQlwcl9lcnIoIndxaWNiLT5yaWQgPSAweCV4XG4iLCBs
ZTE2X3RvX2NwdSh3cWljYi0+cmlkKSk7Cj4gPiA+IC0JcHJfZXJyKCJ3cWljYi0+d3FfYWRkciA9
IDB4JWxseFxuIiwKPiA+ID4gLQkgICAgICAgKHVuc2lnbmVkIGxvbmcgbG9uZylsZTY0X3RvX2Nw
dSh3cWljYi0+YWRkcikpOwo+ID4gPiAtCXByX2Vycigid3FpY2ItPndxX2Nuc21yX2lkeF9hZGRy
ID0gMHglbGx4XG4iLAo+ID4gPiAtCSAgICAgICAodW5zaWduZWQgbG9uZyBsb25nKWxlNjRfdG9f
Y3B1KHdxaWNiLT5jbnNtcl9pZHhfYWRkcikpOwo+ID4gPiArCW5ldGRldl9lcnIocWRldi0+bmRl
diwgIkR1bXBpbmcgd3FpY2Igc3R1ZmYuLi5cbiIpOwo+ID4gCj4gPiBkcml2ZXJzL3N0YWdpbmcv
cWxnZS9xbGdlX2RiZy5jOjE2MjE6MTM6IGVycm9yOiDigJhxZGV24oCZIHVuZGVjbGFyZWQgKGZp
cnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmGNkZXbigJk/Cj4gPiAx
NjIxIHwgIG5ldGRldl9lcnIocWRldi0+bmRldiwgIkR1bXBpbmcgd3FpY2Igc3R1ZmYuLi5cbiIp
Owo+ID4gICAgICB8ICAgICAgICAgICAgIF5+fn4KPiA+ICAgICAgfCAgICAgICAgICAgICBjZGV2
Cj4gPiAKPiA+IFsuLi5dCj4gPiBhbmQgbWFueSBtb3JlIGxpa2UgdGhhdAo+ID4gCj4gPiBBbnl3
YXlzLCBxbGdlX2RiZy5oIGlzIGEgZHVtcHN0ZXIuIEl0IGhhcyBodW5kcmVkcyBvZiBsaW5lcyBv
ZiBjb2RlCj4gPiBiaXRyb3R0aW5nIGF3YXkgaW4gaWZkZWYgbGFuZC4gU2VlIHRoaXMgY29tbWVu
dCBmcm9tIERhdmlkIE1pbGxlciBvbiB0aGUKPiA+IHRvcGljIG9mIGlmZGVmJ2VkIGRlYnVnZ2lu
ZyBjb2RlOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjAwMzAzLjE0NTkx
Ni4xNTA2MDY2NTEwOTI4MDIwMTkzLmRhdmVtQGRhdmVtbG9mdC5uZXQvCj4gCj4gVGhhbmsgeW91
IGZvciBzcG90dGluZyB0aGlzIHByb2JsZW0hIFRoaXMgaXNzdWUgY291bGQgYmUgZml4ZWQgYnkK
PiBwYXNzaW5nIHFkZXYgdG8gcWxfZHVtcF93cWljYi4gT3IgYXJlIHlvdSBzdWdnZXN0aW5nIHdl
IGNvbXBsZXRlbHkKPiByZW1vdmUgcWxnZV9kYmcgc2luY2UgaXQncyBvbmx5IGZvciB0aGUgcHVy
cG9zZSBvZiBkZWJ1Z2dpbmcgdGhlIGRyaXZlcgo+IGJ5IHRoZSBkZXZlbG9wZXI/CgpBdCAyMDAw
IGxpbmVzLCBxbGdlX2RiZy5jIGFsb25lIGlzIGxhcmdlciB0aGFuIHNvbWUgZW50aXJlIGV0aGVy
bmV0CmRyaXZlcnMuIE1vc3Qgb2Ygd2hhdCBpdCBkb2VzIGlzIGR1bXAga2VybmVsIGRhdGEgc3Ry
dWN0dXJlcyBvciBwY2kKbWVtb3J5IG1hcHBlZCByZWdpc3RlcnMgdG8gZG1lc2cuIFRoZXJlIGFy
ZSBiZXR0ZXIgZmFjaWxpdGllcyBmb3IgdGhhdC4KTXkgdGhpbmtpbmcgaXMgbm90IHNpbXBseSB0
byBkZWxldGUgcWxnZV9kYmcuYyBidXQgdG8gcmVwbGFjZSBpdCwgbWFraW5nCnN1cmUgdGhhdCBt
b3N0IG9mIHRoZSBzYW1lIGluZm9ybWF0aW9uIGlzIHN0aWxsIGF2YWlsYWJsZS4gRm9yIGRhdGEK
c3RydWN0dXJlcywgY3Jhc2ggb3IgZHJnbiBjYW4gYmUgdXNlZDsgcG9zc2libHkgd2l0aCBhIHNj
cmlwdCBmb3IgdGhlCmxhdHRlciB3aGljaCBmb3JtYXRzIHRoZSBkYXRhLiBGb3IgcGNpIHJlZ2lz
dGVycywgdGhleSBzaG91bGQgYmUKaW5jbHVkZWQgaW4gdGhlIGV0aHRvb2wgcmVnaXN0ZXIgZHVt
cCBhbmQgYSBwYXRjaCBhZGRlZCB0byBldGh0b29sIHRvCnByZXR0eSBwcmludCB0aGVtLiBUaGF0
J3Mgd2hhdCBvdGhlciBkcml2ZXJzIGxpa2UgZTEwMDBlIGRvLiBGb3IgdGhlCiJjb3JlZHVtcCIs
IGRldmxpbmsgaGVhbHRoIGNhbiBiZSB1c2VkLgoKVGhlIHFsZ2VfZm9yY2VfY29yZWR1bXAgbW9k
dWxlIG9wdGlvbiBzaG91bGQgYWxzbyBiZSByZW1vdmVkLiBBdCB0aGUKbW9tZW50LCBjYWxsaW5n
IHRoZSBldGh0b29sIHJlZ2lzdGVyIGR1bXAgZnVuY3Rpb24gd2l0aCB0aGF0IG9wdGlvbgplbmFi
bGVkIGRvZXMgYSBoZXhkdW1wIG9mIGEgMTc2ayBzdHJ1Y3QgdG8gZG1lc2cuIFRoYXQncyBzaGFt
ZWZ1bC4KCj4gCj4gQnR3LCBJJ20gY3VyaW91cyBob3cgeW91IG1ha2UgdGhpcyBjb21waWxpbmcg
ZXJyb3Igb2NjdXIuIERvIHlvdSBtYW51YWxseSB0cmlnZ2VyCj4gaXQgdmlhICJRTF9DQl9EVU1Q
PTEgbWFrZSBNPWRyaXZlcnMvc3RhZ2luZy9xbGdlIiBvciB1c2Ugc29tZSBhdXRvbWF0ZQo+IHRv
b2xzPwoKSSBqdXN0IHVuY29tbWVudGVkIHRoZSBkZWZpbmVzIGluIHFsZ2UuaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
