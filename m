Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA7B3755A8
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 May 2021 16:29:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DEE283A7E;
	Thu,  6 May 2021 14:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mVRGjV4yIxU6; Thu,  6 May 2021 14:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90387832E6;
	Thu,  6 May 2021 14:29:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BD851BF2A5
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 14:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87A1E40277
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 14:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ndufresne-ca.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23EuZAuoodxN for <devel@linuxdriverproject.org>;
 Thu,  6 May 2021 14:29:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3662C401EB
 for <devel@driverdev.osuosl.org>; Thu,  6 May 2021 14:29:14 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id l129so5053709qke.8
 for <devel@driverdev.osuosl.org>; Thu, 06 May 2021 07:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=GW95dzInD2TKzR0jdVkWnUZGwBXxcKhZ1/8vg5w2zVE=;
 b=0u96e57Z+1xVtYpsdQo9L1gyUGGB/AdDb46/CNeCtQ1aivWcYlLssYV+UVDb2UtD5W
 wJ7aW5jYyVAtsxe9bwsZ6SXMC7AXzW1Rz3VkMZUhah3G4NucVM+253gX+w4o+a6Z4Say
 hRA9NV69eYJDUQzhQbp8A1ha2PiIqDjJqT8b2jARnGRGh42FoeIy+Qus7g534T0Gswhn
 OzFnI/4JOcA2UPema641K+sOCPWv0KdYlXxGmElG4VZZcxZ/zXg1GDCEMvM75nfr2GmC
 7ktrMxnU8BaSoUq3H2sDXb9ZJCvggHl70bcfut4Hm8S74xMtuHjlT65I+aUF0g1Mqiaf
 BLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=GW95dzInD2TKzR0jdVkWnUZGwBXxcKhZ1/8vg5w2zVE=;
 b=eyp8rqTr+dHai4txRm55Zf3iZfKVVbj6d42xU36GPpaYnmDdTPusq3TlVeJTgi4kpf
 C+kmtbWqAcq8TfwrNhFZ8R7RBlCibUd59znUENZ5N6NWC96Yt77UoF6T942fZ7SyVAkO
 SHsY2ERb0rCBi55vuUSCOHDhgk9b5jOPTD5KR1c20fV/fdy+awisbikX1t42rm2CsrRB
 Vb9bTtZ1P/Sc5A8kLNvTLbvalij/Q5XafliGP6+lV3XVsg4B8r+rt7Ai/Cv0NlI0uCce
 UBuZd32ybn0idmLl4B8+qw1bC4hjWQJwbZUS7yc7U8O7RrZQ72r9ZbN92sZOTZNbyfgg
 BswA==
X-Gm-Message-State: AOAM530iBFbAffmyojs+hxRM3tNRsCOe/8FJb95LgOs6L7Yk3/HnA69p
 FLunbwEuwdCcyceRhCUUJP8zLw==
X-Google-Smtp-Source: ABdhPJwBLjKNP6aEe8hFOPRHRhSRkv5wP+9YODtFwFW5GW5DmRxNW2uhWkdMbMheliE8NhBkXiyRyQ==
X-Received: by 2002:a05:620a:a5a:: with SMTP id
 j26mr4167891qka.156.1620311352924; 
 Thu, 06 May 2021 07:29:12 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id h62sm2005578qkf.116.2021.05.06.07.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 07:29:11 -0700 (PDT)
Message-ID: <15e2b577e84ef19bfcfcbb23a7ea2bf63abefdb3.camel@ndufresne.ca>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: John Cox <jc@kynesim.co.uk>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Date: Thu, 06 May 2021 10:29:09 -0400
In-Reply-To: <n7q79gl86gvdo00sgsg1r5beittohsu4ta@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
 <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
 <n7q79gl86gvdo00sgsg1r5beittohsu4ta@4ax.com>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 cphealy@gmail.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgamV1ZGkgMDYgbWFpIDIwMjEgw6AgMTQ6MTEgKzAxMDAsIEpvaG4gQ294IGEgw6ljcml0wqA6
