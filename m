Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 902E241F15A
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 17:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1B43614E4;
	Fri,  1 Oct 2021 15:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t31n73lSDcNq; Fri,  1 Oct 2021 15:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EEC4614F1;
	Fri,  1 Oct 2021 15:38:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4375C1BF41E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 15:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3215940712
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 15:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0nMQDurygSUi for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 15:38:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11BF34052A
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 15:38:16 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id m3so39842748lfu.2
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 08:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6A5eWZRYPq2y4phPK9+CWlezfURq0tv1a8DQf5ALkTk=;
 b=O+MJpMdT+wGtP+L8d5YpDRq5uey0ctUtAD658N0P3a/rrf3cCwvjwKblyMc8BrpLKc
 ZtlilAwX54jLce3m+AuzyBKpoBiblrSQtGPUanvdP+L3p/yGQp2/fR9Ras2oofTNACFE
 5klqHeXe3dXV/7bw9GItNLb6s54DmQnNtkZlsTQysNE9BID/KXYNZNjL+YVGN90n6A/j
 FVURrF/pCISPIYCn96pzNv/xglnMhTOvKtNak3d15JjtBnYG3QIHaPmm5C5qHkpQ3LKc
 dzaMpVaomTHMZBGbLM+1e5i7ZOzCSZ4xbY40bR+E5g5Fa1Kg+GMFgpzCVZ4oX0Ahic0v
 9p1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6A5eWZRYPq2y4phPK9+CWlezfURq0tv1a8DQf5ALkTk=;
 b=xKGKlANueZqPzRUQAqS78pI7LLxa7lBk6SI3jKVE1NCBXnGPtr85kS0u8EGrEPMBGf
 a98dnYNqjAF6STLwKgwPmxkmhzI3CwEVrE71399s9Mtq9VPgmvidGi07SvBFImfa+l60
 z8d3fVFZmhHxtUDmg7p4/4l8rON0THFzsYehiU4EI0fe7HmCpx4hTh1ZG3IoKsynwXcI
 NZs/FULsDjm26ksySUPWo8AvHBz/oonxdYsw6vNQc3m8OYSn9vgtvvoswIOAIFYSORIV
 BOqNFJ5hBeL7s5yN2F1PIusZPJspLqIDT4p07JyVfOkbN2QFvrvV8bL9JrGf9Tf6Stqy
 erOw==
X-Gm-Message-State: AOAM532hfjb3tZ4tP9mdDYNZkb75kurKaRLgpQ1kr8PtE9DVR6X//f5x
 cHFswji2lF3bjzyRMz7j8BjFYT3dPSFWGlyUKYMmRA==
X-Google-Smtp-Source: ABdhPJwoZz8ZbUHqp0gwTDx94pmhbFjVKS3zXTpbCPNRVrdBj9Exo6x5JROj2k8NVSQkldadAtO8LBiB11Huutsiuto=
X-Received: by 2002:a05:651c:213:: with SMTP id
 y19mr12199656ljn.273.1633102694548; 
 Fri, 01 Oct 2021 08:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-9-Jerome.Pouiller@silabs.com>
 <CAPDyKFp2_41mScO=-Ev+kvYD5xjShQdLugU_2FTTmvzgCxmEWA@mail.gmail.com>
 <19731906.ZuIkq4dnIL@pc-42>
In-Reply-To: <19731906.ZuIkq4dnIL@pc-42>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 1 Oct 2021 17:37:38 +0200
Message-ID: <CAPDyKFpbZypaLVmE2J+rGzAXgdWp1koD8pRxBKo3kFK3NDTFWw@mail.gmail.com>
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

