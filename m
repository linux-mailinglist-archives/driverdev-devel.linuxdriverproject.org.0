Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9F9290409
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 13:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57E2E88A00;
	Fri, 16 Oct 2020 11:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4KTYvX1sG4p7; Fri, 16 Oct 2020 11:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB2D988C35;
	Fri, 16 Oct 2020 11:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7766C1BF30E
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 11:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 742EC88BF1
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 11:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ZjynucQlxAB for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 11:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com
 [209.85.221.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B787C88C37
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 11:31:09 +0000 (UTC)
Received: by mail-vk1-f195.google.com with SMTP id l23so553141vkm.1
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 04:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VfR2k3sQxdqJVPvkLHgRVDpnfd48L/sAbfIZJJQVUGU=;
 b=U3arh0PpNKrL1ViPiMAT0p2E0sl1OdJBhyvUHT4isXu6+XcRLSALuWaqK3qkJaGkEy
 t8bLEKQge3lIp5OeEMAmTMP3eHUZOfzzoYTvA+hKG5gzjJ6jBJwXNnuAODzY7/gqLhDg
 pprH6HvpZvmUmEi3fYOlqSuW8lbgPlNp2+o8TswEl5CIop61UyNKvxY/My5zTTEmkTL7
 wn7UUyyNWiq7oamyFJrfUF8XrsQme69ZI9KAaHUTjCnMWs6AcYLhu3MzDdEDy0r1G8ki
 SwesbK5trA8dGyyUxob6ItDYO0XA4TU9d9EUSvSHSmSxKVk3Jb3n/Z9s606yVsheLKJl
 +YBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VfR2k3sQxdqJVPvkLHgRVDpnfd48L/sAbfIZJJQVUGU=;
 b=AMEp0tck/2tSmVFCqQ+vXCoRWrTglpZRZwUJgZUSOz1AU1ByJJNqwKWkjVlqr8Tehd
 Vvld9Fz/p7QiKOOormo7yctR+mreKJQu57x4+ePBrFROC5w2qisFhKb0KISvm+Yau0Y/
 NyOdjkWHuSwaHrnqgB9XFMASfcwTy+5k1TdCtz0pyl5l47PT0I4c00LoFd73v/T7T+W9
 1LrnPbXBlGc11/lAWx8vWsDSxOz/VMYjJn38GKGjpNuSvVOR7Pm2D2qze1SWLjkSbwVG
 7fBaGakVVP58qQI2qPJi6x3OcMkR200WuDQg8tGszrUFH//J8VGb43+HKPpzapNp4BLC
 0nHg==
X-Gm-Message-State: AOAM531F1QD6dXq6QhfRc8xh11G4+r3DYB/ToyfpK+kVFlLT1FuH46MO
 /Qguo9M1TjIr38pdvTKxF+nGexp0eSuyaZN3O3Vjew==
X-Google-Smtp-Source: ABdhPJxYAVqNSgwSx1Eoge43VUADHeCK6li9b/4u8o1NT7/3wN77SDJYFQCZnpPpHiOo14iB/Ng7q8JPB3TjsN9qSbg=
X-Received: by 2002:a1f:ae85:: with SMTP id x127mr1798903vke.8.1602847868573; 
 Fri, 16 Oct 2020 04:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <20201012104648.985256-8-Jerome.Pouiller@silabs.com>
In-Reply-To: <20201012104648.985256-8-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 16 Oct 2020 13:30:30 +0200
Message-ID: <CAPDyKFpP6xBru79Xh2oe=J8HWO3uk1VpcMzEiG6X7WX-AOvgkA@mail.gmail.com>
Subject: Re: [PATCH 07/23] wfx: add bus_sdio.c
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
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAxMiBPY3QgMjAyMCBhdCAxMjo0NywgSmVyb21lIFBvdWlsbGVyCjxKZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+CgpQbGVhc2UgZmlsbCBvdXQgdGhpcyBjb21taXQgbWVz
c2FnZSB0byBleHBsYWluIGEgYml0IG1vcmUgYWJvdXQgdGhlCnBhdGNoIGFuZCB0aGUgSFcgaXQg
ZW5hYmxlcyBzdXBwb3J0IGZvci4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxl
ciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L3dpcmVs
ZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYyB8IDI2OSArKysrKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDI2OSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMgYi9kcml2ZXJzL25l
dC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IGluZGV4IDAwMDAwMDAwMDAwMC4uZTA2ZDdlMWViZTljCgpbLi4uXQoKPiArCj4gK3N0YXRpYyBp
bnQgd2Z4X3NkaW9faXJxX3N1YnNjcmliZSh2b2lkICpwcml2KQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzID0gcHJpdjsKPiArICAgICAgIHUzMiBmbGFnczsKPiArICAg
ICAgIGludCByZXQ7Cj4gKyAgICAgICB1OCBjY2NyOwo+ICsKCkkgd291bGQgYXBwcmVjaWF0ZSBh
IGNvbW1lbnQgYWJvdXQgYW4gb3V0LW9mLWJhbmQgSVJRIGxpbmUuIElmIGl0J3MKc3VwcG9ydGVk
LCB0aGF0IGlzIHRoZSBwcmVmZXJyZWQgb3B0aW9uIHRvIHVzZSwgZWxzZSB0aGUgU0RJTyBJUlFz
LgoKPiArICAgICAgIGlmICghYnVzLT5vZl9pcnEpIHsKPiArICAgICAgICAgICAgICAgc2Rpb19j
bGFpbV9ob3N0KGJ1cy0+ZnVuYyk7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IHNkaW9fY2xhaW1f
aXJxKGJ1cy0+ZnVuYywgd2Z4X3NkaW9faXJxX2hhbmRsZXIpOwo+ICsgICAgICAgICAgICAgICBz
ZGlvX3JlbGVhc2VfaG9zdChidXMtPmZ1bmMpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHNkaW9fY2xhaW1faG9zdChidXMtPmZ1bmMpOwo+
ICsgICAgICAgY2NjciA9IHNkaW9fZjBfcmVhZGIoYnVzLT5mdW5jLCBTRElPX0NDQ1JfSUVOeCwg
TlVMTCk7Cj4gKyAgICAgICBjY2NyIHw9IEJJVCgwKTsKPiArICAgICAgIGNjY3IgfD0gQklUKGJ1
cy0+ZnVuYy0+bnVtKTsKPiArICAgICAgIHNkaW9fZjBfd3JpdGViKGJ1cy0+ZnVuYywgY2Njciwg
U0RJT19DQ0NSX0lFTngsIE5VTEwpOwo+ICsgICAgICAgc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5m
dW5jKTsKPiArICAgICAgIGZsYWdzID0gaXJxX2dldF90cmlnZ2VyX3R5cGUoYnVzLT5vZl9pcnEp
Owo+ICsgICAgICAgaWYgKCFmbGFncykKPiArICAgICAgICAgICAgICAgZmxhZ3MgPSBJUlFGX1RS
SUdHRVJfSElHSDsKPiArICAgICAgIGZsYWdzIHw9IElSUUZfT05FU0hPVDsKPiArICAgICAgIHJl
dHVybiBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKCZidXMtPmZ1bmMtPmRldiwgYnVzLT5vZl9p
cnEsIE5VTEwsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3Znhf
c2Rpb19pcnFfaGFuZGxlcl9leHQsIGZsYWdzLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIndmeCIsIGJ1cyk7Cj4gK30KPiArCgpbLi4uXQoKPiArCj4gKyNkZWZp
bmUgU0RJT19WRU5ET1JfSURfU0lMQUJTICAgICAgICAweDAwMDAKPiArI2RlZmluZSBTRElPX0RF
VklDRV9JRF9TSUxBQlNfV0YyMDAgIDB4MTAwMAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHNkaW9f
ZGV2aWNlX2lkIHdmeF9zZGlvX2lkc1tdID0gewo+ICsgICAgICAgeyBTRElPX0RFVklDRShTRElP
X1ZFTkRPUl9JRF9TSUxBQlMsIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCkgfSwKPiArICAg
ICAgIC8vIEZJWE1FOiBpZ25vcmUgVklEL1BJRCBhbmQgb25seSByZWx5IG9uIGRldmljZSB0cmVl
Cj4gKyAgICAgICAvLyB7IFNESU9fREVWSUNFKFNESU9fQU5ZX0lELCBTRElPX0FOWV9JRCkgfSwK
PiArICAgICAgIHsgfSwKPiArfTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShzZGlvLCB3Znhfc2Rp
b19pZHMpOwoKSSB3aWxsIGNvbW1lbnQgYWJvdXQgdGhlIHNkaW8gSURzIHNlcGFyYXRlbHksIHJl
cGx5aW5nIHRvIHRoZSBvdGhlcgp0aHJlYWQgYmV0d2VlbiB5b3UgYW5kIFBhbGkuCgo+ICsKPiAr
c3RydWN0IHNkaW9fZHJpdmVyIHdmeF9zZGlvX2RyaXZlciA9IHsKPiArICAgICAgIC5uYW1lID0g
IndmeC1zZGlvIiwKPiArICAgICAgIC5pZF90YWJsZSA9IHdmeF9zZGlvX2lkcywKPiArICAgICAg
IC5wcm9iZSA9IHdmeF9zZGlvX3Byb2JlLAo+ICsgICAgICAgLnJlbW92ZSA9IHdmeF9zZGlvX3Jl
bW92ZSwKPiArICAgICAgIC5kcnYgPSB7Cj4gKyAgICAgICAgICAgICAgIC5vd25lciA9IFRISVNf
TU9EVUxFLAo+ICsgICAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSB3Znhfc2Rpb19vZl9t
YXRjaCwKPiArICAgICAgIH0KPiArfTsKCkkgY291bGRuJ3QgZmluZCB3aGVyZSB5b3UgY2FsbCBz
ZGlvX3JlZ2lzdGVyfHVucmVnaXN0ZXJfZHJpdmVyKCksIGJ1dAptYXliZSB0aGF0J3MgZG9uZSBm
cm9tIGFub3RoZXIgcGF0Y2ggaW4gc2VyaWVzPwoKS2luZCByZWdhcmRzClVmZmUKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
