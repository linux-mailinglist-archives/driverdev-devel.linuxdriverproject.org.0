Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2020148D727
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jan 2022 13:08:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBAEB409F3;
	Thu, 13 Jan 2022 12:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0v5R4QR750b; Thu, 13 Jan 2022 12:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 373C740124;
	Thu, 13 Jan 2022 12:08:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4311BF57B
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 12:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29246415CA
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 12:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oiYGQO8FYYHz for <devel@linuxdriverproject.org>;
 Thu, 13 Jan 2022 12:07:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5022415B7
 for <devel@driverdev.osuosl.org>; Thu, 13 Jan 2022 12:07:46 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id x7so18665199lfu.8
 for <devel@driverdev.osuosl.org>; Thu, 13 Jan 2022 04:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yAP1FMAcpDzFu2Al3uF90uC2rPxA7nQ6In3o8LmKt5s=;
 b=qpmGhEHzag2mgXSZKa5TAnx3QaK1NbGnAER0oaVqrs4235lfxcPYEu6RkZZSJCOoPv
 fPoBNLE1aUJ9aRcwT7ubxdZ7LLxN9JWAOCAia51t3hCZHXDctKsSq3DKxK4DrIxUroFK
 tjjKbu+vV2oHJuYMHZGk5ky3D5wThluYs7C+51WPc9XiU8XOBH+0iAYGryx20S8qu6Ku
 fy1xI80rk8VYsjWTdipBraXmPvbtN/ESxHap5ICZG+ZMzrtbCQMbgG+QXs2kT1r39Cm2
 eHBQPtVFcE/nACv6lSC5hfV2IXGd7VAmKmLMtwIVSX/nhteT4iwRZNtmmqVQGnlKqNfn
 7oPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yAP1FMAcpDzFu2Al3uF90uC2rPxA7nQ6In3o8LmKt5s=;
 b=f/n1k75HX4O2r9UNGiy53S5oXgjBKVR6oM8Jh79PmHVth0RTx2NmYMGfb/3JeMIplx
 piuWoWgeYMNb9JZ0GV3NlcaUwXHIfMIj+Qwlr84838pZldAeM2gI2AMnWh+P6OmbB4eB
 FnzqBw6kM+gS/A78d3XJGPbpqHcv8UXG4cjMrCWsw7Hbf7ypdQ6yTVDDcDzF2eFIzLxT
 qBxJZvUrk/AxT+mO72DwkauYEk3bRWgXMJ2dDA/VcQ+xf/vb7Kktt/2ag5EWqxq/+Kij
 Zj8b9V8XR6CndoLTs4OLAvJSrhqQfG/XjsJCwdpYI4HjNtECf45+DuOts11uP7Ufi7dQ
 GZ8A==
X-Gm-Message-State: AOAM530CUktcaPhzrQWvXcRVeGcxFnDgmKCgNNhmbG0f6IDnIV8sTyuD
 VmVn+UnroydpWDsJLT2vk1U4Nah2LDo3OFElayvUIQ==
X-Google-Smtp-Source: ABdhPJzxAe/t75YtFir2L4jJA4G2mrPispiMgqp0nFdc982lOD9tckYYL9T6XUM9QO4bDrmKBqAue0W3sTdc9U0ygKE=
X-Received: by 2002:a05:6512:20ca:: with SMTP id
 u10mr3035788lfr.71.1642075664297; 
 Thu, 13 Jan 2022 04:07:44 -0800 (PST)
MIME-Version: 1.0
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <2680707.qJCEgCfB62@pc-42> <20220112174848.db5osolurllpc7du@pali>
 <1655654.vHqhSpDN13@pc-42>
