Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFED41F12A
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 17:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D14B83E7B;
	Fri,  1 Oct 2021 15:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e43LyeF2yKtR; Fri,  1 Oct 2021 15:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9582B81B72;
	Fri,  1 Oct 2021 15:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3D771BF41E
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 15:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C22186060F
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 15:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StkYu7Vpd-M5 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 15:23:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 773D7614E4
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 15:23:59 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id y23so5273044lfj.7
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 08:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HcXgng2hGoCgpa31It0A0pLwW+Q4lJvcKTzTM93uitk=;
 b=RFJCXjfPz7w+MgF8CFN1piJl7iQ8/TURuVojjSPJssZjjMtcBF9liI0WwJNfyFEEcd
 8IJSGrlA9u3b9pWEImoCky/7xFxWVqnXBg+dKziSgxFWho1RtTOFho0iLNT5Va/Pfr0z
 CLUDEENIVFDT1hlQWnfJK7Dcioabcr33NG3vFFewmv7Uky1hvd7bMjHgrXNJgBDAJhc1
 HWIP5+uxMehbvFplWuzCEvNm3/bj6BPP+wASfjqky2EetC1AMTYbX72aiCpjVBKiYjDq
 qD/+xxRSHt9ODqns8AAJAREeH/j10omS6wxAm8Pmcm2JHgakO4yZLEHgECVaK92EKVWg
 vyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HcXgng2hGoCgpa31It0A0pLwW+Q4lJvcKTzTM93uitk=;
 b=48OqJPZUhjSDz9Rj6xDvrX1bYX8/7B6hyvOb2o/GPEYNA0cYPhpvv3Qd8wEXfcwH6c
 rP682Jkqn0k5b/3yeFErOV5OjlpHTNCKEJpHARLrMbh2JXvQJqdR2Y3DfhJ6YeLovwQs
 4JQbTEHtroSgCoBLXcbXCLXBUNMaNws8mcVH+qECupJVbgjHzzhNyPvFhwgbNiq2jJ65
 wRY+C+ibqt97bnxivBifkSftjrCVSO1JHS4VWer0ddPDkVFF06ZWzSFMzxE00TxDCrDQ
 58feqGxK6z86M9C0ehw+cm8QiYfUUcZ49GbxdUzUvxPv0FATjUJpUl9eLsFSGWP1+kqU
 HlaA==
X-Gm-Message-State: AOAM532cqOtfXcg4f9k+yon4lR/5IbvHLrK2XABY63MfRDiTXnyS+1Fq
 NFztL7Meep3C4IyX4IDvT1HTfZzxJ3qkbFTuL7tWgA==
X-Google-Smtp-Source: ABdhPJyd+dupirVhzxZl8i5tUK5MA4VFOlbkWZql2eI+cR5FeK8ToELQVt75Qd+XOf7vM9xDkeQcoV0JFkAVU9VSXDY=
X-Received: by 2002:ac2:4157:: with SMTP id c23mr5908876lfi.184.1633101833061; 
 Fri, 01 Oct 2021 08:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-9-Jerome.Pouiller@silabs.com>
 <CAPDyKFp2_41mScO=-Ev+kvYD5xjShQdLugU_2FTTmvzgCxmEWA@mail.gmail.com>
 <19731906.ZuIkq4dnIL@pc-42> <20210930170646.cffsuytdpa72izbh@pali>
