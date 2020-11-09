Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28A2AB06C
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:09:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AD2A87102;
	Mon,  9 Nov 2020 05:09:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qYCoWEETtae; Mon,  9 Nov 2020 05:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7096870B1;
	Mon,  9 Nov 2020 05:09:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A95691BF417
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3ADC846C0
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E7nR4m1R6kEu for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:09:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F47E82BCE
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:09:02 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id 74so10630350lfo.5
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FeL/6AVX9ZUMu7dDHuIXkGUemXJf7ZARpxKlL5RCoNQ=;
 b=HASuQOXkF1RZA3cFoj4FpQvKgZV2Q1/lr5KDfeyQiu7UzOUcgR2MLIo0A9WjcfOmav
 ata3slrLCP7pYpjJJpH3hsWHJQhWDFD2MnuhKZ/K2Wi3PTDjn+6YANdF7+WLjyyARswK
 xjvHnNgEGoDtms4JWbiH/Eldmfj6//odfOM4UJkGJg1nbiyF9x+dhfPodAtsd68AVRQt
 aYvz1hbhU2LBNUEhS+Pd+SfaNp7EwpvEEKUFSYkSpU0qD7E4OjNohzH6JLJrfeYiaYh+
 TKX+gaGoXyq8SLKOzNJ4iFAJkgcC2xWjpa2lrpe34n1HFP7FxGpRlfeKBkcE/EIUJsh1
 aq6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FeL/6AVX9ZUMu7dDHuIXkGUemXJf7ZARpxKlL5RCoNQ=;
 b=YzlRBJzIF8LSep1mAXgaGSow5h4HvHoIuVLQTB+sVSmeC4h9dwc5fsWCDe6JxdDT/v
 P4Ymd/RTi5VEmvXHy5MD6ZMryNc3QMWBMeg+s2W6SqQhhgBjK4rwmnfLW/zjMH48rJOh
 Ie+6BxDsj9cV9OxU1CUgRhdoiYHfSBtqPicQd6Mio/VfZVfWnO+3C18RsM9N/zvpXJsk
 EhhhEQOL372GZsoTHiawP/ZK9+erxqCDB9ekB84ozIDm4/9lRc9RajMTroWfeLrpvJs7
 PhTVjdvByxYEf8BiD/saGUlhMqrrpey5qT0nslgP9U/XjgsnHObohwlbwmzzmzGn2qle
 ykPQ==
X-Gm-Message-State: AOAM530qo/dcATwIhdtm8OZ3A5dex8xmm7PxTSYBYOZk2ab12phDTXT/
 tdpBN7g0OPdt2gXxlLVAp98=
X-Google-Smtp-Source: ABdhPJyKFQooKNzB6MtWOkwlVNrBylRoyZRaTFBouH4KLXv0r9LDeU3fC845u6KgAdZQGxa4Rr9biQ==
X-Received: by 2002:a19:c714:: with SMTP id x20mr2310703lff.537.1604898540523; 
 Sun, 08 Nov 2020 21:09:00 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id w22sm1662291ljm.20.2020.11.08.21.08.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:08:59 -0800 (PST)
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
To: Viresh Kumar <viresh.kumar@linaro.org>, Frank Lee <tiny.windzz@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
 <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
 <20201109050010.g47zojh6wafvwqva@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c584b301-e052-7f01-335d-8f9160865198@gmail.com>
Date: Mon, 9 Nov 2020 08:08:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201109050010.g47zojh6wafvwqva@vireshk-i7>
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
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
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

MDkuMTEuMjAyMCAwODowMCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMDYtMTEtMjAs
IDIxOjQxLCBGcmFuayBMZWUgd3JvdGU6Cj4+IE9uIEZyaSwgTm92IDYsIDIwMjAgYXQgOToxOCBQ
TSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+IHdyb3RlOgo+Pj4KPj4+IDA2LjEx
LjIwMjAgMDk6MTUsIFZpcmVzaCBLdW1hciDQv9C40YjQtdGCOgo+Pj4+IFNldHRpbmcgcmVndWxh
dG9ycyBmb3IgY291bnQgYXMgMCBkb2Vzbid0IHNvdW5kIGdvb2QgdG8gbWUuCj4+Pj4KPj4+PiBC
dXQsIEkgdW5kZXJzdGFuZCB0aGF0IHlvdSBkb24ndCB3YW50IHRvIGhhdmUgdGhhdCBpZiAoaGF2
ZV9yZWd1bGF0b3IpCj4+Pj4gY2hlY2ssIGFuZCBpdCBpcyBhIGZhaXIgcmVxdWVzdC4gV2hhdCBJ
IHdpbGwgaW5zdGVhZCBkbyBpcywgYWxsb3cgYWxsCj4+Pj4gZGV2X3BtX29wcF9wdXQqKCkgQVBJ
IHRvIHN0YXJ0IGFjY2VwdGluZyBhIE5VTEwgcG9pbnRlciBmb3IgdGhlIE9QUAo+Pj4+IHRhYmxl
IGFuZCBmYWlsIHNpbGVudGx5LiBBbmQgc28geW91IHdvbid0IGJlIHJlcXVpcmVkIHRvIGhhdmUg
dGhpcwo+Pj4+IHVud2FudGVkIGNoZWNrLiBCdXQgeW91IHdpbGwgYmUgcmVxdWlyZWQgdG8gc2F2
ZSB0aGUgcG9pbnRlciByZXR1cm5lZAo+Pj4+IGJhY2sgYnkgZGV2X3BtX29wcF9zZXRfcmVndWxh
dG9ycygpLCB3aGljaCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8KPj4+PiBhbnl3YXlzLgo+Pj4K
Pj4+IFBlcmhhcHMgZXZlbiBhIGJldHRlciB2YXJpYW50IGNvdWxkIGJlIHRvIGFkZCBhIGRldm0g
dmVyc2lvbnMgb2YgdGhlIE9QUAo+Pj4gQVBJIGZ1bmN0aW9ucywgdGhlbiBkcml2ZXJzIHdvbid0
IG5lZWQgdG8gY2FyZSBhYm91dCBzdG9yaW5nIHRoZQo+Pj4gb3BwX3RhYmxlIHBvaW50ZXIgaWYg
aXQncyB1bnVzZWQgYnkgZHJpdmVycy4KPj4KPj4gSSB0aGluayBzby4gVGhlIGNvbnN1bWVyIG1h
eSBub3QgYmUgc28gY29uY2VybmVkIGFib3V0IHRoZSBzdGF0dXMgb2YKPj4gdGhlc2UgT1BQIHRh
Ymxlcy4KPj4gSWYgdGhlIGRyaXZlciBuZWVkcyB0byBtYW5hZ2UgdGhlIHJlbGVhc2UsIGl0IG5l
ZWRzIHRvIGFkZCBhIHBvaW50ZXIKPj4gdG8gdGhlaXIgZHJpdmVyIGdsb2JhbCBzdHJ1Y3R1cmUu
Cj4+Cj4+IE1heWJlIGl0J3Mgd29ydGggaGF2aW5nIHRoZXNlIGRldm0gaW50ZXJmYWNlcyBmb3Ig
b3BwLgo+IAo+IFN1cmUgaWYgdGhlcmUgYXJlIGVub3VnaCB1c2VycyBvZiB0aGlzLCBJIGFtIGFs
bCBmb3IgaXQuIEkgd2FzIGZpbmUKPiB3aXRoIHRoZSBwYXRjaGVzIHlvdSBzZW50LCBqdXN0IHRo
YXQgdGhlcmUgd2VyZSBub3QgYSBsb3Qgb2YgdXNlcnMgb2YKPiBpdCBhbmQgc28gSSBwdXNoZWQg
dGhlbSBiYWNrLiBJZiB3ZSBmaW5kIHRoYXQgd2UgaGF2ZSBtb3JlIHVzZXJzIG9mIGl0Cj4gbm93
LCB3ZSBjYW4gc3VyZWx5IGdldCB0aGF0IGJhY2suCj4gCgpUaGVyZSB3YXMgYWxyZWFkeSBhdHRl
bXB0IHRvIGFkZCB0aGUgZGV2bT8gQ291bGQgeW91IHBsZWFzZSBnaXZlIG1lIGEKbGluayB0byB0
aGUgcGF0Y2hlcz8KCkkgYWxyZWFkeSBwcmVwYXJlZCBhIHBhdGNoIHdoaWNoIGFkZHMgdGhlIGRl
dm0gaGVscGVycy4gSXQgaGVscHMgdG8ga2VlcApjb2RlIGNsZWFuZXIgYW5kIHJlYWRhYmxlLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
