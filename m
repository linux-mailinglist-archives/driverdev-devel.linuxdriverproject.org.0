Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B10441D73D
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Sep 2021 12:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4ABA4407AD;
	Thu, 30 Sep 2021 10:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSKroiZowZWU; Thu, 30 Sep 2021 10:08:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 143E740456;
	Thu, 30 Sep 2021 10:08:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CDC21BF94B
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 10:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07DBC40170
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 10:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ioBkwacegrc for <devel@linuxdriverproject.org>;
 Thu, 30 Sep 2021 10:08:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8173400DE
 for <devel@driverdev.osuosl.org>; Thu, 30 Sep 2021 10:08:33 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id z24so22911019lfu.13
 for <devel@driverdev.osuosl.org>; Thu, 30 Sep 2021 03:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mwTJIBSdS6R0C6OOzQhsYG/CA9Av8xCuOU1iydIZfq8=;
 b=ivZCT+RSpG5Lr3g/DnUUf9qNfJjNYEBDbk0sXckN3US/d3v73YYcN23q0gW1WEDlCF
 4QdzhSNaM0Lm9mjqyKiP/SvHhFGovDkoONIkjO6jEXsrqXkeuyGKcdG2dAh8vfVEmSRj
 nke3WD52VbQKrXvU5FjyYTgmtUKEHPvQpiBan+Leef4aA7HQdSVd7xVwJ67rmFFTYmIt
 zE+4gHgh7oa4RgNQvVReezvOaMgOIT+2CvBjbFAVrMr2Ej5UazkPfRl0orjBYUB0/MF5
 4C2cUNV52DHLyVT8sMkGmEiMl7PP1Efg+OV9kaU8DlpmA6RXnUJOzKC55Om6qfkezQHS
 mQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mwTJIBSdS6R0C6OOzQhsYG/CA9Av8xCuOU1iydIZfq8=;
 b=DuHn+Mko5Sk8+5FqH/yqwFdllmYivsbcFVL/HFApgk8wRaeGN/3TFjlE0MLqrmnCcf
 zVpTnuNoDXnOEp79notyrA9/AUjFLa5HyxD3UsDWgmvMKvHF0GP3ILkfaylvj86dDgWl
 4RjhnvSQrKjTqaO2mMKDDZ3Lu79EiNsXjWDb4kGKSOTpD9sLHnmJww1W0C+dGUInttJU
 yCBb7dDdvyyXHJ+HSncfzbIJEwvHYvXrvYtbtYIjkYf0QkjKuZWCRANw55BD4HK8ujPs
 jYk7LJ2vVDHxcZsS6vfV6FEmPyA0+Sia3guwIoT4YvzDGsaQjF95ZB22R2Z7SIBEOIeu
 vihQ==
X-Gm-Message-State: AOAM532YxPKCtMginA7WZWSdnhrUR8QhcWKXNvmggsFIKWQHydv2KiZ2
 O6l1KetTPP/0Q/TIit7MNJRA4ozGwgnnukUJ5oIR7w==
X-Google-Smtp-Source: ABdhPJxp5GhGqokFxVNBLzc5wAxYntlHon3eHPcHlnoTTXeNni+3NFATmwx155GBOUerq63XPBnIf991pZVt2hJfQIM=
X-Received: by 2002:a2e:898c:: with SMTP id c12mr5105509lji.16.1632996511275; 
 Thu, 30 Sep 2021 03:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-9-Jerome.Pouiller@silabs.com>
In-Reply-To: <20210920161136.2398632-9-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 30 Sep 2021 12:07:55 +0200
Message-ID: <CAPDyKFp2_41mScO=-Ev+kvYD5xjShQdLugU_2FTTmvzgCxmEWA@mail.gmail.com>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
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

