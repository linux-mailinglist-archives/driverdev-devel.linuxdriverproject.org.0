Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0CD2AEFC8
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 12:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 516B384E8F;
	Wed, 11 Nov 2020 11:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9k9EC6tmSE8R; Wed, 11 Nov 2020 11:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D4AA85B58;
	Wed, 11 Nov 2020 11:39:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C13D1BF338
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 11:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0808786C37
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 11:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjROM-FgohTY for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 11:39:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEC9D86C35
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 11:39:01 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id y78so969475vsy.6
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 03:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T0V5oiWQkvHXwmhtDU+OoF9iMxPj6y0LTly2Lqt4DuE=;
 b=eHuOUIaS6IQ/Oqu0OgOBN3unkL3XIi+Fk4dITGJA16P8o+NlqUHYybky26m5NVdFR3
 nEj77IcCvuVVn+06U+bT8lGz7uajjKyyW7FwNmgKPtbnVhkVbc/cbaQN9K5iNZEDqwN8
 nVQaDyp75O3xA21xpf2HF2/4nmB5ZZWZ4qIBAUAFOV005XJOvP7dFdsSa13fRian8kWs
 nlTaeO+OWJaahsba2PoUYHfcaaNFyOAgkVI/2smnCnTClDA1XqlICigzABWFlOngodfE
 4zfFtHsuUV8spOrU42OjsyzgiiWT7pqurb12j6T+fkPcno/GvbG0zKznsHZsamzHUppY
 mnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T0V5oiWQkvHXwmhtDU+OoF9iMxPj6y0LTly2Lqt4DuE=;
 b=aV6Rny/eZp7XgZM6f5sb0FUaTORv1JSxgX6V94uLxUXBcecWPDYkcY+NsVq+pzCPKh
 k3XGluTzLFwtTElONwATvoQ6mmhM54iBRXPh6Y7DhPkYa3Wn+GDjY9cAK1Sc6SlvkiTd
 7NKZo1AnmWdHkoov/JH19zK+R6q7KteW5cmFswj4dMuJm3jJelxhv6YS94fXfvDeyLoG
 0PUuL85vp5gDXLy6wiYora6vJ4dyuvoCCVF5z067SXEhXnze3I+6o85FYkiLsqKykwa9
 CdsiN3+YxFuDznYZ8/k6cHIIejywdfTV6zeO4neBTXot9q7s4wlbxBT2t1ABDtpCT987
 wlIQ==
X-Gm-Message-State: AOAM53026mstMi3Ljlw87BNzzFMk+faKbBER4Wf5k70dWkUvU7S/QAbd
 ZU3k9XgmffVLHImPpmPeBdc551xDXpxqlXnvncIxIQ==
X-Google-Smtp-Source: ABdhPJycXgZgkNrggh2D47nvGhRFVQi/de+PIfj6XhXa1n8Wfiv9NfQ9xufbyRB0WVwWMZQ6Ct+Whjrl/7D/IIfrgqM=
X-Received: by 2002:a67:f417:: with SMTP id p23mr14435741vsn.42.1605094740774; 
 Wed, 11 Nov 2020 03:39:00 -0800 (PST)
MIME-Version: 1.0
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
 <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
In-Reply-To: <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 11 Nov 2020 12:38:23 +0100
Message-ID: <CAPDyKFqUMsH9dCZ=OYqfdLt==+-8NjK9n=S5jGGNXZu6Y9q=2w@mail.gmail.com>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Dmitry Osipenko <digetx@gmail.com>
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
 Viresh Kumar <viresh.kumar@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCA4IE5vdiAyMDIwIGF0IDEzOjE5LCBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gMDUuMTEuMjAyMCAxODoyMiwgRG1pdHJ5IE9zaXBlbmtvINC/0LjR