In-Reply-To: <20210930170646.cffsuytdpa72izbh@pali>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 1 Oct 2021 17:23:16 +0200
Message-ID: <CAPDyKFoaw8rdPRdjgAJz3-T2_fS1iA9jtonbwZAYE0npUNfOQQ@mail.gmail.com>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
 =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>
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
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAzMCBTZXB0IDIwMjEgYXQgMTk6MDYsIFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Cj4gT24gVGh1cnNkYXkgMzAgU2VwdGVtYmVyIDIwMjEgMTg6NTE6MDkgSsOp
csO0bWUgUG91aWxsZXIgd3JvdGU6Cj4gPiBIZWxsbyBVbGYsCj4gPgo+ID4gT24gVGh1cnNkYXkg
MzAgU2VwdGVtYmVyIDIwMjEgMTI6MDc6NTUgQ0VTVCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+ID4g
T24gTW9uLCAyMCBTZXB0IDIwMjEgYXQgMTg6MTIsIEplcm9tZSBQb3VpbGxlcgo+ID4gPiA8SmVy
b21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gRnJvbTogSsOp
csO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+ID4gPiA+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxh
YnMuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMv
d2Z4L2J1c19zZGlvLmMgfCAyNjEgKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAyNjEgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jCj4gPiA+ID4KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5j
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jCj4gPiA+Cj4gPiA+
IFsuLi5dCj4gPiA+Cj4gPiA+ID4gKwo+ID4gPiA+ICtzdGF0aWMgaW50IHdmeF9zZGlvX3Byb2Jl
KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgKmlkKQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAg
ICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZnVuYy0+ZGV2Lm9mX25vZGU7Cj4gPiA+ID4g
KyAgICAgICBzdHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzOwo+ID4gPiA+ICsgICAgICAgaW50IHJl
dDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICBpZiAoZnVuYy0+bnVtICE9IDEpIHsKPiA+ID4g
PiArICAgICAgICAgICAgICAgZGV2X2VycigmZnVuYy0+ZGV2LCAiU0RJTyBmdW5jdGlvbiBudW1i
ZXIgaXMgJWQgd2hpbGUgaXQgc2hvdWxkIGFsd2F5cyBiZSAxICh1bnN1cHBvcnRlZCBjaGlwPylc
biIsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZnVuYy0+bnVtKTsKPiA+ID4gPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPiA+ID4gKyAgICAgICB9Cj4gPiA+ID4g
Kwo+ID4gPiA+ICsgICAgICAgYnVzID0gZGV2bV9remFsbG9jKCZmdW5jLT5kZXYsIHNpemVvZigq
YnVzKSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ID4gKyAgICAgICBpZiAoIWJ1cykKPiA+ID4gPiArICAg
ICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgaWYg
KCFucCB8fCAhb2ZfbWF0Y2hfbm9kZSh3Znhfc2Rpb19vZl9tYXRjaCwgbnApKSB7Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgIGRldl93YXJuKCZmdW5jLT5kZXYsICJubyBjb21wYXRpYmxlIGRldmlj
ZSBmb3VuZCBpbiBEVFxuIik7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVW
Owo+ID4gPiA+ICsgICAgICAgfQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGJ1cy0+ZnVuYyA9
IGZ1bmM7Cj4gPiA+ID4gKyAgICAgICBidXMtPm9mX2lycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFw
KG5wLCAwKTsKPiA+ID4gPiArICAgICAgIHNkaW9fc2V0X2RydmRhdGEoZnVuYywgYnVzKTsKPiA+
ID4gPiArICAgICAgIGZ1bmMtPmNhcmQtPnF1aXJrcyB8PSBNTUNfUVVJUktfTEVOSUVOVF9GTjAg
fAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1NQ19RVUlSS19CTEtTWl9G
T1JfQllURV9NT0RFIHwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNTUNf
UVVJUktfQlJPS0VOX0JZVEVfTU9ERV81MTI7Cj4gPiA+Cj4gPiA+IEkgd291bGQgcmF0aGVyIHNl
ZSB0aGF0IHlvdSBhZGQgYW4gU0RJT19GSVhVUCBmb3IgdGhlIFNESU8gY2FyZCwgdG8KPiA+ID4g
dGhlIHNkaW9fZml4dXBfbWV0aG9kc1tdLCBpbiBkcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oLCBp
bnN0ZWFkIG9mCj4gPiA+IHRoaXMuCj4gPgo+ID4gSW4gdGhlIGN1cnJlbnQgcGF0Y2gsIHRoZXNl
IHF1aXJrcyBhcmUgYXBwbGllZCBvbmx5IGlmIHRoZSBkZXZpY2UgYXBwZWFycwo+ID4gaW4gdGhl
IGRldmljZSB0cmVlIChzZWUgdGhlIGNvbmRpdGlvbiBhYm92ZSkuIElmIEkgaW1wbGVtZW50IHRo
ZW0gaW4KPiA+IGRyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmggdGhleSB3aWxsIGJlIGFwcGxpZWQg
YXMgc29vbiBhcyB0aGUgZGV2aWNlIGlzCj4gPiBkZXRlY3RlZC4gSXMgaXQgd2hhdCB3ZSB3YW50
Pwo+ID4KPiA+IE5vdGU6IHdlIGFscmVhZHkgaGF2ZSBoYWQgYSBkaXNjdXNzaW9uIGFib3V0IHRo
ZSBzdHJhbmdlIFZJRC9QSUQgZGVjbGFyZWQKPiA+IGJ5IHRoaXMgZGV2aWNlOgo+ID4gICBodHRw
czovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9uZXRkZXYvbXNnNjkyNTc3Lmh0bWwKPgo+IFllcywg
dmVuZG9yIGlkIDB4MDAwMCBpcyBpbnZhbGlkIHBlciBTRElPIHNwZWMuIFNvIGJhc2VkIG9uIHRo
aXMgdmVuZG9yCj4gaWQsIGl0IGlzIG5vdCBwb3NzaWJsZSB0byB3cml0ZSBhbnkgcXVpcmsgaW4g
bW1jL3NkaW8gZ2VuZXJpYyBjb2RlLgo+Cj4gVWxmLCBidXQgbWF5YmUgaXQgY291bGQgYmUgcG9z
c2libGUgdG8gd3JpdGUgcXVpcmsgYmFzZWQgb24gT0YKPiBjb21wYXRpYmxlIHN0cmluZz8KClll
cywgdGhhdCB3b3VsZCBiZSBiZXR0ZXIgaW4gbXkgb3Bpbmlvbi4KCldlIGFscmVhZHkgaGF2ZSBE
VCBiaW5kaW5ncyB0byBkZXNjcmliZSBlbWJlZGRlZCBTRElPIGNhcmRzIChhIHN1Ym5vZGUKdG8g
dGhlIG1tYyBjb250cm9sbGVyIG5vZGUpLCBzbyB3ZSBzaG91bGQgYmUgYWJsZSB0byBleHRlbmQg
dGhhdCBJCnRoaW5rLgoKVGhlIG1haW4gcmVhc29uIHdoeSBJIHRoaW5rIGl0J3MgYSBnb29kIGlk
ZWEsIGlzIHRoYXQgd2UgbWF5IG5lZWQgdG8Ka25vdyAoZnV0dXJlIHdpc2UpIGFib3V0IHF1aXJr
cyBmcm9tIHRoZSBtbWMgY29yZSBwb2ludCBvZiB2aWV3LApiZWZvcmUgdGhlIFNESU8gZnVuYyBk
cml2ZXIgZ2V0cyBwcm9iZWQuCgpbLi4uXQoKS2luZCByZWdhcmRzClVmZmUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