T24gTW9uLCAyMCBTZXB0IDIwMjEgYXQgMTg6MTIsIEplcm9tZSBQb3VpbGxlcgo8SmVyb21lLlBv
dWlsbGVyQHNpbGFicy5jb20+IHdyb3RlOgo+Cj4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGpl
cm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+Cj4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91
aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC93
aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMgfCAyNjEgKysrKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyNjEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jIGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jCgpbLi4uXQoKPiArCj4gK3N0YXRp
YyBpbnQgd2Z4X3NkaW9fcHJvYmUoc3RydWN0IHNkaW9fZnVuYyAqZnVuYywKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCAqaWQpCj4gK3sKPiAr
ICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBmdW5jLT5kZXYub2Zfbm9kZTsKPiArICAg
ICAgIHN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXM7Cj4gKyAgICAgICBpbnQgcmV0Owo+ICsKPiAr
ICAgICAgIGlmIChmdW5jLT5udW0gIT0gMSkgewo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKCZm
dW5jLT5kZXYsICJTRElPIGZ1bmN0aW9uIG51bWJlciBpcyAlZCB3aGlsZSBpdCBzaG91bGQgYWx3
YXlzIGJlIDEgKHVuc3VwcG9ydGVkIGNoaXA/KVxuIiwKPiArICAgICAgICAgICAgICAgICAgICAg
ICBmdW5jLT5udW0pOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArICAgICAg
IH0KPiArCj4gKyAgICAgICBidXMgPSBkZXZtX2t6YWxsb2MoJmZ1bmMtPmRldiwgc2l6ZW9mKCpi
dXMpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghYnVzKQo+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOT01FTTsKPiArCj4gKyAgICAgICBpZiAoIW5wIHx8ICFvZl9tYXRjaF9ub2RlKHdm
eF9zZGlvX29mX21hdGNoLCBucCkpIHsKPiArICAgICAgICAgICAgICAgZGV2X3dhcm4oJmZ1bmMt
PmRldiwgIm5vIGNvbXBhdGlibGUgZGV2aWNlIGZvdW5kIGluIERUXG4iKTsKPiArICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgYnVzLT5mdW5j
ID0gZnVuYzsKPiArICAgICAgIGJ1cy0+b2ZfaXJxID0gaXJxX29mX3BhcnNlX2FuZF9tYXAobnAs
IDApOwo+ICsgICAgICAgc2Rpb19zZXRfZHJ2ZGF0YShmdW5jLCBidXMpOwo+ICsgICAgICAgZnVu
Yy0+Y2FyZC0+cXVpcmtzIHw9IE1NQ19RVUlSS19MRU5JRU5UX0ZOMCB8Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgTU1DX1FVSVJLX0JMS1NaX0ZPUl9CWVRFX01PREUgfAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIE1NQ19RVUlSS19CUk9LRU5fQllURV9NT0RFXzUxMjsK
Ckkgd291bGQgcmF0aGVyIHNlZSB0aGF0IHlvdSBhZGQgYW4gU0RJT19GSVhVUCBmb3IgdGhlIFNE
SU8gY2FyZCwgdG8KdGhlIHNkaW9fZml4dXBfbWV0aG9kc1tdLCBpbiBkcml2ZXJzL21tYy9jb3Jl
L3F1aXJrcy5oLCBpbnN0ZWFkIG9mCnRoaXMuCgo+ICsKPiArICAgICAgIHNkaW9fY2xhaW1faG9z
dChmdW5jKTsKPiArICAgICAgIHJldCA9IHNkaW9fZW5hYmxlX2Z1bmMoZnVuYyk7Cj4gKyAgICAg
ICAvKiBCbG9jayBvZiA2NCBieXRlcyBpcyBtb3JlIGVmZmljaWVudCB0aGFuIDUxMkIgZm9yIGZy
YW1lIHNpemVzIDwgNGsgKi8KPiArICAgICAgIHNkaW9fc2V0X2Jsb2NrX3NpemUoZnVuYywgNjQp
Owo+ICsgICAgICAgc2Rpb19yZWxlYXNlX2hvc3QoZnVuYyk7Cj4gKyAgICAgICBpZiAocmV0KQo+
ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsKPiArICAgICAgIGJ1cy0+Y29yZSA9IHdm
eF9pbml0X2NvbW1vbigmZnVuYy0+ZGV2LCAmd2Z4X3NkaW9fcGRhdGEsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgJndmeF9zZGlvX2h3YnVzX29wcywgYnVzKTsKPiArICAg
ICAgIGlmICghYnVzLT5jb3JlKSB7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IC1FSU87Cj4gKyAg
ICAgICAgICAgICAgIGdvdG8gc2Rpb19yZWxlYXNlOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAg
IHJldCA9IHdmeF9wcm9iZShidXMtPmNvcmUpOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAg
ICAgICAgICAgZ290byBzZGlvX3JlbGVhc2U7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gKwo+
ICtzZGlvX3JlbGVhc2U6Cj4gKyAgICAgICBzZGlvX2NsYWltX2hvc3QoZnVuYyk7Cj4gKyAgICAg
ICBzZGlvX2Rpc2FibGVfZnVuYyhmdW5jKTsKPiArICAgICAgIHNkaW9fcmVsZWFzZV9ob3N0KGZ1
bmMpOwo+ICsgICAgICAgcmV0dXJuIHJldDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgd2Z4X3Nk
aW9fcmVtb3ZlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpCj4gK3sKPiArICAgICAgIHN0cnVjdCB3
Znhfc2Rpb19wcml2ICpidXMgPSBzZGlvX2dldF9kcnZkYXRhKGZ1bmMpOwo+ICsKPiArICAgICAg
IHdmeF9yZWxlYXNlKGJ1cy0+Y29yZSk7Cj4gKyAgICAgICBzZGlvX2NsYWltX2hvc3QoZnVuYyk7
Cj4gKyAgICAgICBzZGlvX2Rpc2FibGVfZnVuYyhmdW5jKTsKPiArICAgICAgIHNkaW9fcmVsZWFz
ZV9ob3N0KGZ1bmMpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHNkaW9fZGV2aWNl
X2lkIHdmeF9zZGlvX2lkc1tdID0gewo+ICsgICAgICAgeyBTRElPX0RFVklDRShTRElPX1ZFTkRP
Ul9JRF9TSUxBQlMsIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCkgfSwKPiArICAgICAgIHsg
fSwKPiArfTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShzZGlvLCB3Znhfc2Rpb19pZHMpOwo+ICsK
PiArc3RydWN0IHNkaW9fZHJpdmVyIHdmeF9zZGlvX2RyaXZlciA9IHsKPiArICAgICAgIC5uYW1l
ID0gIndmeC1zZGlvIiwKPiArICAgICAgIC5pZF90YWJsZSA9IHdmeF9zZGlvX2lkcywKPiArICAg
ICAgIC5wcm9iZSA9IHdmeF9zZGlvX3Byb2JlLAo+ICsgICAgICAgLnJlbW92ZSA9IHdmeF9zZGlv
X3JlbW92ZSwKPiArICAgICAgIC5kcnYgPSB7Cj4gKyAgICAgICAgICAgICAgIC5vd25lciA9IFRI
SVNfTU9EVUxFLAo+ICsgICAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSB3Znhfc2Rpb19v
Zl9tYXRjaCwKCklzIHRoZXJlIG5vIHBvd2VyIG1hbmFnZW1lbnQ/IE9yIGRvIHlvdSBpbnRlbmQg
dG8gYWRkIHRoYXQgb24gdG9wPwoKPiArICAgICAgIH0KPiArfTsKPiAtLQo+IDIuMzMuMAo+CgpL
aW5kIHJlZ2FyZHMKVWZmZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