In-Reply-To: <1655654.vHqhSpDN13@pc-42>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 13 Jan 2022 13:07:06 +0100
Message-ID: <CAPDyKFpP-Ta=wUuOE1m4wqsoKACV564nhJ=c2OeL0H5LjG2yrg@mail.gmail.com>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
To: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAxMiBKYW4gMjAyMiBhdCAxOToyNCwgSsOpcsO0bWUgUG91aWxsZXIKPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPiB3cm90ZToKPgo+IE9uIFdlZG5lc2RheSAxMiBKYW51YXJ5IDIw
MjIgMTg6NDg6NDggQ0VUIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gQ0FVVElPTjogVGhpcyBlbWFp
bCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBvZiB0aGUgb3JnYW5pemF0aW9uLiBEbyBub3QgY2xp
Y2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2Vu
ZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuCj4gPgo+ID4KPiA+IE9uIFdlZG5lc2Rh
eSAxMiBKYW51YXJ5IDIwMjIgMTc6NDU6NDUgSsOpcsO0bWUgUG91aWxsZXIgd3JvdGU6Cj4gPiA+
IE9uIFdlZG5lc2RheSAxMiBKYW51YXJ5IDIwMjIgMTI6NDM6MzIgQ0VUIFBhbGkgUm9ow6FyIHdy
b3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gV2VkbmVzZGF5IDEyIEphbnVhcnkgMjAyMiAxMjoxODo1
OCBKw6lyw7RtZSBQb3VpbGxlciB3cm90ZToKPiA+ID4gPiA+IE9uIFdlZG5lc2RheSAxMiBKYW51
YXJ5IDIwMjIgMTE6NTg6NTkgQ0VUIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBU
dWVzZGF5IDExIEphbnVhcnkgMjAyMiAxODoxNDowOCBKZXJvbWUgUG91aWxsZXIgd3JvdGU6Cj4g
PiA+ID4gPiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgd2Z4X3NkaW9f
aWRzW10gPSB7Cj4gPiA+ID4gPiA+ID4gKyAgICAgeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9J
RF9TSUxBQlMsIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCkgfSwKPiA+ID4gPiA+ID4gPiAr
ICAgICB7IH0sCj4gPiA+ID4gPiA+ID4gK307Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEhlbGxv
ISBJcyB0aGlzIHRhYmxlIHN0aWxsIHJlcXVpcmVkPwo+ID4gPiA+ID4KPiA+ID4gPiA+IEFzIGZh
ciBhcyBJIHVuZGVyc3RhbmQsIGlmIHRoZSBkcml2ZXIgZG9lcyBub3QgcHJvdmlkZSBhbiBpZF90
YWJsZSwgdGhlCj4gPiA+ID4gPiBwcm9iZSBmdW5jdGlvbiB3b24ndCBiZSBuZXZlciBjYWxsZWQg
KHNlZSBzZGlvX21hdGNoX2RldmljZSgpKS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBTaW5jZSwgd2Ug
cmVseSBvbiB0aGUgZGV2aWNlIHRyZWUsIHdlIGNvdWxkIHJlcGxhY2UgU0RJT19WRU5ET1JfSURf
U0lMQUJTCj4gPiA+ID4gPiBhbmQgU0RJT19ERVZJQ0VfSURfU0lMQUJTX1dGMjAwIGJ5IFNESU9f
QU5ZX0lELiBIb3dldmVyLCBpdCBkb2VzIG5vdCBodXJ0Cj4gPiA+ID4gPiB0byBhZGQgYW4gZXh0
cmEgZmlsdGVyIGhlcmUuCj4gPiA+ID4KPiA+ID4gPiBOb3cgd2hlbiB0aGlzIHBhcnRpY3VsYXIg
aWQgaXMgbm90IHJlcXVpcmVkLCBJJ20gdGhpbmtpbmcgaWYgaXQgaXMgc3RpbGwKPiA+ID4gPiBy
ZXF1aXJlZCBhbmQgaXQgaXMgYSBnb29kIGlkZWEgdG8gZGVmaW5lIHRoZXNlIFNESU9fVkVORE9S
X0lEX1NJTEFCUwo+ID4gPiA+IG1hY3JvcyBpbnRvIGtlcm5lbCBpbmNsdWRlIGZpbGVzLiBBcyBp
dCB3b3VsZCBtZWFuIHRoYXQgb3RoZXIgYnJva2VuCj4gPiA+ID4gU0RJTyBkZXZpY2VzIGNvdWxk
IGRlZmluZSB0aGVzZSBib2d1cyBudW1iZXJzIHRvby4uLiBBbmQgaGF2aW5nIHRoZW0gaW4KPiA+
ID4gPiBjb21tb24ga2VybmVsIGluY2x1ZGVzIGZpbGVzIGNhbiBjYXVzZSBpc3N1ZXMuLi4gZS5n
LiBvdGhlciBkZXZlbG9wZXJzCj4gPiA+ID4gY291bGQgdGhpbmsgdGhhdCBpdCBpcyBjb3JyZWN0
IHRvIHVzZSB0aGVtIGFzIHRoZXkgYXJlIGRlZmluZWQgaW4gY29tbW9uCj4gPiA+ID4gaGVhZGVy
IGZpbGVzLiBCdXQgYXMgdGhlc2UgbnVtYmVycyBhcmUgbm90IHJlbGlhYmxlIChvdGhlciBicm9r
ZW4gY2FyZHMKPiA+ID4gPiBtYXkgaGF2ZSBzYW1lIGlkcyBhcyB3ZjIwMCkgYW5kIHRoZWlyIHVz
YWdlIG1heSBjYXVzZSBpc3N1ZXMgaW4gZnV0dXJlLgo+ID4gPgo+ID4gPiBJbiBvcmRlciB0byBt
YWtlIFNESU9fVkVORE9SX0lEX1NJTEFCUyBsZXNzIG9mZmljaWFsLCBkbyB5b3UgcHJlZmVyIHRv
Cj4gPiA+IGRlZmluZSBpdCBpbiB3ZngvYnVzX3NkaW8uYyBpbnN0ZWFkIG9mIG1tYy9zZGlvX2lk
cy5oPwo+ID4gPgo+ID4gPiBPciBldmVuIG5vdCBkZWZpbmVkIGF0IGFsbCBsaWtlOgo+ID4gPgo+
ID4gPiAgICAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rpb19pZHNb
XSA9IHsKPiA+ID4gICAgICAgICAgLyogV0YyMDAgZG9lcyBub3QgaGF2ZSBvZmZpY2lhbCBWSUQv
UElEICovCj4gPiA+ICAgICAgICAgIHsgU0RJT19ERVZJQ0UoMHgwMDAwLCAweDEwMDApIH0sCj4g
PiA+ICAgICAgICAgIHsgfSwKPiA+ID4gICAgIH07Cj4gPgo+ID4gVGhpcyBoYXMgYWR2YW50YWdl
IHRoYXQgaXQgaXMgZXhwbGljaXRseSB2aXNpYmxlIHRoYXQgdGhpcyBkZXZpY2UgZG9lcwo+ID4g
bm90IHVzZSBhbnkgb2ZmaWNpYWxseSBhc3NpZ25lZCBpZHMuCj4KPiBVbGYsIGFyZSB5b3UgYWxz
byBhZ3JlZT8KClN1cmUsIHRoYXQgd29ya3MgZm9yIG1lIHRvby4KCktpbmQgcmVnYXJkcwpVZmZl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
