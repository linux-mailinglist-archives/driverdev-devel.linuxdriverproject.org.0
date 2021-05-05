Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F27373E97
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 17:33:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B14B960A6E;
	Wed,  5 May 2021 15:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iERkMf2HOmj2; Wed,  5 May 2021 15:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B44EF607C2;
	Wed,  5 May 2021 15:33:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A065D1BF30C
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 15:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8DA11607C2
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 15:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9tnqFv7mRegT for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 15:33:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8C7960787
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 15:33:28 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id a18so1459628qtj.10
 for <devel@driverdev.osuosl.org>; Wed, 05 May 2021 08:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=O6w0cG9YtDPDCbidOpCE3ksxspkqrocA0oYzTOOZmTY=;
 b=YQKbrBTtFj9MppoNVFsLxDdSZ/GmVwL/zzYHnJqJJ+CymA6PwkB1RXQU/zknmwLbOx
 nRuC+c3zVZagrt5JC1/dbTDziLPRnMg7fkfFoSsi9M0fP6X0Abrrd6/b+rh/HqznwT82
 AVGURakeDyDD3GwV+EAlU+XQLqbIfFHRztLt1XV19fmpF4hhWB0aFK3J7yhunE6E1FU6
 derUunuLRMB9p+K3jUD1ccJ5ibKnrOtLRqvme4dyVnPIeSxkHxC4iGnQaPUudJSovhEz
 DPKouVJD32Yk98btYA8W5kzdlIpnm+FtXJJLsnua4l8pxYbXL45ANgqX4SVaqy3RhWbz
 5v3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=O6w0cG9YtDPDCbidOpCE3ksxspkqrocA0oYzTOOZmTY=;
 b=ZlLoMJBzcRjFrfgnYioDgxXPpPoSU5Ld6IfIyrI5RLLCmlZC+wRTu+01miptOxiCd4
 gPrTi6vyvIKIyIYsTUKPzOYM7nghAk1HnGjSkVs09CT/nPNh3ORAtariofqDkXfLKbkL
 VgPRR0XuyYjpyr4wzS7rAoeJGLOzEw8RHS3g6IQU9SWgSyV2FmjbaDSEWizIAfJL9EfJ
 UdDf9zFCVU3/gzbx/07XCibmfo6Eoc0iVtCoA+le/VNuqV02DTALV5HSiQyed87yNqbz
 C4yGSikurC9C+ODpFQh1T5RLGTznZX5vMDarXmRcD+zlJlHCXTZTGojj3hYRKqlkZ52/
 PnPw==
X-Gm-Message-State: AOAM533mhIFCff1yfpQmI2TBGWVMWSGXi6UXtOHqFzZxlwlpJJznpEN6
 qIBRwJKqgsQ/QdPr18YWspXqLQ==
X-Google-Smtp-Source: ABdhPJxhPUMuK8ha1j9GrZqzuSO7vV5fOOc6RgsQZm7A+tYOpJMWKo4YcFwkk9ghgDO7D11M6Zd0SA==
X-Received: by 2002:a05:622a:1014:: with SMTP id
 d20mr8092919qte.64.1620228807158; 
 Wed, 05 May 2021 08:33:27 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id t18sm13994897qkj.75.2021.05.05.08.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 08:33:26 -0700 (PDT)
