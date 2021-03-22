Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C039D3440C0
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 13:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42D0B40278;
	Mon, 22 Mar 2021 12:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJAra20NRugx; Mon, 22 Mar 2021 12:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 704C640221;
	Mon, 22 Mar 2021 12:21:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7346C1BF37F
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 12:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 623A640221
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 12:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jr-TJuPNBiIo for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 12:21:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com
 [IPv6:2607:f8b0:4864:20::e31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42FA840172
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 12:21:13 +0000 (UTC)
Received: by mail-vs1-xe31.google.com with SMTP id z68so7324744vsb.10
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 05:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XGgimpglaRwteb/Bgl+pO/u/VHpnAlSvFxg2F0n2KCo=;
 b=p6ePlsePjZxtZiq6dspm5RqfO23b/cRwiaAUzyGDHXFYH5sx1t4bJGWn0FOttl90Fl
 9l+Pfmy1A5eZFy/TSoAvoVzQdfoD2qAan4ZvPA6wRfZWyReRLg4ebDoHO03QxuwMUSbG
 Xw/8chYtadgBTlSZOweb9p+3rtNCRRcjugB/lnaBMco22zR1SkNQM6lzIQNj8EexBez6
 v7JH/YONvbt8dLTbvqGS0sAH1lBuk1leff10dNlL9TDI1CpIRaVwIzuXwq2+NNyRsGqx
 z1w0fgf4bGexsX5E3k40FkRmO1RTFVZAOD6tpBLRoVWKOKlZDiXK9Zj5nr2RvdtstoJq
 nujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XGgimpglaRwteb/Bgl+pO/u/VHpnAlSvFxg2F0n2KCo=;
 b=kZu/DWZEfOtRRE33NuGbgewKYI8n6ukmZtQeF/kqbz+4WNwcoKeb1IgCO3dw8hCnMZ
 2gX9ypiIVYTCqfNaLRpFK+ReRjbhRu6RlpQldfVMqrVMS99s0zQo1yqfikSuBGZsefjo
 CaJjktxFxTkxF3wZSLP7i5EWQ1YHz6Q9SGEUdnAgh6OC7KOoLOZ1YM0yqK17wIVcV9H9
 CWarssBaexUf2CuAI9VIevfEegu28fBtjx8+RfXS+gG0qKaERz9OBlBLM5dJ1IKd/99B
 x3Gzq7JJlmAVlTGa00hCDtk2/jIxZWzVkUeJqfFbByi9u0D8cMek9QW+sxc4Pjlqgcqo
 2ZKg==
X-Gm-Message-State: AOAM5321uKqWUbpStoxxnJbKmZW9SF468VWBYvzeb7P2YdTQ/89yoXB8
 oU+hrKDiFOfdb2IwJMrQUcykZhwxo39WZghVpvAS7g==
X-Google-Smtp-Source: ABdhPJxi1HPq3PGcbuB9unHpIbKlJszyykT5Ik5ywDW/5koSttdd0dNdIDei/RcqxPZPwkzSrOy7RcSt9jXbJOzDcy4=
X-Received: by 2002:a67:2a85:: with SMTP id q127mr8477457vsq.19.1616415672109; 
 Mon, 22 Mar 2021 05:21:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <20210315132501.441681-9-Jerome.Pouiller@silabs.com>
In-Reply-To: <20210315132501.441681-9-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Mar 2021 13:20:35 +0100
Message-ID: <CAPDyKFqJf=vUqpQg3suDCadKrFTkQWFTY_qp=+yDK=_Lu9gJGg@mail.gmail.com>
Subject: Re: [PATCH v5 08/24] wfx: add bus_sdio.c
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

T24gTW9uLCAxNSBNYXIgMjAyMSBhdCAxNDoyNSwgSmVyb21lIFBvdWlsbGVyCjxKZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3Vp
bGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L3dp
cmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYyB8IDI1OSArKysrKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDI1OSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKClsuLi5dCgo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHNkaW9fZGV2aWNlX2lkIHdmeF9zZGlvX2lkc1tdID0gewo+ICsg
ICAgICAgeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9TSUxBQlMsIFNESU9fREVWSUNFX0lE
X1NJTEFCU19XRjIwMCkgfSwKPiArICAgICAgIHsgfSwKPiArfTsKPiArTU9EVUxFX0RFVklDRV9U
QUJMRShzZGlvLCB3Znhfc2Rpb19pZHMpOwo+ICsKPiArc3RydWN0IHNkaW9fZHJpdmVyIHdmeF9z
ZGlvX2RyaXZlciA9IHsKPiArICAgICAgIC5uYW1lID0gIndmeC1zZGlvIiwKPiArICAgICAgIC5p
ZF90YWJsZSA9IHdmeF9zZGlvX2lkcywKPiArICAgICAgIC5wcm9iZSA9IHdmeF9zZGlvX3Byb2Jl
LAo+ICsgICAgICAgLnJlbW92ZSA9IHdmeF9zZGlvX3JlbW92ZSwKPiArICAgICAgIC5kcnYgPSB7
Cj4gKyAgICAgICAgICAgICAgIC5vd25lciA9IFRISVNfTU9EVUxFLAo+ICsgICAgICAgICAgICAg
ICAub2ZfbWF0Y2hfdGFibGUgPSB3Znhfc2Rpb19vZl9tYXRjaCwKCkl0J3Mgbm90IG1hbmRhdG9y
eSB0byBzdXBwb3J0IHBvd2VyIG1hbmFnZW1lbnQsIGxpa2Ugc3lzdGVtCnN1c3BlbmQvcmVzdW1l
LiBIb3dldmVyLCBhcyB0aGlzIGxvb2tzIGxpa2UgdGhpcyBpcyBhIGRyaXZlciBmb3IgYW4KZW1i
ZWRkZWQgU0RJTyBkZXZpY2UsIHlvdSBwcm9iYWJseSB3YW50IHRoaXMuCgpJZiB0aGF0IGlzIHRo
ZSBjYXNlLCBwbGVhc2UgYXNzaWduIHRoZSBkZXZfcG1fb3BzIGhlcmUgYW5kIGltcGxlbWVudAp0
aGUgLT5zdXNwZW5kfHJlc3VtZSgpIGNhbGxiYWNrcy4KClsuLi5dCgpLaW5kIHJlZ2FyZHMKVWZm
ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