iNC10YI6Cj4gPiAwNS4xMS4yMDIwIDEyOjQ1LCBVbGYgSGFuc3NvbiDQv9C40YjQtdGCOgo+ID4g
Li4uCj4gPj4gSSBuZWVkIHNvbWUgbW9yZSB0aW1lIHRvIHJldmlldyB0aGlzLCBidXQganVzdCBh
IHF1aWNrIGNoZWNrIGZvdW5kIGEKPiA+PiBmZXcgcG90ZW50aWFsIGlzc3Vlcy4uLgo+ID4KPiA+
IFRoYW5rIHlvdSBmb3Igc3RhcnRpbmcgdGhlIHJldmlldyEgSSdtIHByZXR0eSBzdXJlIGl0IHdp
bGwgdGFrZSBhIGNvdXBsZQo+ID4gcmV2aXNpb25zIHVudGlsIGFsbCB0aGUgcXVlc3Rpb25zIHdp
bGwgYmUgcmVzb2x2ZWQgOikKPiA+Cj4gPj4gVGhlICJjb3JlLXN1cHBseSIsIHRoYXQgeW91IHNw
ZWNpZnkgYXMgYSByZWd1bGF0b3IgZm9yIGVhY2gKPiA+PiBjb250cm9sbGVyJ3MgZGV2aWNlIG5v
ZGUsIGlzIG5vdCB0aGUgd2F5IHdlIGRlc2NyaWJlIHBvd2VyIGRvbWFpbnMuCj4gPj4gSW5zdGVh
ZCwgaXQgc2VlbXMgbGlrZSB5b3Ugc2hvdWxkIHJlZ2lzdGVyIGEgcG93ZXItZG9tYWluIHByb3Zp
ZGVyCj4gPj4gKHdpdGggdGhlIGhlbHAgb2YgZ2VucGQpIGFuZCBpbXBsZW1lbnQgdGhlIC0+c2V0
X3BlcmZvcm1hbmNlX3N0YXRlKCkKPiA+PiBjYWxsYmFjayBmb3IgaXQuIEVhY2ggZGV2aWNlIG5v
ZGUgc2hvdWxkIHRoZW4gYmUgaG9va2VkIHVwIHRvIHRoaXMKPiA+PiBwb3dlci1kb21haW4sIHJh
dGhlciB0aGFuIHRvIGEgImNvcmUtc3VwcGx5Ii4gRm9yIERUIGJpbmRpbmdzLCBwbGVhc2UKPiA+
PiBoYXZlIGEgbG9vayBhdCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIv
cG93ZXItZG9tYWluLnlhbWwKPiA+PiBhbmQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3Bvd2VyL3Bvd2VyX2RvbWFpbi50eHQuCj4gPj4KPiA+PiBJbiByZWdhcmRzIHRvIHRoZSAi
c3luYyBzdGF0ZSIgcHJvYmxlbSAocHJldmVudGluZyB0byBjaGFuZ2UKPiA+PiBwZXJmb3JtYW5j
ZSBzdGF0ZXMgdW50aWwgYWxsIGNvbnN1bWVycyBoYXZlIGJlZW4gYXR0YWNoZWQpLCB0aGlzIGNh
bgo+ID4+IHRoZW4gYmUgbWFuYWdlZCBieSB0aGUgZ2VucGQgcHJvdmlkZXIgZHJpdmVyIGluc3Rl
YWQuCj4gPgo+ID4gSSdsbCBuZWVkIHRvIHRha2UgYSBjbG9zZXIgbG9vayBhdCBHRU5QRCwgdGhh
bmsgeW91IGZvciB0aGUgc3VnZ2VzdGlvbi4KPiA+Cj4gPiBTb3VuZHMgbGlrZSBhIHNvZnR3YXJl
IEdFTlBEIGRyaXZlciB3aGljaCBtYW5hZ2VzIGNsb2NrcyBhbmQgdm9sdGFnZXMKPiA+IGNvdWxk
IGJlIGEgZ29vZCBpZGVhLCBidXQgaXQgYWxzbyBjb3VsZCBiZSBhbiB1bm5lY2Vzc2FyeQo+ID4g
b3Zlci1lbmdpbmVlcmluZy4gTGV0J3Mgc2VlLi4KPiA+Cj4KPiBIZWxsbyBVbGYgYW5kIGFsbCwK
Pgo+IEkgdG9vayBhIGRldGFpbGVkIGxvb2sgYXQgdGhlIEdFTlBEIGFuZCB0cmllZCB0byBpbXBs
ZW1lbnQgaXQuIEhlcmUgaXMKPiB3aGF0IHdhcyBmb3VuZDoKPgo+IDEuIEdFTlBEIGZyYW1ld29y
ayBkb2Vzbid0IGFnZ3JlZ2F0ZSBwZXJmb3JtYW5jZSByZXF1ZXN0cyBmcm9tIHRoZQo+IGF0dGFj
aGVkIGRldmljZXMuIFRoaXMgbWVhbnMgdGhhdCBpZiBkZXZpY2VBIHJlcXVlc3RzIHBlcmZvcm1h
bmNlIHN0YXRlCj4gMTAgYW5kIHRoZW4gZGV2aWNlQiByZXF1ZXN0cyBzdGF0ZSAzLCB0aGVuIGZy
YW1ld29yayB3aWxsIHNldCBkb21haW4ncwo+IHN0YXRlIHRvIDMgaW5zdGVhZCBvZiAxMC4KPgo+
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEwLXJjMi9zb3VyY2UvZHJpdmVy
cy9iYXNlL3Bvd2VyL2RvbWFpbi5jI0wzNzYKCkFzIFZpcmVzaCBhbHNvIHN0YXRlZCwgZ2VucGQg
ZG9lcyBhZ2dyZWdhdGUgdGhlIHZvdGVzLiBJdCBldmVuCnBlcmZvcm1zIGFnZ3JlZ2F0aW9uIGhp
ZXJhcmNoeSAoYSBnZW5wZCBpcyBhbGxvd2VkIHRvIGhhdmUgcGFyZW50KHMpCnRvIG1vZGVsIGEg
dG9wb2xvZ3kpLgoKPgo+IDIuIEdFTlBEIGZyYW1ld29yayBoYXMgYSBzeW5jKCkgY2FsbGJhY2sg
aW4gdGhlIGdlbnBkLmRvbWFpbiBzdHJ1Y3R1cmUsCj4gYnV0IHRoaXMgY2FsbGJhY2sgaXNuJ3Qg
YWxsb3dlZCB0byBiZSB1c2VkIGJ5IHRoZSBHRU5QRCBpbXBsZW1lbnRhdGlvbi4KPiBUaGUgR0VO
UEQgZnJhbWV3b3JrIGFsd2F5cyBvdmVycmlkZXMgdGhhdCBjYWxsYmFjayBmb3IgaXRzIG93biBu
ZWVkcy4KPiBIZW5jZSBHRU5QRCBkb2Vzbid0IGFsbG93IHRvIHNvbHZlIHRoZSBib290c3RyYXBw
aW5nCj4gc3RhdGUtc3luY2hyb25pemF0aW9uIHByb2JsZW0gaW4gYSBuaWNlIHdheS4KPgo+IGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEwLXJjMi9zb3VyY2UvZHJpdmVycy9i
YXNlL3Bvd2VyL2RvbWFpbi5jI0wyNjA2CgpUaGF0IC0+c3luYygpIGNhbGxiYWNrIGlzbid0IHRo
ZSBjYWxsYmFjayB5b3UgYXJlIGxvb2tpbmcgZm9yLCBpdCdzIGEKUE0gZG9tYWluIHNwZWNpZmlj
IGNhbGxiYWNrIC0gYW5kIGhhcyBvdGhlciBwdXJwb3Nlcy4KClRvIHNvbHZlIHRoZSBwcm9ibGVt
IHlvdSByZWZlciB0bywgeW91ciBnZW5wZCBwcm92aWRlciBkcml2ZXIgKGEKcGxhdGZvcm0gZHJp
dmVyKSBzaG91bGQgYXNzaWduIGl0cyAtPnN5bmNfc3RhdGUoKSBjYWxsYmFjay4gVGhlCi0+c3lu
Y19zdGF0ZSgpIGNhbGxiYWNrIHdpbGwgYmUgaW52b2tlZCwgd2hlbiBhbGwgY29uc3VtZXIgZGV2
aWNlcwpoYXZlIGJlZW4gYXR0YWNoZWQgKGFuZCBwcm9iZWQpIHRvIHRoZWlyIGNvcnJlc3BvbmRp
bmcgcHJvdmlkZXIuCgpZb3UgbWF5IGhhdmUgYSBsb29rIGF0IGRyaXZlcnMvY3B1aWRsZS9jcHVp
ZGxlLXBzY2ktZG9tYWluLmMsIHRvIHNlZQphbiBleGFtcGxlIG9mIGhvdyB0aGlzIHdvcmtzLiBJ
ZiB0aGVyZSBpcyBhbnl0aGluZyB1bmNsZWFyLCBqdXN0IHRlbGwKbWUgYW5kIEkgd2lsbCB0cnkg
dG8gaGVscC4KCj4KPiAzLiBUZWdyYSBkb2Vzbid0IGhhdmUgYSBkZWRpY2F0ZWQgaGFyZHdhcmUg
cG93ZXItY29udHJvbGxlciBmb3IgdGhlIGNvcmUKPiBkb21haW4sIGluc3RlYWQgdGhlcmUgaXMg
b25seSBhbiBleHRlcm5hbCB2b2x0YWdlIHJlZ3VsYXRvci4gSGVuY2Ugd2UKPiB3aWxsIG5lZWQg
dG8gY3JlYXRlIGEgcGhvbnkgZGV2aWNlLXRyZWUgbm9kZSBmb3IgdGhlIHZpcnR1YWwgcG93ZXIK
PiBkb21haW4sIHdoaWNoIGlzIHByb2JhYmx5IGEgd3JvbmcgdGhpbmcgdG8gZG8uCgpObywgdGhp
cyBpcyBhYnNvbHV0ZWx5IHRoZSBjb3JyZWN0IHRoaW5nIHRvIGRvLgoKVGhpcyBpc24ndCBhIHZp
cnR1YWwgcG93ZXIgZG9tYWluLCBpdCdzIGEgcmVhbCBwb3dlciBkb21haW4uIFlvdSBvbmx5Cmhh
cHBlbiB0byBtb2RlbCB0aGUgY29udHJvbCBvZiBpdCBhcyBhIHJlZ3VsYXRvciwgYXMgaXQgZml0
cyBuaWNlbHkKd2l0aCB0aGF0IGZvciAqdGhpcyogU29DLiBEb24ndCBnZXQgbWUgd3JvbmcsIHRo
YXQncyBmaW5lIGFzIGxvbmcgYXMKdGhlIHN1cHBseSBpcyBzcGVjaWZpZWQgb25seSBpbiB0aGUg
cG93ZXItZG9tYWluIHByb3ZpZGVyIG5vZGUuCgpPbiBhbm90aGVyIFNvQywgeW91IG1pZ2h0IGhh
dmUgYSBkaWZmZXJlbnQgRlcgaW50ZXJmYWNlIGZvciB0aGUgcG93ZXIKZG9tYWluIHByb3ZpZGVy
IHRoYXQgZG9lc24ndCBmaXQgd2VsbCB3aXRoIHRoZSByZWd1bGF0b3IuIFdoZW4gdGhhdApoYXBw
ZW5zLCBhbGwgeW91IG5lZWQgdG8gZG8gaXMgdG8gaW1wbGVtZW50IGEgbmV3IHBvd2VyIGRvbWFp
bgpwcm92aWRlciBhbmQgcG90ZW50aWFsbHkgcmUtZGVmaW5lIHRoZSBwb3dlciBkb21haW4gdG9w
b2xvZ3kuIE1vcmUKaW1wb3J0YW50bHksIHlvdSBkb24ndCBuZWVkIHRvIHJlLWludmVudCB5ZXQg
YW5vdGhlciBzbGV3IG9mIGRldmljZQpzcGVjaWZpYyBiaW5kaW5ncyAtIGZvciBlYWNoIFNvQy4K
Cj4KPiA9PT0KPgo+IFBlcmhhcHMgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGNyZWF0ZSBzb21l
IGhhY2tzIHRvIHdvcmsgYXJvdW5kCj4gYnVsbGV0cyAyIGFuZCAzIGluIG9yZGVyIHRvIGFjaGll
dmUgd2hhdCB3ZSBuZWVkIGZvciBEVkZTIG9uIFRlZ3JhLCBidXQKPiBidWxsZXQgMSBpc24ndCBz
b2x2YWJsZSB3aXRob3V0IGNoYW5naW5nIGhvdyB0aGUgR0VOUEQgY29yZSB3b3Jrcy4KPgo+IEFs
dG9nZXRoZXIsIHRoZSBHRU5QRCBpbiBpdHMgY3VycmVudCBmb3JtIGlzIGEgd3JvbmcgYWJzdHJh
Y3Rpb24gZm9yIGEKPiBzeXN0ZW0td2lkZSBEVkZTIGluIGEgY2FzZSB3aGVyZSBtdWx0aXBsZSBk
ZXZpY2VzIHNoYXJlIHBvd2VyIGRvbWFpbiBhbmQKPiB0aGlzIGRvbWFpbiBpcyBhIHZvbHRhZ2Ug
cmVndWxhdG9yLiBUaGUgcmVndWxhdG9yIGZyYW1ld29yayBpcyB0aGUKPiBjb3JyZWN0IGFic3Ry
YWN0aW9uIGluIHRoaXMgY2FzZSBmb3IgdG9kYXkuCgpXZWxsLCBJIGFkbWl0IGl0J3MgYSBiaXQg
Y29tcGxleC4gQnV0IGl0IHNvbHZlcyB0aGUgcHJvYmxlbSBpbiBhCm5pY2VseSBhYnN0cmFjdGVk
IHdheSB0aGF0IHNob3VsZCB3b3JrIGZvciBldmVyeWJvZHksIGF0IGxlYXN0IGluIG15Cm9waW5p
b24uCgpBbHRob3VnaCwgbGV0J3Mgbm90IGV4Y2x1ZGUgdGhhdCB0aGVyZSBhcmUgcGllY2VzIG1p
c3NpbmcgaW4gZ2VucGQgb3IKdGhlIG9wcCBsYXllciwgYXMgdGhpcyBEVkZTIGZlYXR1cmUgaXMg
cmF0aGVyIG5ldyAtIGJ1dCB0aGVuIHdlIHNob3VsZApqdXN0IGV4dGVuZC9maXggaXQuCgpLaW5k
IHJlZ2FyZHMKVWZmZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
