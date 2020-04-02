Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C06719C48C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:43:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6588262F9;
	Thu,  2 Apr 2020 14:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CCbOMt3dLoom; Thu,  2 Apr 2020 14:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 687CE26129;
	Thu,  2 Apr 2020 14:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC0231BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8E59862D2
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJJtaxkln-bJ for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:43:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DF6148803D
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:43:16 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id o18so1305856qko.12
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 07:43:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sf8xIW95po41MsNtorwWl8pTLbgWf5KTPswmS5tTSsU=;
 b=Hv35mH4BUQZGrwv9K+Gf2gO3OI98rJGawxzq7pxFeqddmg9CW4RH29juThHwBn8H+y
 38uuLbx5SR1nSEtOeG4ihV1d1gBVjamYXJ1UDK5m2RiBIIC8ws7nP3YOXfmtDutfNY4+
 DFLNxeBQiQlSsDE6usg6XimV1/t0xEtdnZJmV3zSc0Ppt7mV7kQ0b2+YYul34jzSqnDF
 IuMky9j/v6DAe7XAbairpbUg6xZbTB3jJneiXRtcEWnZfR7gFJUbPCABEGamgxHIlSKy
 jhl3ogFstPNDsSvd1bSkCR/PzI7iXhQ5EkKBNP2HPPN/DUFPDbqLpeO42cW+8LkjinBk
 /gAA==
X-Gm-Message-State: AGi0PuZ+48hB4tHkQr44zOj//J/elnr4ZN3Vza4Su68HWNtBck7z/JaS
 3TOYeZ9ZUMRo+lrRk0H1MwQ=
X-Google-Smtp-Source: APiQypLgY4tJeyyCC6GdSOIL8CordFKveXDU9v51XGmiU1NOSceqRS3uwwpK4nCiEdIek1LdlDKtRg==
X-Received: by 2002:a37:4648:: with SMTP id t69mr3604208qka.299.1585838595746; 
 Thu, 02 Apr 2020 07:43:15 -0700 (PDT)
Received: from ?IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d?
 ([2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 by smtp.gmail.com with ESMTPSA id l7sm3630805qkb.47.2020.04.02.07.43.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 07:43:14 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com> <105956984.FXDh2DO4ZE@diego>
From: Helen Koike <helen@koikeco.de>
Message-ID: <2fa1b497-509a-d02f-b893-058639655133@koikeco.de>
Date: Thu, 2 Apr 2020 11:43:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <105956984.FXDh2DO4ZE@diego>
Content-Language: en-US
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
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpPbiA0LzIvMjAgMTE6MzEgQU0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERvbm5l
cnN0YWcsIDIuIEFwcmlsIDIwMjAsIDE1OjQ4OjAyIENFU1Qgc2NocmllYiBKb2hhbiBKb25rZXI6
Cj4+IEhpIEhlbGVuLAo+Pgo+Pj4gRnJvbTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxh
Ym9yYS5jb20+Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kK
Pj4+IGluZGV4IDMzY2MyMWZjZjRjMTAuLmZjMDI5NWQyYTY1YTEgMTAwNjQ0Cj4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiBAQCAtMTM5NCw2ICsxMzk0LDE3
IEBAIGlvX2RvbWFpbnM6IGlvLWRvbWFpbnMgewo+Pj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4+PiAgCQl9Owo+Pj4gIAo+Pgo+Pj4gKwkJbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7
Cj4+Cj4+IEZvciBIZWlrbyBzb3J0IHN5c2NvbkBmZjc3MDAwMCBzdWJub2RlcyBhbHBoYWJldGlj
YWwgb3IgcmVnIHZhbHVlIGZpcnN0Pwo+IAo+IFNpbWlsYXIgdG8gbWFpbiBub2RlcyAuLi4gc28g
dGhpbmdzIHdpdGhvdXQgcmVnIGFscGhhYmV0aWNhbCwKPiB0aGUgcmVzdCBieSByZWcgYWRkcmVz
cwo+IAo+IAo+Pgo+Pj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LW1pcGktZHBo
eS1yeDAiOwo+Pj4gKwkJCWNsb2NrcyA9IDwmY3J1IFNDTEtfTUlQSURQSFlfUkVGPiwKPj4KPj4+
ICsJCQkJPCZjcnUgU0NMS19EUEhZX1JYMF9DRkc+LAo+Pj4gKwkJCQk8JmNydSBQQ0xLX1ZJT19H
UkY+Owo+Pgo+PiBBbGlnbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgphY2suCgpUaGFu
a3MKSGVsZW4KCj4+Cj4+PiArCQkJY2xvY2stbmFtZXMgPSAiZHBoeS1yZWYiLCAiZHBoeS1jZmci
LCAiZ3JmIjsKPj4+ICsJCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzMzOTlfUERfVklPPjsK
Pj4+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+Pj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+
PiArCQl9Owo+Pj4gKwo+Pj4gIAkJdTJwaHkwOiB1c2IyLXBoeUBlNDUwIHsKPj4+ICAJCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS11c2IycGh5IjsKPj4+ICAJCQlyZWcgPSA8MHhlNDUw
IDB4MTA+Owo+Pgo+Pgo+IAo+IAo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