T24gVGh1LCAzMCBTZXB0IDIwMjEgYXQgMTg6NTEsIErDqXLDtG1lIFBvdWlsbGVyCjxqZXJvbWUu
cG91aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBVbGYsCj4KPiBPbiBUaHVyc2Rh
eSAzMCBTZXB0ZW1iZXIgMjAyMSAxMjowNzo1NSBDRVNUIFVsZiBIYW5zc29uIHdyb3RlOgo+ID4g
T24gTW9uLCAyMCBTZXB0IDIwMjEgYXQgMTg6MTIsIEplcm9tZSBQb3VpbGxlcgo+ID4gPEplcm9t
ZS5Qb3VpbGxlckBzaWxhYnMuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gRnJvbTogSsOpcsO0bWUg
UG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+ID4gPgo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4g
PiA+IC0tLQo+ID4gPiAgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5j
IHwgMjYxICsrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDI2MSBp
bnNlcnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxl
c3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMgYi9kcml2ZXJzL25ldC93aXJlbGVz
cy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKPiA+Cj4gPiBbLi4uXQo+ID4KPiA+ID4gKwo+ID4gPiAr
c3RhdGljIGludCB3Znhfc2Rpb19wcm9iZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jLAo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCAqaWQp
Cj4gPiA+ICt7Cj4gPiA+ICsgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpucCA9IGZ1bmMtPmRl
di5vZl9ub2RlOwo+ID4gPiArICAgICAgIHN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXM7Cj4gPiA+
ICsgICAgICAgaW50IHJldDsKPiA+ID4gKwo+ID4gPiArICAgICAgIGlmIChmdW5jLT5udW0gIT0g
MSkgewo+ID4gPiArICAgICAgICAgICAgICAgZGV2X2VycigmZnVuYy0+ZGV2LCAiU0RJTyBmdW5j
dGlvbiBudW1iZXIgaXMgJWQgd2hpbGUgaXQgc2hvdWxkIGFsd2F5cyBiZSAxICh1bnN1cHBvcnRl
ZCBjaGlwPylcbiIsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGZ1bmMtPm51bSk7Cj4g
PiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+ID4gKyAgICAgICB9Cj4gPiA+
ICsKPiA+ID4gKyAgICAgICBidXMgPSBkZXZtX2t6YWxsb2MoJmZ1bmMtPmRldiwgc2l6ZW9mKCpi
dXMpLCBHRlBfS0VSTkVMKTsKPiA+ID4gKyAgICAgICBpZiAoIWJ1cykKPiA+ID4gKyAgICAgICAg
ICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gPiArCj4gPiA+ICsgICAgICAgaWYgKCFucCB8fCAh
b2ZfbWF0Y2hfbm9kZSh3Znhfc2Rpb19vZl9tYXRjaCwgbnApKSB7Cj4gPiA+ICsgICAgICAgICAg
ICAgICBkZXZfd2FybigmZnVuYy0+ZGV2LCAibm8gY29tcGF0aWJsZSBkZXZpY2UgZm91bmQgaW4g
RFRcbiIpOwo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPiA+ICsgICAg
ICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgYnVzLT5mdW5jID0gZnVuYzsKPiA+ID4gKyAgICAg
ICBidXMtPm9mX2lycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5wLCAwKTsKPiA+ID4gKyAgICAg
ICBzZGlvX3NldF9kcnZkYXRhKGZ1bmMsIGJ1cyk7Cj4gPiA+ICsgICAgICAgZnVuYy0+Y2FyZC0+
cXVpcmtzIHw9IE1NQ19RVUlSS19MRU5JRU5UX0ZOMCB8Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIE1NQ19RVUlSS19CTEtTWl9GT1JfQllURV9NT0RFIHwKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgTU1DX1FVSVJLX0JST0tFTl9CWVRFX01PREVfNTEyOwo+
ID4KPiA+IEkgd291bGQgcmF0aGVyIHNlZSB0aGF0IHlvdSBhZGQgYW4gU0RJT19GSVhVUCBmb3Ig
dGhlIFNESU8gY2FyZCwgdG8KPiA+IHRoZSBzZGlvX2ZpeHVwX21ldGhvZHNbXSwgaW4gZHJpdmVy
cy9tbWMvY29yZS9xdWlya3MuaCwgaW5zdGVhZCBvZgo+ID4gdGhpcy4KPgo+IEluIHRoZSBjdXJy
ZW50IHBhdGNoLCB0aGVzZSBxdWlya3MgYXJlIGFwcGxpZWQgb25seSBpZiB0aGUgZGV2aWNlIGFw
cGVhcnMKPiBpbiB0aGUgZGV2aWNlIHRyZWUgKHNlZSB0aGUgY29uZGl0aW9uIGFib3ZlKS4gSWYg
SSBpbXBsZW1lbnQgdGhlbSBpbgo+IGRyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmggdGhleSB3aWxs
IGJlIGFwcGxpZWQgYXMgc29vbiBhcyB0aGUgZGV2aWNlIGlzCj4gZGV0ZWN0ZWQuIElzIGl0IHdo
YXQgd2Ugd2FudD8KPgo+IE5vdGU6IHdlIGFscmVhZHkgaGF2ZSBoYWQgYSBkaXNjdXNzaW9uIGFi
b3V0IHRoZSBzdHJhbmdlIFZJRC9QSUQgZGVjbGFyZWQKPiBieSB0aGlzIGRldmljZToKPiAgIGh0
dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL25ldGRldi9tc2c2OTI1NzcuaHRtbAoKUGxlYXNl
LCBzZWUgbXkgb3RoZXIgcmVwbHkgdG8gUGFsaS4KCj4KPgo+IFsuLi5dCj4gPiA+ICsKPiA+ID4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgd2Z4X3NkaW9faWRzW10gPSB7Cj4g
PiA+ICsgICAgICAgeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9TSUxBQlMsIFNESU9fREVW
SUNFX0lEX1NJTEFCU19XRjIwMCkgfSwKPiA+ID4gKyAgICAgICB7IH0sCj4gPiA+ICt9Owo+ID4g
PiArTU9EVUxFX0RFVklDRV9UQUJMRShzZGlvLCB3Znhfc2Rpb19pZHMpOwo+ID4gPiArCj4gPiA+
ICtzdHJ1Y3Qgc2Rpb19kcml2ZXIgd2Z4X3NkaW9fZHJpdmVyID0gewo+ID4gPiArICAgICAgIC5u
YW1lID0gIndmeC1zZGlvIiwKPiA+ID4gKyAgICAgICAuaWRfdGFibGUgPSB3Znhfc2Rpb19pZHMs
Cj4gPiA+ICsgICAgICAgLnByb2JlID0gd2Z4X3NkaW9fcHJvYmUsCj4gPiA+ICsgICAgICAgLnJl
bW92ZSA9IHdmeF9zZGlvX3JlbW92ZSwKPiA+ID4gKyAgICAgICAuZHJ2ID0gewo+ID4gPiArICAg
ICAgICAgICAgICAgLm93bmVyID0gVEhJU19NT0RVTEUsCj4gPiA+ICsgICAgICAgICAgICAgICAu
b2ZfbWF0Y2hfdGFibGUgPSB3Znhfc2Rpb19vZl9tYXRjaCwKPiA+Cj4gPiBJcyB0aGVyZSBubyBw
b3dlciBtYW5hZ2VtZW50PyBPciBkbyB5b3UgaW50ZW5kIHRvIGFkZCB0aGF0IG9uIHRvcD8KPgo+
IEl0IHNlZW1zIHdlIGFscmVhZHkgaGF2ZSBoYWQgdGhpcyBkaXNjdXNzaW9uOgo+Cj4gICBodHRw
czovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvQ0FQRHlLRnFKZj12VXFwUWczc3VEQ2FkS3JGVGtR
V0ZUWV9xcD0reURLPV9MdTlnSkdnQG1haWwuZ21haWwuY29tLyNyCj4KPiBJbiB0aGlzIHRocmVh
ZCwgS2FsbGUgc2FpZDoKPiA+IE1hbnkgbWFjODAyMTEgZHJpdmVycyBkbyBzbyB0aGF0IHRoZSBk
ZXZpY2UgaXMgcG93ZXJlZCBvZmYgZHVyaW5nCj4gPiBpbnRlcmZhY2UgZG93biAoaWZjb25maWcg
d2xhbjAgZG93biksIGFuZCBhcyBtYWM4MDIxMSBkb2VzIGludGVyZmFjZQo+ID4gZG93biBhdXRv
bWF0aWNhbGx5IGR1cmluZyBzdXNwZW5kLCBzdXNwZW5kIHRoZW4gd29ya3Mgd2l0aG91dCBleHRy
YQo+ID4gaGFuZGxlcnMuCgpZZWFoLCBpdCdzIGJlZW4gYSB3aGlsZSBzaW5jZSBJIGxvb2tlZCBh
dCB0aGlzLCB0aGFua3MgZm9yIHRoZSBwb2ludGVyLgoKWy4uLl0KCktpbmQgcmVnYXJkcwpVZmZl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
