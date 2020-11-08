Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ABC2AAAF4
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Nov 2020 13:19:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15B98872FC;
	Sun,  8 Nov 2020 12:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ybqpJ3RJNVXz; Sun,  8 Nov 2020 12:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D4298728B;
	Sun,  8 Nov 2020 12:19:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 893841BF4E6
 for <devel@linuxdriverproject.org>; Sun,  8 Nov 2020 12:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 853CA860C1
 for <devel@linuxdriverproject.org>; Sun,  8 Nov 2020 12:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnzRtQxxCJ88 for <devel@linuxdriverproject.org>;
 Sun,  8 Nov 2020 12:19:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 11EF285FE6
 for <devel@driverdev.osuosl.org>; Sun,  8 Nov 2020 12:19:21 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id i6so8261492lfd.1
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 04:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2sZ4icayrxxDWpa2xJypEQHGIoro/hg/XjsXfIMVIO0=;
 b=rFpONZz/Kl33uh/dizvuNJQR2av8Rv5uFlJ5DePIU/DxOtnlMkNpGoI3JXUj2MWsEF
 ir6IGHMPuOz5Ha0JkEbKS4xflgVuaxejRvr3J7nUUQOCUdjtzTtB+/2LCSIwZ1YYD/TJ
 lKE8uooAVEPA5V7sGNiXi7IF5izcclg1E7XOW+XQRLEz/SOzhIs5xZCH9hY7R371YhQJ
 LdeTxesJm0/t9nWD/LlBWtdARIzCuiHjTsZN8sOpocViLXo7UpaGVp/CBzAK20Ddkauz
 tbH9apGbBjlfs/0xTDfRayemP603Ij5uZuDJzOs53HjDllldmig65ToOUo4o93xa8AYC
 tAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2sZ4icayrxxDWpa2xJypEQHGIoro/hg/XjsXfIMVIO0=;
 b=cJR/+U+/Rxlw/APTeLGpwIzY3Q5ybtYmQvnscZcqnY+uvZoOpdah7C2aR/fXBqaF67
 /zW1DBck4XWXnUYG6i92AiGpTa1I1hN4fXOq9UXoF99coydpweu3maDzTpUhitkHMKR4
 aXfSLgL1IC57RgthD4RttZLGgjfnR6SiRV7PT9rK5WTsAcP6R/dP2f1ozOwG9SFTyntA
 N2acUVMbsy76x35H5B7qOC+xNN9PpyqrGGV3PpxjXyknsbOgephQa4jKhe1emFVcN3M4
 3TP/W9v8QDuq+16b/8DlNKshumvUuqnJoiXc6oURsKdvmfd18MnSblSHNIOjTtyXdIyc
 7OQA==
X-Gm-Message-State: AOAM532f+rWsW3MJNtMTrST4194A+cpjJeSEWW8D5gmrhO7cohyiz5WS
 Zos6flWDoJwnmd6EG27A3oU=
X-Google-Smtp-Source: ABdhPJx2JpfTMAfVNhGgqvUuTHG0na3AuqFBXgT3nmIXEBqvHyuzg1Il4cTfxq8l0jMElMVqEADDJg==
X-Received: by 2002:a05:6512:3250:: with SMTP id
 c16mr469413lfr.404.1604837959047; 
 Sun, 08 Nov 2020 04:19:19 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id d26sm1479402ljj.102.2020.11.08.04.19.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Nov 2020 04:19:18 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