Cj4gPiBPbiAwNS8wNS8yMDIxIDE3OjIwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+ID4g
Cj4gPiA+IExlIDA1LzA1LzIwMjEgw6AgMTY6NTUsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+
ID4gPiA+IE9uIDIwLzA0LzIwMjEgMTQ6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4g
PiA+ID4gVGhlIEhFVkMgSEFOVFJPIGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSBudW1iZXIgb2Yg
Yml0cyB0byBza2lwIGF0Cj4gPiA+ID4gPiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFk
ZXIuCj4gPiA+ID4gPiBUaGF0IGlzIGEgaGFyZHdhcmUgc3BlY2lmaWMgcmVxdWlyZW1lbnQgc28g
Y3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPiA+ID4gPiA+IGZvciB0aGlzIHB1cnBvc2UuCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiDCoMKg
Li4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0ICAgIHwgMTkKPiA+ID4g
PiA+ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gPiA+IMKgwqAuLi4vdXNlcnNwYWNlLWFwaS9t
ZWRpYS9kcml2ZXJzL2luZGV4LnJzdCAgICAgfCAgMSArCj4gPiA+ID4gPiDCoMKgaW5jbHVkZS9t
ZWRpYS9oZXZjLWN0cmxzLmggICAgICAgICAgICAgICAgICAgIHwgMTMgKysrKysrKysrKysrKwo+
ID4gPiA+ID4gwqDCoDMgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4g
wqDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS0KPiA+ID4gPiA+
IGFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5y
c3QKPiA+ID4gPiA+IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMv
aGFudHJvLnJzdAo+ID4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gPiA+IGluZGV4
IDAwMDAwMDAwMDAwMC4uY2Q5NzU0YjRlMDA1Cj4gPiA+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+
ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50
cm8ucnN0Cj4gPiA+ID4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiA+ID4gPiArLi4gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtIYW50cm8gdmlk
ZW8gZGVjb2RlciBkcml2ZXIKPiA+ID4gPiA+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT0K
PiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGlt
cGxlbWVudHMgdGhlIGZvbGxvd2luZyBkcml2ZXItCj4gPiA+ID4gPiBzcGVjaWZpYyBjb250cm9s
czoKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtgYFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hF
QURFUl9TS0lQIChpbnRlZ2VyKWBgCj4gPiA+ID4gPiArICAgIFNwZWNpZmllcyB0byBIYW50cm8g
SEVWQyB2aWRlbyBkZWNvZGVyIGRyaXZlciB0aGUgbnVtYmVyIG9mIGRhdGEKPiA+ID4gPiA+IChp
biBiaXRzKSB0bwo+ID4gPiA+ID4gKyAgICBza2lwIGluIHRoZSBzbGljZSBzZWdtZW50IGhlYWRl
ci4KPiA+ID4gPiA+ICsgICAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBnbyBm
cm9tIHN5bnRheCBlbGVtZW50Cj4gPiA+ID4gPiAicGljX291dHB1dF9mbGFnIgo+ID4gPiA+ID4g
KyAgICB0byBiZWZvcmUgc3ludGF4IGVsZW1lbnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVk
X2ZsYWciLgo+ID4gPiA+ID4gKyAgICBJZiBJRFIsIHRoZSBza2lwcGVkIGJpdHMgYXJlIGp1c3Qg
InBpY19vdXRwdXRfZmxhZyIKPiA+ID4gPiA+ICsgICAgKHNlcGFyYXRlX2NvbG91cl9wbGFuZV9m
bGFnIGlzIG5vdCBzdXBwb3J0ZWQpLgo+ID4gPiA+IEknbSBub3QgdmVyeSBrZWVuIG9uIHRoaXMu
IFdpdGhvdXQgdGhpcyBpbmZvcm1hdGlvbiB0aGUgdmlkZW8gZGF0YQo+ID4gPiA+IGNhbm5vdCBi
ZQo+ID4gPiA+IGRlY29kZWQsIG9yIHdpbGwgaXQganVzdCBiZSBzdWJvcHRpbWFsPwo+ID4gPiAK
PiA+ID4gV2l0aG91dCB0aGF0IGluZm9ybWF0aW9uIHRoZSB2aWRlbyBjYW4ndCBiZSBkZWNvZGVk
Lgo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGEgZ2VuZXJpYyBk
ZWNvZGVyIHdvdWxkIGhhdmUgdG8ga25vdyB0aGF0IHRoZSBIVyBpcwo+ID4gPiA+IGEgaGFudHJv
LAo+ID4gPiA+IGFuZCB0aGVuIGNhbGwgdGhpcyBjb250cm9sLiBJZiB0aGV5IGRvbid0IChhbmQg
YXJlIHRlc3Rpbmcgb24gbm9uLWhhbnRybwo+ID4gPiA+IEhXKSwgdGhlbgo+ID4gPiA+IGl0IHdv
bid0IHdvcmssIHRodXMgZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRlcGVuZGVu
dCBkZWNvZGVyCj4gPiA+ID4gQVBJLgo+ID4gPiA+IAo+ID4gPiA+IFNpbmNlIGhhbnRybyBpcyB3
aWRlbHkgdXNlZCwgYW5kIGlmIHRoZXJlIGlzIG5vIG90aGVyIHdheSB0byBkbyB0aGlzCj4gPiA+
ID4gYmVzaWRlIGV4cGxpdGVseQo+ID4gPiA+IHNldHRpbmcgdGhpcyBjb250cm9sLCB0aGVuIHBl
cmhhcHMgdGhpcyBzaG91bGQgYmUgcGFydCBvZiB0aGUgc3RhbmRhcmQKPiA+ID4gPiBIRVZDIEFQ
SS4KPiA+ID4gPiBOb24taGFudHJvIGRyaXZlcnMgdGhhdCBkbyBub3QgbmVlZCB0aGlzIGNhbiBq
dXN0IHNraXAgaXQuCj4gPiA+IAo+ID4gPiBFdmVuIGlmIEkgcHV0IHRoaXMgcGFyYW1ldGVyIGlu
IGRlY29kZV9wYXJhbXMgc3RydWN0dXJlIHRoYXQgd291bGQgbWVhbnMKPiA+ID4gdGhhdCBhIGdl
bmVyaWMKPiA+ID4gdXNlcmxhbmQgZGVjb2RlciB3aWxsIGhhdmUgdG8ga25vdyBob3cgdGhlIGNv
bXB1dGUgdGhpcyB2YWx1ZSBmb3IgaGFudHJvCj4gPiA+IEhXIHNpbmNlIGl0Cj4gPiA+IGlzbid0
IHNvbWV0aGluZyB0aGF0IGNvdWxkIGJlIGRvbmUgb24ga2VybmVsIHNpZGUuCj4gPiAKPiA+IEJ1
dCBzaW5jZSBoYW50cm8gaXMgdmVyeSBjb21tb24sIGFueSB1c2VybGFuZCBkZWNvZGVyIHdpbGwg
bmVlZCB0byBjYWxjdWxhdGUKPiA+IHRoaXMgYW55d2F5Lgo+ID4gU28gcGVyaGFwcyBpdCBpcyBi
ZXR0ZXIgdG8gaGF2ZSB0aGlzIGFzIHBhcnQgb2YgdGhlIGRlY29kZV9wYXJhbXM/Cj4gPiAKPiA+
IEknZCBsaWtlIHRvIGtub3cgd2hhdCBvdGhlcnMgdGhpbmsgYWJvdXQgdGhpcy4KPiAKPiBJIGRv
bid0IGtub3cgZXhhY3RseSB3aGF0IEkgdGhpbmsgb24gdGhpcyAtIGl0cyBhbGwgYSBiaXQgb2Yg
YSBtZXNzLiBJCgpUaGVyZSBpcyBubyBiZXR0ZXIgd2F5IHRvIGRlc2NyaWJlIHRoZSBzdGF0ZSBv
ZiBteSBvd24gb3BpbmlvbiBhYm91dCB0aGlzLgoKPiBkb24ndCB0aGluayB0aGlzIGlzIGdvaW5n
IHRvIGJlIHRoZSBsYXN0IEhFVkMgZGVjb2RlciB0aGF0IG5lZWRzIHNvbWUKPiBub24tc3RhbmRh
cmQgc2V0dXAgdGhhdCBjYW4ndCBiZSB0cml2aWFsbHkgZXh0cmFjdGVkIGZyb20gYSBzdGFuZGFy
ZAo+IHNsaWNlIGhlYWRlciBwYXJzZS4gU28gaWYgZnV0dXJlIGRlY29kZXJzIGFyZSBnb2luZyB0
byBoYXZlIHRvIGdlbmVyYXRlCj4gY3VzdG9tIGF0dHJpYnV0ZXMgdG8gY29wZSB3aXRoIHRoZWly
IHF1aXJrcyB0aGVuIEhhbnRybyBwcm9iYWJseSBzaG91bGQKPiB0b28uIEFuZCBpZiBIYW50cm8g
aXMgY29tbW9uIHRoZW4gdGhlIHVzZXJzcGFjZSBwcm9ncyB3aWxsIGF0IGxlYXN0IGhhdmUKPiBh
IGZyYW1ld29yayBmb3IgZGVhbGluZyB3aXRoIHRoaXMgc29ydCBvZiB0aGluZyBzbyB3aGVuIHRo
ZSBuZXh0IG9kZGl0eQo+IGNvbWVzIGFsb25nLgoKVG8gYWRkIHRvIHRoaXMsIHdoZW4gd2UgbW92
ZWQgaXQgb3V0IG9mIHRoZSBkZWNvZGVfcGFyYW1zLCB3ZSB3ZXJlIGFjdHVhbGx5Cm1ha2luZyBp
dCBhbiBleGFtcGxlLiBXZSB1c2UgbGFyZ2Ugc3RydWN0dXJlIGZvciB0aGUgY29tbW9uIHN0dWZm
IGJlY2F1c2UgaXMKY29udmVuaWVudCwgYnV0IHdpdGggdGhlIGN1cnJlbnQgaW5mcmFzdHJ1Y3R1
cmUsIHRoZSBjb3N0IG9mIGFkZGluZyBjb250cm9scyBpcwpyYXRoZXIgbG93LgoKU28gd2UgbmVl
ZCB0byB0aGluayBpZiB3ZSB3YW50IHRvIGhpZGUgb3IgaGlnaGxpZ2h0IHdoYXQgbG9va3MgbGlr
ZSBoYXJkd2FyZQpkZXNpZ24gc3BlY2lmaWMgbmVlZHMuIFRoZXJlIGlzIG5vdGhpbmcgcGFydGlj
dWxhcmx5IHdyb25nIGluIHRoZSBoYXJkd2FyZSwgYXMKSGFudHJvIHRyYWRpdGlvbmFsbHkgcGFy
c2UgYSBsb3Qgb2YgdGhlIGhlYWRlcnMsIGJ1dCBJIHN1cHBvc2UgdGhleSBkb24ndCByZWFsbHkK
d2FudCB0byBpbXBsZW1lbnQgc2tpcCBwYXJzZXJzIGJlY2F1c2UgYXQgc29tZSBwb2ludCB0aGUg
aGFyZHdhcmUgYmVjb21lcyBxdWl0ZQpiaWcgYW5kIGNvbXBsZXgsIHNraXBwaW5nIGJpdHMgaXMg
anVzdCB0cml2aWFsLgoKT25lIHRoaW5nIEkndmUgYmVlbiBkaXNjdXNzaW5nIHdpdGggQmVuamFt
aW4geWVzdGVyZGF5IGlzIHRoYXQgd2hpbGUgc3BsaXR0aW5nLAp3ZSBhbHNvIG1hZGUgdGhlIGRh
dGEgZXhhY3RseSB3aGF0IHRoZSBIVyB3YW50cywgd2hpY2ggaXMgYSBza2lwLiBBIG1vcmUKcmV1
c2FibGUgcmVwcmVzZW50YXRpb24gd291bGQgaGF2ZSBiZWVuIHRvIHByb3ZpZGUgdHdvIG9mZnNl
dHMgaW4gdGhlIGhlYWRlci4KVGhpcyB3YXkgaWYgYW5vdGhlciBIVyBuZWVkIGEgZGlmZmVyZW50
IHNraXAsIGJ1dCB3aXRoIGEgZGlmZmVyZW50IHN0b3AKcG9zaXRpb24sIHlvdSBjYW4gc2hhcmUg
dGhlIHN0YXJ0IHBvc2l0aW9uLiBUaG91Z2gsIGl0J3Mgbm8gbG9uZ2VyIGEgMToxIG1hdGNoCndp
dGggaG93IHRoZSBIVyBpcyBwcm9ncmFtbWVkLCBzbyBub3QgYW4gZWFzeSBjYWxsLgoKQXMgZm9y
IGhhdmluZyBtb3JlIHF1aXJrcyBpbiBtb3JlIEhXLCB0aGUgbmV3ZXIgY2hpcHMgYXJlIGRlc2ln
bmVkIHdpdGggYQpjb25zdHJhaW50cyB0aGVzZSBkYXlzLiBBcyBhbiBleGFtcGxlLCB5b3Ugd2ls
bCBub3RpY2UgdGhhdCBpbnNpZGUgbXBwIChyb2NrY2hpcApsaWJyYXJ5KSB0aGV5IHVzZSBNaWNy
b3NvZnQgRFhWQSBwYXJhbWV0ZXJzIGFuZCB1c2UgdGhhdCBhcyBhIGNvbnRyYWludCBkdXJpbmcK
dGhlIGRlc2lnbi4gRnJvbSBjb21tZW50IEFsZXggbWFkZSBhcm91bmQgTWVkaWF0ZWssIHRoZXkg
YWN0dWFsbHkgdXNlZCBHb29nbGUKZG93bnN0cmVhbSBMaW51eCBBUEkgYXMgYSBjb25zdHJhaW50
LiBBcyB3ZSBkbyBjb3ZlciBleGlzdGluZyBBUEkgbGlrZSBEWFZBLApOVkRFQyBhbmQgVkEgYXMg
ZmFyIGFzIG15IHJldmlldyB3ZW50LiBJIGRvbid0IHJlYWxseSBleHBlY3QgaW4gZmFjdCBuZXdl
cgpkZXNpZ24gdG8gcmVxdWlyZSBxdWlya3MvZXh0ZW5zaW9ucyBzbyBvZnRlbiwgYnV0IG1ha2lu
ZyB0aGlzIG9uZSBhIHNwbGl0CmNvbnRyb2wgd291bGQgc2VydmUgYXMgYW4gZXhhbXBsZSBob3cg
dG8ga2VlcCB0aGluZ3MgY2xlYXIuCgpOb3csIHdoYXQgSSBiZWxpZXZlIGlzIG1pc3NpbmcgaW4g
dGhlIHN0b3J5IGlzIGEgd2F5IGZvciB1c2Vyc3BhY2UgdG8gZGV0ZWN0CnRoYXQgZXh0cmEgKG5v
biBzdGFuZGFyZCkgY29udHJvbHMgYXJlIG5lZWRlZC4gVGhlcmUgbWlnaHQgYmUgb3RoZXIgc3Vw
cG9ydApkZWNvZGVyIG9uIHRoZSBwbGF0Zm9ybSwgb3IgZXZlbiBhIHNvZnR3YXJlIGRlY29kZXIg
bWF5IGJlIG1vcmUgc3VpdGFibGUgZm9yIHRoZQp1c2UgY2FzIHRoZW4gYSBjb3JydXB0ZWQgb3V0
cHV0ICh3aGljaCBpcyB3aGF0IGhhcHBlbnMgaWYgeW91IGlnbm9yZSB0aGUgaGFudHJvCmNvbnRy
b2wpLiBTbyBwZXJoYXBzIHdlIHNob3VsZCB0aGluayBvZiB3YXkgdG8gZmxhZyB0aGUgcmVxdWly
ZW1lbnQgZm9yIHNvbWUKZXh0cmEgY29udHJvbHMuIFBlcmhhcHMgaW4gdGhlIGZvcm0gb2YgYSBi
aXRtYXNrIG9mIHF1aXJrcywgc28gdGhlIHVzZXJzcGFjZSBjYW4KY2hlY2sgZWFybHkgaWYgaXQg
aGFzIHRoZSByZXF1aXJlZCBpbXBsZW1lbnRhdGlvbiBhbmQgZmFsbGJhY2sgdG8gc29tZXRoaW5n
IGVsc2UKaWYgbm90LgoKVGhpcyBpcyB0aGUgdHlwZSBvZiBBUEkgbWlzc2luZyB3ZSBoYXZlIGhh
ZCBpbiBtYW55IG90aGVyIHBsYWNlcyBpbiB0aGUgZmFzdCwgd2UKZGlkIGZpeCBpdCBhZnRlciB0
aGF0IGZhY3QsIHdoaWNoIHdhcyBub3QgaWRlYWwsIGJ1dCBzdGlsbCBhY2NlcHRhYmxlLiBTbyBJ
J20Kbm90IGxpa2Ugb2ggbm8sIHdlIHNjcmV3ZWQgdXAgdGhlIG90aGVyIHN0YWJsZSBBUEkuIEJ1
dCB3ZSBoYXZlIGEgdXNlIGNhc2UgaGVyZSwKcGVyaGFwcyB3ZSBjYW4gbGVhcm4gZnJvbSBpdCA/
CgpwLnMuIEkgdHJ5IHRvIGF2b2lkIGV4dGVuc2lvbnMgYXMgdGhpcyBtYWtlcyBtZSB0aGluayBv
ZiB0aGUgZXh0cmEgcGFyZW1ldGVycwphc3NvY2lhdGVzIHdpdGggdGhlIGJpdHN0cmVhbSBwcm9m
aWxlIHdlIG1heSBub3Qgc3VwcG9ydC4gV2UgYWxyZWFkeSBwcm92aWRlCmxpc3Qgb2Ygc3VwcG9y
dCBwcm9maWxlcywgYW5kIGhhdmUgYSBnb29kIHN0b3J5LCB0ZXN0ZWQgd2l0aCBzdGF0ZWZ1bCBk
ZWNvZGVyIG9uCmhvdyB0byBpbnRyb2R1Y2UgbmV3IHBhcmVtdGVycyBhbG9uZyB3aXRoIG5ldyBw
cm9maWxlcy4KCnAucy4gTm90aWNlIHRoYXQgaWYgd2Ugd2FudCB0byByZXZpdmUgdGhlIFZBIGRy
aXZlciAoVkEgZG9lcyBub3QgaGF2ZSB0aGlzCnNraXApLCB3ZSBuZWVkIHRvIHN0b3AgbW9kaWZ5
aW5nIHRoZSBWQSBBUEksIGFuZCBqdXN0IHJlLXBhcnNlIHdoYXRldmVyIGlzCm1pc3NpbmcuIEhh
dmluZyBhIHNlcGFyYXRlIGNvbnRyb2wgY2FuIGJlIHVzZWQgYXMgYSBjbGVhciBpbmRpY2F0aW9u
IHRoYXQgZG91YmxlCnBhcnNpbmcgaXMgbm90IG5lZWRlZCBmb3IgdGhlIHNwZWNpZmljIGltcGxl
bWVudGF0aW9uLiBTYW1lIHdvdWxkIGFwcGx5IGlmIHNvbWUKV2luZSBmb2xrcyB3YW50IHRvIGVt
dWxhdGUgRFhWQSBvdmVyIFY0TDIgQVBJICh0aG91Z2ggdW5saWtlbHkgYXMgdGhpcyBpcyByYXJl
bHkKc2VlbiBvbiBkZXNrdG9wKS4KCj4gCj4gUmVnYXJkcwo+IAo+IEpvaG4gQ294Cj4gCj4gPiBS
ZWdhcmRzLAo+ID4gCj4gPiAJSGFucwo+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gUmVnYXJkcywK
PiA+ID4gQmVuamFtaW4KPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gUmVnYXJkcywKPiA+ID4gPiAK
PiA+ID4gPiAJSGFucwo+ID4gPiA+IAo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKy4uIG5vdGU6Ogo+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICAgVGhpcyBjb250cm9sIGlzIG5vdCB5ZXQgcGFy
dCBvZiB0aGUgcHVibGljIGtlcm5lbCBBUEkgYW5kCj4gPiA+ID4gPiArICAgICAgICBpdCBpcyBl
eHBlY3RlZCB0byBjaGFuZ2UuCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4gPiA+ID4gPiBiL0RvY3VtZW50
YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+ID4gPiA+ID4gaW5k
ZXggMWE5MDM4ZjVmOWZhLi4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPiA+ID4gPiA+
ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJz
dAo+ID4gPiA+ID4gQEAgLTMzLDYgKzMzLDcgQEAgRm9yIG1vcmUgZGV0YWlscyBzZWUgdGhlIGZp
bGUgQ09QWUlORyBpbiB0aGUgc291cmNlCj4gPiA+ID4gPiBkaXN0cmlidXRpb24gb2YgTGludXgu
Cj4gPiA+ID4gPiDCoMKgCj4gPiA+ID4gPiDCoMKgCWNjcwo+ID4gPiA+ID4gwqDCoAljeDIzNDF4
LXVhcGkKPiA+ID4gPiA+ICsgICAgICAgIGhhbnRybwo+ID4gPiA+ID4gwqDCoAlpbXgtdWFwaQo+
ID4gPiA+ID4gwqDCoAltYXgyMTc1Cj4gPiA+ID4gPiDCoMKgCW1leWUtdWFwaQo+ID4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oIGIvaW5jbHVkZS9tZWRpYS9o
ZXZjLWN0cmxzLmgKPiA+ID4gPiA+IGluZGV4IDhlMDEwOWVlYTQ1NC4uYjcxM2VlZWQxOTE1IDEw
MDY0NAo+ID4gPiA+ID4gLS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiA+ID4gPiA+
ICsrKyBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gPiA+ID4gPiBAQCAtMjI0LDQgKzIy
NCwxNyBAQCBzdHJ1Y3QgdjRsMl9jdHJsX2hldmNfZGVjb2RlX3BhcmFtcyB7Cj4gPiA+ID4gPiDC
oMKgCV9fdTY0CWZsYWdzOwo+ID4gPiA+ID4gwqDCoH07Cj4gPiA+ID4gPiDCoMKgCj4gPiA+ID4g
PiArLyogIE1QRUctY2xhc3MgY29udHJvbCBJRHMgc3BlY2lmaWMgdG8gdGhlIEhhbnRybyBkcml2
ZXIgYXMgZGVmaW5lZAo+ID4gPiA+ID4gYnkgVjRMMiAqLwo+ID4gPiA+ID4gKyNkZWZpbmUKPiA+
ID4gPiA+IFY0TDJfQ0lEX0NPREVDX0hBTlRST19CQVNFCQkJCShWNEwyX0NUUkxfQ0xBU1NfQ09E
RUMgfCAweDEyMDApCj4gPiA+ID4gPiArLyoKPiA+ID4gPiA+ICsgKiBWNEwyX0NJRF9IQU5UUk9f
SEVWQ19TTElDRV9IRUFERVJfU0tJUCAtCj4gPiA+ID4gPiArICogdGhlIG51bWJlciBvZiBkYXRh
IChpbiBiaXRzKSB0byBza2lwIGluIHRoZQo+ID4gPiA+ID4gKyAqIHNsaWNlIHNlZ21lbnQgaGVh
ZGVyLgo+ID4gPiA+ID4gKyAqIElmIG5vbi1JRFIsIHRoZSBiaXRzIHRvIGJlIHNraXBwZWQgZ28g
ZnJvbSBzeW50YXggZWxlbWVudAo+ID4gPiA+ID4gInBpY19vdXRwdXRfZmxhZyIKPiA+ID4gPiA+
ICsgKiB0byBiZWZvcmUgc3ludGF4IGVsZW1lbnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVk
X2ZsYWciLgo+ID4gPiA+ID4gKyAqIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAi
cGljX291dHB1dF9mbGFnIgo+ID4gPiA+ID4gKyAqIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxh
ZyBpcyBub3Qgc3VwcG9ydGVkKS4KPiA+ID4gPiA+ICsgKi8KPiA+ID4gPiA+ICsjZGVmaW5lCj4g
PiA+ID4gPiBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUAkoVjRMMl9DSURf
Q09ERUNfSEFOVFJPX0JBU0UgKyAwKQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gwqDCoCNlbmRpZgo+
ID4gPiA+ID4gCj4gPiA+ID4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