Message-ID: <fbee67d620d456b5f2988b7f0ba28d5c6335ee6c.camel@ndufresne.ca>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: John Cox <jc@kynesim.co.uk>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Date: Wed, 05 May 2021 11:33:24 -0400
In-Reply-To: <6bd59glrp4fq3j3ngmbl5p4u7aethvrv34@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <6bd59glrp4fq3j3ngmbl5p4u7aethvrv34@4ax.com>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 cphealy@gmail.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgbWVyY3JlZGkgMDUgbWFpIDIwMjEgw6AgMTY6MTggKzAxMDAsIEpvaG4gQ294IGEgw6ljcml0
wqA6Cj4gPiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBv
ZiBiaXRzIHRvIHNraXAgYXQKPiA+IHRoZSBiZWdpbm5pbmcgb2YgdGhlIHNsaWNlIGhlYWRlci4K
PiA+IFRoYXQgaXMgYSBoYXJkd2FyZSBzcGVjaWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBk
ZWRpY2F0ZWQgY29udHJvbAo+ID4gZm9yIHRoaXMgcHVycG9zZS4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
Cj4gPiAtLS0KPiA+IC4uLi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCAg
ICB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiA+IC4uLi91c2Vyc3BhY2UtYXBpL21lZGlhL2Ry
aXZlcnMvaW5kZXgucnN0ICAgICB8ICAxICsKPiA+IGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5o
ICAgICAgICAgICAgICAgICAgICB8IDEzICsrKysrKysrKysrKysKPiA+IDMgZmlsZXMgY2hhbmdl
ZCwgMzMgaW5zZXJ0aW9ucygrKQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QK
PiA+IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJz
dAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Q5NzU0
YjRlMDA1Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiAr
Li4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ICsKPiA+ICtIYW50cm8gdmlk
ZW8gZGVjb2RlciBkcml2ZXIKPiA+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+ICsK
PiA+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGltcGxlbWVudHMgdGhlIGZvbGxv
d2luZyBkcml2ZXItc3BlY2lmaWMKPiA+IGNvbnRyb2xzOgo+ID4gKwo+ID4gK2BgVjRMMl9DSURf
SEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAgKGludGVnZXIpYGAKPiA+ICsgICAgU3BlY2lm
aWVzIHRvIEhhbnRybyBIRVZDIHZpZGVvIGRlY29kZXIgZHJpdmVyIHRoZSBudW1iZXIgb2YgZGF0
YSAoaW4KPiA+IGJpdHMpIHRvCj4gPiArICAgIHNraXAgaW4gdGhlIHNsaWNlIHNlZ21lbnQgaGVh
ZGVyLgo+ID4gKyAgICBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20g
c3ludGF4IGVsZW1lbnQKPiA+ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiArICAgIHRvIGJlZm9yZSBz
eW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxhZyIuCj4gPiArICAg
IElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAicGljX291dHB1dF9mbGFnIgo+ID4g
KyAgICAoc2VwYXJhdGVfY29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4gCj4g
V2hhdCBoYXBwZW5zIGlmIGl0IGlzIGEgZGVwZW5kYW50X3NsaWNlX3NlZ2VtZW50IG9yCj4gb3V0
cHV0X2ZsYWdfcHJlc2VudF9mbGFnPyAgVGhvc2UgZmxhZ3MgYXJlIGFsbCBkZXBlbmRhbnQgb24K
PiBkZXBlbmRhbnRfc2xpY2Vfc2VnZW1lbnQgYmVpbmcgZmFsc2UuICBJJ20gZ3Vlc3NpbmcgMCBi
dXQgaXQgbWF5YmUKPiBzaG91bGQgYmUgZG9jdW1lbnRlZC4KClplcm8gaW5kZWVkLgoKPiBMaWtl
d2lzZSBpZiBvdXRwdXRfZmxhZ19wcmVzZW50X2ZsYWcgaXMgZmFsc2UgcGljX291dHB1dF9mbGFn
IHdpbGwgbm90Cj4gYmUgY29kZWQsIHNvIG1heWJlIGV4cHJlc3MgaXQgYXMgImFmdGVyIHNsaWNl
X3R5cGUiIHJhdGhlciB0aGFuICJiZWZvcmUKPiBwaWNfb3V0cHV0X2ZsYWciPwoKU2hvdWxkIHdv
cmsgdG9vLgoKPiAKPiBSZWdhcmRzCj4gCj4gSm9obiBDb3gKPiAKPiA+ICsuLiBub3RlOjoKPiA+
ICsKPiA+ICsgICAgICAgIFRoaXMgY29udHJvbCBpcyBub3QgeWV0IHBhcnQgb2YgdGhlIHB1Ymxp
YyBrZXJuZWwgQVBJIGFuZAo+ID4gKyAgICAgICAgaXQgaXMgZXhwZWN0ZWQgdG8gY2hhbmdlLgo+
ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJz
L2luZGV4LnJzdAo+ID4gYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVy
cy9pbmRleC5yc3QKPiA+IGluZGV4IDFhOTAzOGY1ZjlmYS4uMTJlM2M1MTJkNzE4IDEwMDY0NAo+
ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgu
cnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9p
bmRleC5yc3QKPiA+IEBAIC0zMyw2ICszMyw3IEBAIEZvciBtb3JlIGRldGFpbHMgc2VlIHRoZSBm
aWxlIENPUFlJTkcgaW4gdGhlIHNvdXJjZQo+ID4gZGlzdHJpYnV0aW9uIG9mIExpbnV4Lgo+ID4g
Cj4gPiAJY2NzCj4gPiAJY3gyMzQxeC11YXBpCj4gPiArICAgICAgICBoYW50cm8KPiA+IAlpbXgt
dWFwaQo+ID4gCW1heDIxNzUKPiA+IAltZXllLXVhcGkKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L21lZGlhL2hldmMtY3RybHMuaCBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gPiBpbmRl
eCA4ZTAxMDllZWE0NTQuLmI3MTNlZWVkMTkxNSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvbWVk
aWEvaGV2Yy1jdHJscy5oCj4gPiArKysgYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+ID4g
QEAgLTIyNCw0ICsyMjQsMTcgQEAgc3RydWN0IHY0bDJfY3RybF9oZXZjX2RlY29kZV9wYXJhbXMg
ewo+ID4gCV9fdTY0CWZsYWdzOwo+ID4gfTsKPiA+IAo+ID4gKy8qICBNUEVHLWNsYXNzIGNvbnRy
b2wgSURzIHNwZWNpZmljIHRvIHRoZSBIYW50cm8gZHJpdmVyIGFzIGRlZmluZWQgYnkgVjRMMgo+
ID4gKi8KPiA+ICsjZGVmaW5lCj4gPiBWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFTRQkJCQkoVjRM
Ml9DVFJMX0NMQVNTX0NPREVDIHwgMHgxMjAwKQo+ID4gKy8qCj4gPiArICogVjRMMl9DSURfSEFO
VFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAgLQo+ID4gKyAqIHRoZSBudW1iZXIgb2YgZGF0YSAo
aW4gYml0cykgdG8gc2tpcCBpbiB0aGUKPiA+ICsgKiBzbGljZSBzZWdtZW50IGhlYWRlci4KPiA+
ICsgKiBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVs
ZW1lbnQKPiA+ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiArICogdG8gYmVmb3JlIHN5bnRheCBlbGVt
ZW50ICJzbGljZV90ZW1wb3JhbF9tdnBfZW5hYmxlZF9mbGFnIi4KPiA+ICsgKiBJZiBJRFIsIHRo
ZSBza2lwcGVkIGJpdHMgYXJlIGp1c3QgInBpY19vdXRwdXRfZmxhZyIKPiA+ICsgKiAoc2VwYXJh
dGVfY29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4gPiArICovCj4gPiArI2Rl
ZmluZSBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUAkoVjRMMl9DSURfQ09E
RUNfSEFOVFJPX0JBU0UKPiA+ICsgMCkKPiA+ICsKPiA+ICNlbmRpZgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