From: Dmitry Osipenko <digetx@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
Message-ID: <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
Date: Sun, 8 Nov 2020 15:19:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, DTML <devicetree@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDUuMTEuMjAyMCAxODoyMiwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMDUuMTEuMjAy
MCAxMjo0NSwgVWxmIEhhbnNzb24g0L/QuNGI0LXRgjoKPiAuLi4KPj4gSSBuZWVkIHNvbWUgbW9y
ZSB0aW1lIHRvIHJldmlldyB0aGlzLCBidXQganVzdCBhIHF1aWNrIGNoZWNrIGZvdW5kIGEKPj4g
ZmV3IHBvdGVudGlhbCBpc3N1ZXMuLi4KPiAKPiBUaGFuayB5b3UgZm9yIHN0YXJ0aW5nIHRoZSBy
ZXZpZXchIEknbSBwcmV0dHkgc3VyZSBpdCB3aWxsIHRha2UgYSBjb3VwbGUKPiByZXZpc2lvbnMg
dW50aWwgYWxsIHRoZSBxdWVzdGlvbnMgd2lsbCBiZSByZXNvbHZlZCA6KQo+IAo+PiBUaGUgImNv
cmUtc3VwcGx5IiwgdGhhdCB5b3Ugc3BlY2lmeSBhcyBhIHJlZ3VsYXRvciBmb3IgZWFjaAo+PiBj
b250cm9sbGVyJ3MgZGV2aWNlIG5vZGUsIGlzIG5vdCB0aGUgd2F5IHdlIGRlc2NyaWJlIHBvd2Vy
IGRvbWFpbnMuCj4+IEluc3RlYWQsIGl0IHNlZW1zIGxpa2UgeW91IHNob3VsZCByZWdpc3RlciBh
IHBvd2VyLWRvbWFpbiBwcm92aWRlcgo+PiAod2l0aCB0aGUgaGVscCBvZiBnZW5wZCkgYW5kIGlt
cGxlbWVudCB0aGUgLT5zZXRfcGVyZm9ybWFuY2Vfc3RhdGUoKQo+PiBjYWxsYmFjayBmb3IgaXQu
IEVhY2ggZGV2aWNlIG5vZGUgc2hvdWxkIHRoZW4gYmUgaG9va2VkIHVwIHRvIHRoaXMKPj4gcG93
ZXItZG9tYWluLCByYXRoZXIgdGhhbiB0byBhICJjb3JlLXN1cHBseSIuIEZvciBEVCBiaW5kaW5n
cywgcGxlYXNlCj4+IGhhdmUgYSBsb29rIGF0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wb3dlci9wb3dlci1kb21haW4ueWFtbAo+PiBhbmQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3Bvd2VyL3Bvd2VyX2RvbWFpbi50eHQuCj4+Cj4+IEluIHJlZ2FyZHMgdG8g
dGhlICJzeW5jIHN0YXRlIiBwcm9ibGVtIChwcmV2ZW50aW5nIHRvIGNoYW5nZQo+PiBwZXJmb3Jt
YW5jZSBzdGF0ZXMgdW50aWwgYWxsIGNvbnN1bWVycyBoYXZlIGJlZW4gYXR0YWNoZWQpLCB0aGlz
IGNhbgo+PiB0aGVuIGJlIG1hbmFnZWQgYnkgdGhlIGdlbnBkIHByb3ZpZGVyIGRyaXZlciBpbnN0
ZWFkLgo+IAo+IEknbGwgbmVlZCB0byB0YWtlIGEgY2xvc2VyIGxvb2sgYXQgR0VOUEQsIHRoYW5r
IHlvdSBmb3IgdGhlIHN1Z2dlc3Rpb24uCj4gCj4gU291bmRzIGxpa2UgYSBzb2Z0d2FyZSBHRU5Q
RCBkcml2ZXIgd2hpY2ggbWFuYWdlcyBjbG9ja3MgYW5kIHZvbHRhZ2VzCj4gY291bGQgYmUgYSBn
b29kIGlkZWEsIGJ1dCBpdCBhbHNvIGNvdWxkIGJlIGFuIHVubmVjZXNzYXJ5Cj4gb3Zlci1lbmdp
bmVlcmluZy4gTGV0J3Mgc2VlLi4KPiAKCkhlbGxvIFVsZiBhbmQgYWxsLAoKSSB0b29rIGEgZGV0
YWlsZWQgbG9vayBhdCB0aGUgR0VOUEQgYW5kIHRyaWVkIHRvIGltcGxlbWVudCBpdC4gSGVyZSBp
cwp3aGF0IHdhcyBmb3VuZDoKCjEuIEdFTlBEIGZyYW1ld29yayBkb2Vzbid0IGFnZ3JlZ2F0ZSBw
ZXJmb3JtYW5jZSByZXF1ZXN0cyBmcm9tIHRoZQphdHRhY2hlZCBkZXZpY2VzLiBUaGlzIG1lYW5z
IHRoYXQgaWYgZGV2aWNlQSByZXF1ZXN0cyBwZXJmb3JtYW5jZSBzdGF0ZQoxMCBhbmQgdGhlbiBk
ZXZpY2VCIHJlcXVlc3RzIHN0YXRlIDMsIHRoZW4gZnJhbWV3b3JrIHdpbGwgc2V0IGRvbWFpbidz
CnN0YXRlIHRvIDMgaW5zdGVhZCBvZiAxMC4KCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y1LjEwLXJjMi9zb3VyY2UvZHJpdmVycy9iYXNlL3Bvd2VyL2RvbWFpbi5jI0wzNzYKCjIu
IEdFTlBEIGZyYW1ld29yayBoYXMgYSBzeW5jKCkgY2FsbGJhY2sgaW4gdGhlIGdlbnBkLmRvbWFp
biBzdHJ1Y3R1cmUsCmJ1dCB0aGlzIGNhbGxiYWNrIGlzbid0IGFsbG93ZWQgdG8gYmUgdXNlZCBi
eSB0aGUgR0VOUEQgaW1wbGVtZW50YXRpb24uClRoZSBHRU5QRCBmcmFtZXdvcmsgYWx3YXlzIG92
ZXJyaWRlcyB0aGF0IGNhbGxiYWNrIGZvciBpdHMgb3duIG5lZWRzLgpIZW5jZSBHRU5QRCBkb2Vz
bid0IGFsbG93IHRvIHNvbHZlIHRoZSBib290c3RyYXBwaW5nCnN0YXRlLXN5bmNocm9uaXphdGlv
biBwcm9ibGVtIGluIGEgbmljZSB3YXkuCgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC92NS4xMC1yYzIvc291cmNlL2RyaXZlcnMvYmFzZS9wb3dlci9kb21haW4uYyNMMjYwNgoKMy4g
VGVncmEgZG9lc24ndCBoYXZlIGEgZGVkaWNhdGVkIGhhcmR3YXJlIHBvd2VyLWNvbnRyb2xsZXIg
Zm9yIHRoZSBjb3JlCmRvbWFpbiwgaW5zdGVhZCB0aGVyZSBpcyBvbmx5IGFuIGV4dGVybmFsIHZv
bHRhZ2UgcmVndWxhdG9yLiBIZW5jZSB3ZQp3aWxsIG5lZWQgdG8gY3JlYXRlIGEgcGhvbnkgZGV2
aWNlLXRyZWUgbm9kZSBmb3IgdGhlIHZpcnR1YWwgcG93ZXIKZG9tYWluLCB3aGljaCBpcyBwcm9i
YWJseSBhIHdyb25nIHRoaW5nIHRvIGRvLgoKPT09CgpQZXJoYXBzIGl0IHNob3VsZCBiZSBwb3Nz
aWJsZSB0byBjcmVhdGUgc29tZSBoYWNrcyB0byB3b3JrIGFyb3VuZApidWxsZXRzIDIgYW5kIDMg
aW4gb3JkZXIgdG8gYWNoaWV2ZSB3aGF0IHdlIG5lZWQgZm9yIERWRlMgb24gVGVncmEsIGJ1dApi
dWxsZXQgMSBpc24ndCBzb2x2YWJsZSB3aXRob3V0IGNoYW5naW5nIGhvdyB0aGUgR0VOUEQgY29y
ZSB3b3Jrcy4KCkFsdG9nZXRoZXIsIHRoZSBHRU5QRCBpbiBpdHMgY3VycmVudCBmb3JtIGlzIGEg
d3JvbmcgYWJzdHJhY3Rpb24gZm9yIGEKc3lzdGVtLXdpZGUgRFZGUyBpbiBhIGNhc2Ugd2hlcmUg
bXVsdGlwbGUgZGV2aWNlcyBzaGFyZSBwb3dlciBkb21haW4gYW5kCnRoaXMgZG9tYWluIGlzIGEg
dm9sdGFnZSByZWd1bGF0b3IuIFRoZSByZWd1bGF0b3IgZnJhbWV3b3JrIGlzIHRoZQpjb3JyZWN0
IGFic3RyYWN0aW9uIGluIHRoaXMgY2FzZSBmb3IgdG9kYXkuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
