Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A69652AB096
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95C05203E5;
	Mon,  9 Nov 2020 05:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rq494bkaH7J2; Mon,  9 Nov 2020 05:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52184204F9;
	Mon,  9 Nov 2020 05:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3900F1BF417
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FB1A870B2
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id srfTHdoA9Qz3 for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF921870AE
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:19:35 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id b1so10636710lfp.11
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h/l9jqPPSOjokBpH3eFzqAnYzBy6HMjUXqOv94wxhaY=;
 b=inFPxi2kOHf6eLWqksRlS/alpqIYuYJTEft79LSW5Fdx2HdQXVxspWY2rT6ZdVTO66
 KRY+/Buftaeh00whsFi1kO9V6YYurmEXktex4+Y5EfP5Rn74NUMmF19uXEm0Se34qH0s
 ObVJmVTP+gl/I0FWElQMq+uljKBtDDic3bdFBiy4C09CJjPj1MfbVopXK0JAbsWW49Vy
 kkAHFPB66iO0K4JfZjyCEdqSLan09z0SQrBr/OOCKxYcpzED0fn8BL+DmCwTyXt7D7Oj
 tGJRovB7xsVEn38URK5ePSwyMR2P3kGnVF1zZUdFAJCmBCTNgdc8KJALhnJRdnoqjjNN
 a/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h/l9jqPPSOjokBpH3eFzqAnYzBy6HMjUXqOv94wxhaY=;
 b=pEI13noMVnpLEVi8InhEYCrz0a9Lwk/SsqYXx1R9Oja5qIVjBCquFA/HnHvQsziUxb
 ckwQ2fH7QUV0tCm4yPsUK38FzjNXWZvQYX6p8yDg5QCaRiIvH0yYKQcg3sZ+/jc8uW5S
 TxoSFLDkpJq3hxTWScaMsd00di5mx28bBRncXvuP2/xXCFvS61i42fiUTLirXqKt8UMs
 VO9iNlVwsQaQjmZ8Y8b6ceYlDX2wpX2JQBRhvk9p+peXDrZfcGH0C3YZyFqI5SXLAPiH
 rFtiNlNZIEoZcD1c4cHs9Yfvgj34gkbiFZKR/lNi/S3yoDfdKIuqgNNADZJu1/Dcayeg
 Li/g==
X-Gm-Message-State: AOAM531kXciDyTpON8pUYwz0g3tK/+QDcUmXeEimclHsAJKz4Ehk/2jq
 8SpsyDbQTtnhgiW+UNNVws8=
X-Google-Smtp-Source: ABdhPJyfn/mhowYUR13ODHWpjXAE1wRkP98MMhTHt8rjWBQX9NIzOaxLUnjfOjm6TyyarRwVp6OMEw==
X-Received: by 2002:a19:c816:: with SMTP id y22mr4701106lff.509.1604899174061; 
 Sun, 08 Nov 2020 21:19:34 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id c125sm1572920lfd.31.2020.11.08.21.19.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:19:33 -0800 (PST)
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
 <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
 <20201109050010.g47zojh6wafvwqva@vireshk-i7>
 <c584b301-e052-7f01-335d-8f9160865198@gmail.com>
 <20201109051014.oa6bt4g3ctm2hnuy@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <4476fed9-a356-b7f1-32ee-935343e23038@gmail.com>
