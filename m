Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F1387E4D
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 19:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B120A843C8;
	Tue, 18 May 2021 17:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbFqsa_kEQwd; Tue, 18 May 2021 17:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5DAF843BD;
	Tue, 18 May 2021 17:18:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50CA71BF2AF
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 17:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4D3C840534
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 17:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ndufresne-ca.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDbSt4Rbvpuk for <devel@linuxdriverproject.org>;
 Tue, 18 May 2021 17:18:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E214403CF
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 17:18:00 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id k19so8046758qta.2
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 10:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=qJf1xQ+28NnAlK43hj654qEgRrKzipkMXHBsgZzKcQQ=;
 b=jl6nkGRna7urQ78bL7v3bD+QWmlbdVa0MQHADOJeyhwz5p+pm3dVfDF4Te1IzBnPL7
 nlKlPY7CTKcz+kTFU2RxALOk9jUpTe/G/SvqO+4OskPULcE8x7GgnHABgk9/Rv2fkQlM
 rwghuG9qsgzsONAauvf0CRd9lzs9dI2raXJgGQDYKIdZXtN3zraMQXoz/Zly0TPeBva+
 eTiDhnjBoqmJ2MPmOAkfj3DEVLanSR3mRQiv7URcyEm/vqGpN9Adqqm0zmQdgKWvzbAd
 NlKOTlxFnfOBEBWDbE6gQwbfKR+L3/XaMIEMDs3Ct3jN/CcqK/lOXtr/fZqK0GPWIwMc
 /3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=qJf1xQ+28NnAlK43hj654qEgRrKzipkMXHBsgZzKcQQ=;
 b=H34xbPn9Xog9yUB8/OOkzF/JR39M76B5NEM/PHzi82Cc/yzMzGkGOu8BDtPTL8BCcX
 Sbx8lq5isKKWUB/cTHw56Qcu2T6UFzbDLCXQVKyb1COzlv6uMVv2BeWnlFs3PQikxf1n
 S1leH8q6VYXEA9JnsiJBho3yUKF8Vu1DHMZQ7ih/6+XHxhGYTvKawd0EHs10O/nDsFBG
 bdzkBChRvMsPr1zsBd/rlAjc1nuPhywWj7yKQuSS9/22IPqpbA7YDpyEQX53xFX6yl7D
 Dm3rC/2PnGkHbFHT+6a/1hk+ZQooc6klxTvbOvHEfj6CYyFWA7E+AVmLH1OmM6RS9Lfk
 rZzA==
X-Gm-Message-State: AOAM531SMH58cX0IpEhrZEnclL3eXRsWUgeqPQYqJdc9o7GehGNqoG2o
 C8AWpv2qqjVnMKnHaBTGOhIzKQ==
X-Google-Smtp-Source: ABdhPJwFCakSIEdHaGsprjjlr1VL3AJif3L4ZlgN9vty0qn+s/kb3sZ+RVbgOyQON0pjsh4rPin//A==
X-Received: by 2002:ac8:5846:: with SMTP id h6mr5915303qth.215.1621358278997; 
 Tue, 18 May 2021 10:17:58 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id b3sm11931277qtg.55.2021.05.18.10.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 10:17:58 -0700 (PDT)
Message-ID: <a473ea02de9b54482c1d2c82db2e4c7512920022.camel@ndufresne.ca>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>,  p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org,  shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com,  lee.jones@linaro.org,
 gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 emil.l.velikov@gmail.com
Date: Tue, 18 May 2021 13:17:56 -0400
In-Reply-To: <f46b9c889914360348f218b45f10a06bd1bd8595.camel@collabora.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
 <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
 <f46b9c889914360348f218b45f10a06bd1bd8595.camel@collabora.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgZGltYW5jaGUgMTYgbWFpIDIwMjEgw6AgMjA6MDQgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBh
IMOpY3JpdMKgOgo+IEhpIEhhbnMsCj4gCj4gT24gVGh1LCAyMDIxLTA1LTA2IGF0IDE0OjUwICsw
MjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiBPbiAwNS8wNS8yMDIxIDE3OjIwLCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPiA+ID4gCj4gPiA+IExlIDA1LzA1LzIwMjEgw6AgMTY6NTUsIEhh
bnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+ID4gPiA+IE9uIDIwLzA0LzIwMjEgMTQ6MTAsIEJlbmph
bWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiA+ID4gVGhlIEhFVkMgSEFOVFJPIGRyaXZlciBuZWVk
cyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4gPiA+ID4gPiB0aGUgYmVn
aW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4gPiA+ID4gPiBUaGF0IGlzIGEgaGFyZHdhcmUg
c3BlY2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPiA+ID4g
PiA+IGZvciB0aGlzIHB1cnBvc2UuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4g
PiA+ID4gLS0tCj4gPiA+ID4gPiDCoCAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hh
bnRyby5yc3TCoMKgwqAgfCAxOSArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiDCoCAuLi4v
dXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdMKgwqDCoMKgIHzCoCAxICsKPiA+
ID4gPiA+IMKgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5owqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfCAxMyArKysrKysrKysrKysrCj4gPiA+ID4gPiDCoCAzIGZpbGVz
IGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKykKPiA+ID4gPiA+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4g
PiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1h
cGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+ID4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiA+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Q5NzU0YjRlMDA1Cj4gPiA+ID4gPiAtLS0g
L2Rldi9udWxsCj4gPiA+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvZHJpdmVycy9oYW50cm8ucnN0Cj4gPiA+ID4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiA+ID4g
PiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ICtIYW50cm8gdmlkZW8gZGVjb2RlciBkcml2ZXIKPiA+ID4gPiA+ICs9PT09PT09PT09PT09
PT09PT09PT09PT09PT0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtUaGUgSGFudHJvIHZpZGVvIGRl
Y29kZXIgZHJpdmVyIGltcGxlbWVudHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29u
dHJvbHM6Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArYGBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElD
RV9IRUFERVJfU0tJUCAoaW50ZWdlcilgYAo+ID4gPiA+ID4gK8KgwqDCoCBTcGVjaWZpZXMgdG8g
SGFudHJvIEhFVkMgdmlkZW8gZGVjb2RlciBkcml2ZXIgdGhlIG51bWJlciBvZiBkYXRhIChpbiBi
aXRzKSB0bwo+ID4gPiA+ID4gK8KgwqDCoCBza2lwIGluIHRoZSBzbGljZSBzZWdtZW50IGhlYWRl
ci4KPiA+ID4gPiA+ICvCoMKgwqAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBn
byBmcm9tIHN5bnRheCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiA+ID4gPiArwqDCoMKg
IHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxh
ZyIuCj4gPiA+ID4gPiArwqDCoMKgIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAi
cGljX291dHB1dF9mbGFnIgo+ID4gPiA+ID4gK8KgwqDCoCAoc2VwYXJhdGVfY29sb3VyX3BsYW5l
X2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4gPiA+ID4gSSdtIG5vdCB2ZXJ5IGtlZW4gb24gdGhp
cy4gV2l0aG91dCB0aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRlbyBkYXRhIGNhbm5vdCBiZQo+ID4g
PiA+IGRlY29kZWQsIG9yIHdpbGwgaXQganVzdCBiZSBzdWJvcHRpbWFsPwo+ID4gPiAKPiA+ID4g
V2l0aG91dCB0aGF0IGluZm9ybWF0aW9uIHRoZSB2aWRlbyBjYW4ndCBiZSBkZWNvZGVkLgo+ID4g
PiAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGEgZ2VuZXJpYyBkZWNvZGVy
IHdvdWxkIGhhdmUgdG8ga25vdyB0aGF0IHRoZSBIVyBpcyBhIGhhbnRybywKPiA+ID4gPiBhbmQg
dGhlbiBjYWxsIHRoaXMgY29udHJvbC4gSWYgdGhleSBkb24ndCAoYW5kIGFyZSB0ZXN0aW5nIG9u
IG5vbi1oYW50cm8gSFcpLCB0aGVuCj4gPiA+ID4gaXQgd29uJ3Qgd29yaywgdGh1cyBkZWZlYXRp
bmcgdGhlIHB1cnBvc2Ugb2YgdGhlIEhXIGluZGVwZW5kZW50IGRlY29kZXIgQVBJLgo+ID4gPiA+
IAo+ID4gPiA+IFNpbmNlIGhhbnRybyBpcyB3aWRlbHkgdXNlZCwgYW5kIGlmIHRoZXJlIGlzIG5v
IG90aGVyIHdheSB0byBkbyB0aGlzIGJlc2lkZSBleHBsaXRlbHkKPiA+ID4gPiBzZXR0aW5nIHRo
aXMgY29udHJvbCwgdGhlbiBwZXJoYXBzIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIHN0YW5k
YXJkIEhFVkMgQVBJLgo+ID4gPiA+IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVk
IHRoaXMgY2FuIGp1c3Qgc2tpcCBpdC4KPiA+ID4gCj4gPiA+IEV2ZW4gaWYgSSBwdXQgdGhpcyBw
YXJhbWV0ZXIgaW4gZGVjb2RlX3BhcmFtcyBzdHJ1Y3R1cmUgdGhhdCB3b3VsZCBtZWFucyB0aGF0
IGEgZ2VuZXJpYwo+ID4gPiB1c2VybGFuZCBkZWNvZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0
aGUgY29tcHV0ZSB0aGlzIHZhbHVlIGZvciBoYW50cm8gSFcgc2luY2UgaXQKPiA+ID4gaXNuJ3Qg
c29tZXRoaW5nIHRoYXQgY291bGQgYmUgZG9uZSBvbiBrZXJuZWwgc2lkZS4KPiA+IAo+ID4gQnV0
IHNpbmNlIGhhbnRybyBpcyB2ZXJ5IGNvbW1vbiwgYW55IHVzZXJsYW5kIGRlY29kZXIgd2lsbCBu
ZWVkIHRvIGNhbGN1bGF0ZSB0aGlzIGFueXdheS4KPiA+IFNvIHBlcmhhcHMgaXQgaXMgYmV0dGVy
IHRvIGhhdmUgdGhpcyBhcyBwYXJ0IG9mIHRoZSBkZWNvZGVfcGFyYW1zPwo+ID4gCj4gPiBJJ2Qg
bGlrZSB0byBrbm93IHdoYXQgb3RoZXJzIHRoaW5rIGFib3V0IHRoaXMuCj4gPiAKPiAKPiBBcyB5
b3Uga25vdywgSSdtIG5vdCBhIGZhbiBvZiBjYXJyeWluZyB0aGVzZSAidW5zdGFibGUiIEFQSXMg
YXJvdW5kLgo+IEkga25vdyBpdCdzIGJldHRlciB0aGFuIG5vdGhpbmcsIGJ1dCBJIGZlZWwgdGhl
eSBjcmVhdGUgdGhlIGlsbHVzaW9uCj4gb2YgdGhlIGludGVyZmFjZSBiZWluZyBzdXBwb3J0ZWQg
aW4gbWFpbmxpbmUuIFNpbmNlIGl0J3MgdW5zdGFibGUsCj4gaXQncyBkaWZmaWN1bHQgZm9yIGFw
cGxpY2F0aW9ucyB0byBhZG9wdCB0aGVtLgo+IAo+IEFzIE5pY29sYXMgbWVudGlvbmVkLCB0aGlz
IG1lYW5zIG5laXRoZXIgRkZtcGVnIG5vciBHU3RyZWFtZXIgd2lsbCBhZG9wdAo+IHRoZXNlIEFQ
SXMsIHdoaWNoIHdvcnJpZXMgbWUsIGFzIHRoYXQgbWVhbnMgd2UgbG9zZSB0d28gbWFqb3IgdXNl
ciBiYXNlcy4KPiAKPiBNeSBwZXJzb25hbCB0YWtlIGZyb20gdGhpcywgaXMgdGhhdCB3ZSBuZWVk
IHRvIGZpbmQgd2F5cyB0byBzdGFiaWxpemUKPiBvdXIgc3RhdGVsZXNzIGNvZGVjIEFQSXMgaW4g
bGVzcyB0aW1lIGFuZCBwZXJoYXBzIHdpdGggbGVzcyBlZmZvcnQuCj4gCj4gSU1PLCBhIGxlc3Mg
c3RpZmYgaW50ZXJmYWNlIGNvdWxkIGhlbHAgdXMgaGVyZSwgYW5kIHRoYXQncyB3aHkgSSB0aGlu
awo+IGhhdmluZyBoYXJkd2FyZS1zcGVjaWZpYyBjb250cm9scyBjYW4gYmUgdXNlZnVsLiBIYXJk
d2FyZSBkZXNpZ25lcnMKPiBjYW4gYmUgc28gY3JlYXRpdmUgOikKPiAKPiBJJ20gbm90IGFnYWlu
c3QgaW50cm9kdWNpbmcgdGhpcyBzcGVjaWZpYyBwYXJhbWV0ZXIgaW4KPiB2NGwyX2N0cmxfaGV2
Y19jb2RlY19wYXJhbXMsIGFyZ3VpbmcgdGhhdCBIYW50cm8gaXMgd2lkZWx5IHVzZWQsCj4gYnV0
IEknZCBsaWtlIHVzIHRvIGJlIG9wZW4gdG8gaGFyZHdhcmUtc3BlY2lmaWMgY29udHJvbHMgYXMg
YSB3YXkKPiB0byBleHRlbmQgdGhlIEFQSXMgc2VhbWxlc3NseS4KPiAKPiBBcHBsaWNhdGlvbnMg
d29uJ3QgaGF2ZSB0byBfa25vd18gd2hhdCBoYXJkd2FyZSB0aGV5IGFyZSBydW5uaW5nIG9uLAo+
IHRoZXkgY2FuIGp1c3QgdXNlIFZJRElPQ19RVUVSWUNUUkwgdG8gZmluZCBvdXQgd2hpY2ggY29u
dHJvbHMgYXJlIG5lZWRlZC4KCkNhbiB5b3UgZXh0ZW5kIG9uIHRoaXMsIHBlcmhhcHMgd2UgbmVl
ZCBhbiBSRkMgZm9yIHRoaXMgc3BlY2lmaWMgbWVjaGFuaXNtLiBJCmRvbid0IGltbWVkaWF0bHkg
c2VlIGhvdyBJIGNvdWxkIGVudW1lcmF0ZSBjb250cm9scyBhbmQgZmlndXJlLW91dCB3aGljaCBv
bmUgYXJlCm5lZWRlZC4gUGVyaGFwcyB3ZSBuZWVkIHRvIGFkZCBuZXcgY29udHJvbCBmbGFncyBm
b3IgbWFuZGF0b3J5IGNvbnRyb2wgPyBUaGlzCndheSB1c2Vyc3BhY2UgY291bGQgZGV0ZWN0IHVu
c3VwcG9ydGVkIEhXIGlmIGl0IGZpbmRzIGEgbWFuZGF0b3J5IGNvbnRyb2wgdGhhdAppdCBkb2Vz
IG5vdCBrbm93IGFib3V0ID8KCj4gCj4gVGhhbmtzLAo+IEV6ZXF1aWVsCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