Date: Mon, 9 Nov 2020 08:19:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201109051014.oa6bt4g3ctm2hnuy@vireshk-i7>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pwm@vger.kernel.org, Frank Lee <tiny.windzz@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDkuMTEuMjAyMCAwODoxMCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMDktMTEtMjAs
IDA4OjA4LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDA5LjExLjIwMjAgMDg6MDAsIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMDYtMTEtMjAsIDIxOjQxLCBGcmFuayBMZWUgd3Jv
dGU6Cj4+Pj4gT24gRnJpLCBOb3YgNiwgMjAyMCBhdCA5OjE4IFBNIERtaXRyeSBPc2lwZW5rbyA8
ZGlnZXR4QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IDA2LjExLjIwMjAgMDk6MTUsIFZp
cmVzaCBLdW1hciDQv9C40YjQtdGCOgo+Pj4+Pj4gU2V0dGluZyByZWd1bGF0b3JzIGZvciBjb3Vu
dCBhcyAwIGRvZXNuJ3Qgc291bmQgZ29vZCB0byBtZS4KPj4+Pj4+Cj4+Pj4+PiBCdXQsIEkgdW5k
ZXJzdGFuZCB0aGF0IHlvdSBkb24ndCB3YW50IHRvIGhhdmUgdGhhdCBpZiAoaGF2ZV9yZWd1bGF0
b3IpCj4+Pj4+PiBjaGVjaywgYW5kIGl0IGlzIGEgZmFpciByZXF1ZXN0LiBXaGF0IEkgd2lsbCBp
bnN0ZWFkIGRvIGlzLCBhbGxvdyBhbGwKPj4+Pj4+IGRldl9wbV9vcHBfcHV0KigpIEFQSSB0byBz
dGFydCBhY2NlcHRpbmcgYSBOVUxMIHBvaW50ZXIgZm9yIHRoZSBPUFAKPj4+Pj4+IHRhYmxlIGFu
ZCBmYWlsIHNpbGVudGx5LiBBbmQgc28geW91IHdvbid0IGJlIHJlcXVpcmVkIHRvIGhhdmUgdGhp
cwo+Pj4+Pj4gdW53YW50ZWQgY2hlY2suIEJ1dCB5b3Ugd2lsbCBiZSByZXF1aXJlZCB0byBzYXZl
IHRoZSBwb2ludGVyIHJldHVybmVkCj4+Pj4+PiBiYWNrIGJ5IGRldl9wbV9vcHBfc2V0X3JlZ3Vs
YXRvcnMoKSwgd2hpY2ggaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvCj4+Pj4+PiBhbnl3YXlzLgo+
Pj4+Pgo+Pj4+PiBQZXJoYXBzIGV2ZW4gYSBiZXR0ZXIgdmFyaWFudCBjb3VsZCBiZSB0byBhZGQg
YSBkZXZtIHZlcnNpb25zIG9mIHRoZSBPUFAKPj4+Pj4gQVBJIGZ1bmN0aW9ucywgdGhlbiBkcml2
ZXJzIHdvbid0IG5lZWQgdG8gY2FyZSBhYm91dCBzdG9yaW5nIHRoZQo+Pj4+PiBvcHBfdGFibGUg
cG9pbnRlciBpZiBpdCdzIHVudXNlZCBieSBkcml2ZXJzLgo+Pj4+Cj4+Pj4gSSB0aGluayBzby4g
VGhlIGNvbnN1bWVyIG1heSBub3QgYmUgc28gY29uY2VybmVkIGFib3V0IHRoZSBzdGF0dXMgb2YK
Pj4+PiB0aGVzZSBPUFAgdGFibGVzLgo+Pj4+IElmIHRoZSBkcml2ZXIgbmVlZHMgdG8gbWFuYWdl
IHRoZSByZWxlYXNlLCBpdCBuZWVkcyB0byBhZGQgYSBwb2ludGVyCj4+Pj4gdG8gdGhlaXIgZHJp
dmVyIGdsb2JhbCBzdHJ1Y3R1cmUuCj4+Pj4KPj4+PiBNYXliZSBpdCdzIHdvcnRoIGhhdmluZyB0
aGVzZSBkZXZtIGludGVyZmFjZXMgZm9yIG9wcC4KPj4+Cj4+PiBTdXJlIGlmIHRoZXJlIGFyZSBl
bm91Z2ggdXNlcnMgb2YgdGhpcywgSSBhbSBhbGwgZm9yIGl0LiBJIHdhcyBmaW5lCj4+PiB3aXRo
IHRoZSBwYXRjaGVzIHlvdSBzZW50LCBqdXN0IHRoYXQgdGhlcmUgd2VyZSBub3QgYSBsb3Qgb2Yg
dXNlcnMgb2YKPj4+IGl0IGFuZCBzbyBJIHB1c2hlZCB0aGVtIGJhY2suIElmIHdlIGZpbmQgdGhh
dCB3ZSBoYXZlIG1vcmUgdXNlcnMgb2YgaXQKPj4+IG5vdywgd2UgY2FuIHN1cmVseSBnZXQgdGhh
dCBiYWNrLgo+Pj4KPj4KPj4gVGhlcmUgd2FzIGFscmVhZHkgYXR0ZW1wdCB0byBhZGQgdGhlIGRl
dm0/IENvdWxkIHlvdSBwbGVhc2UgZ2l2ZSBtZSBhCj4+IGxpbmsgdG8gdGhlIHBhdGNoZXM/Cj4+
Cj4+IEkgYWxyZWFkeSBwcmVwYXJlZCBhIHBhdGNoIHdoaWNoIGFkZHMgdGhlIGRldm0gaGVscGVy
cy4gSXQgaGVscHMgdG8ga2VlcAo+PiBjb2RlIGNsZWFuZXIgYW5kIHJlYWRhYmxlLgo+IAo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDEwMTIxMzU1MTcuMTk0NjgtMS1mcmFua0Bh
bGx3aW5uZXJ0ZWNoLmNvbS8KPiAKClRoYW5rcywgSSBtYWRlIGl0IGluIGEgZGlmZmVyZW50IHdh
eSBieSBzaW1wbHkgYWRkaW5nIGhlbHBlcnMgdG8gdGhlCnBtX29wcC5oIHdoaWNoIHVzZSBkZXZt
X2FkZF9hY3Rpb25fb3JfcmVzZXQoKS4gVGhpcyBkb2Vzbid0IHJlcXVpcmUgdG8KYWRkIG5ldyBr
ZXJuZWwgc3ltYm9scy4KCnN0YXRpYyBpbmxpbmUgaW50IGRldm1fcG1fb3BwX29mX2FkZF90YWJs
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCnsKCWludCBlcnI7CgoJZXJyID0gZGV2X3BtX29wcF9vZl9h
ZGRfdGFibGUoZGV2KTsKCWlmIChlcnIpCgkJcmV0dXJuIGVycjsKCgllcnIgPSBkZXZtX2FkZF9h
Y3Rpb25fb3JfcmVzZXQoZGV2LCAodm9pZCopZGV2X3BtX29wcF9yZW1vdmVfdGFibGUsCgkJCQkg
ICAgICAgZGV2KTsKCWlmIChlcnIpCgkJcmV0dXJuIGVycjsKCglyZXR1cm4gMDsKfQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
