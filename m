Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C90B2E75FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Dec 2020 05:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 820F085F8D;
	Wed, 30 Dec 2020 04:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LmwwPO-KKNsA; Wed, 30 Dec 2020 04:46:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0571885F5A;
	Wed, 30 Dec 2020 04:46:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6C731BF870
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 04:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65AA4203DC
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 04:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zUS4PoxyUKvK for <devel@linuxdriverproject.org>;
 Wed, 30 Dec 2020 04:46:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by silver.osuosl.org (Postfix) with ESMTPS id 898D7203D5
 for <devel@driverdev.osuosl.org>; Wed, 30 Dec 2020 04:46:40 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id p18so10704528pgm.11
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 20:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=S7TlR/t9efyKgBLIkX3DcwEJbaeI569mJCDTFS0GWK0=;
 b=Bv4XDe7sX+slpuPaCMEL56juX3yWcw2LziUKmc37jW3yU5m7JGjQqk4PRfEMXq3dSa
 S9Wm6+bIT58vZYkcjtmn1OBPVSUOwLWVIjUcAR8dv0GwdWNbGlmsyBow7j3AeXjSiamR
 wRfhK9laeSI2I90Wv7A42bMayA7xIFS3tHWQP6zK2sKAnxj4HpDgSKZOu34RJEWuulPY
 VGfEK8dc91Mv24zsAHjIqJIGPJoS1Z6DbE9cvjWFckZneGmXR16A4skyPxRGDcqZfLA8
 aclz0r4zUfVV34NGxZ+HPm2hFYZjAfnzac1lYOIQ77mqKg9OF9S+j9B7VzhNnApi+5M7
 /MvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=S7TlR/t9efyKgBLIkX3DcwEJbaeI569mJCDTFS0GWK0=;
 b=CeNKJqvrQ7GYLzxYPTe3q2V3VUiOaw/D60rNlyxz6lCvbbITW+3dw77KYOzsHgTBnt
 R1SbhB4FfMP918qO0BfADVIFMBpIaL2+So6cmnjc+MU0Dr7PcaSvROJVY7eHMO+7uKRM
 HjlT6W1kNKv3a2A6QfoQWCZTAOZTODpQnKV4GhPam9PADqj+H3GpBtdDOZ+VUVMCN0vv
 mZmqW+4pXAoGwK0Tijjf/KSZzSLJ51PsicWbkmh+VQgf44P5FrVe92prIWjal6oM9tol
 1TDTdOPfBMaoomb4vmDk/n5S4e6YV2IkdNC/klztcCITKWyeP7ZFHVMpDquqwNBfTAnE
 qzcA==
X-Gm-Message-State: AOAM532TBAadDiGtD8dDyY3fN8u2fNHkBH4gECPRrdCDmWI0omOyRTUg
 vv6lp/XggCkzJbeIbYqYTrk0AQ==
X-Google-Smtp-Source: ABdhPJyAMIYVw5j0FbznclvAGjSkFr9eYljcNjUnJ9+BY9Q4/dP8WzEX/TWRPpJAEV49/79xQ6NUAg==
X-Received: by 2002:a63:6fce:: with SMTP id
 k197mr24081334pgc.423.1609303599877; 
 Tue, 29 Dec 2020 20:46:39 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id e65sm43548898pfh.175.2020.12.29.20.46.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Dec 2020 20:46:39 -0800 (PST)
Date: Wed, 30 Dec 2020 10:16:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
Message-ID: <20201230044637.jjyw5gwe73ovslbd@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
 <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
 <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
 <20201224064339.zngidobhstnlu2a3@vireshk-i7>
 <780db190-d93d-3bca-4819-790010f82c62@gmail.com>
 <20201228062254.ui727ka2ftijov4m@vireshk-i7>
 <c4a6336f-e7e6-b23e-4d60-a41d8e09aef3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4a6336f-e7e6-b23e-4d60-a41d8e09aef3@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjgtMTItMjAsIDE3OjAzLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjguMTIuMjAyMCAw
OToyMiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAyNC0xMi0yMCwgMTY6MDAsIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiBJbiBhIGRldmljZSBkcml2ZXIgSSB3YW50IHRvIHNl
dCBQRCB0byB0aGUgbG93ZXN0IHBlcmZvcm1hbmNlIHN0YXRlIGJ5Cj4gPj4gcmVtb3ZpbmcgdGhl
IHBlcmZvcm1hbmNlIHZvdGUgd2hlbiBkZXZfcG1fb3BwX3NldF9yYXRlKGRldiwgMCkgaXMKPiA+
PiBpbnZva2VkIGJ5IHRoZSBkcml2ZXIuCj4gPj4KPiA+PiBUaGUgT1BQIGNvcmUgYWxyZWFkeSBk
b2VzIHRoaXMsIGJ1dCBpZiBPUFAgbGV2ZWxzIGRvbid0IHN0YXJ0IGZyb20gMCBpbgo+ID4+IGEg
ZGV2aWNlLXRyZWUgZm9yIFBELCB0aGVuIGl0IGN1cnJlbnRseSBkb2Vzbid0IHdvcmsgc2luY2Ug
dGhlcmUgaXMgYQo+ID4+IG5lZWQgdG8gZ2V0IGEgcm91bmRlZC11cCBwZXJmb3JtYW5jZSBzdGF0
ZSBiZWNhdXNlCj4gPj4gZGV2X3BtX29wcF9zZXRfdm9sdGFnZSgpIHRha2VzIE9QUCBlbnRyeSBm
b3IgdGhlIGFyZ3VtZW50IChwYXRjaGVzIDkgYW5kCj4gPj4gMjgpLgo+ID4+Cj4gPj4gVGhlIFBE
IHBvd2VyaW5nIG9mZiBhbmQgcGVyZm9ybWFuY2UtY2hhbmdlcyBhcmUgc2VwYXJhdGUgZnJvbSBl
YWNoIG90aGVyCj4gPj4gaW4gdGhlIEdFTlBEIGNvcmUuIFRoZSBHRU5QRCBjb3JlIGF1dG9tYXRp
Y2FsbHkgdHVybnMgb2ZmIGRvbWFpbiB3aGVuCj4gPj4gYWxsIGRldmljZXMgd2l0aGluIHRoZSBk
b21haW4gYXJlIHN1c3BlbmRlZCBieSBzeXN0ZW0tc3VzcGVuZCBvciBSUE0uCj4gPj4KPiA+PiBU
aGUgcGVyZm9ybWFuY2Ugc3RhdGUgb2YgYSBwb3dlciBkb21haW4gaXMgY29udHJvbGxlZCBzb2xl
bHkgYnkgYSBkZXZpY2UKPiA+PiBkcml2ZXIuIEdFTlBEIGNvcmUgb25seSBhZ2dyZWdhdGVzIHRo
ZSBwZXJmb3JtYW5jZSByZXF1ZXN0cywgaXQgZG9lc24ndAo+ID4+IGNoYW5nZSB0aGUgcGVyZm9y
bWFuY2Ugc3RhdGUgb2YgYSBkb21haW4gYnkgaXRzZWxmIHdoZW4gZGV2aWNlIGlzCj4gPj4gc3Vz
cGVuZGVkIG9yIHJlc3VtZWQsIElJVUMgdGhpcyBpcyBpbnRlbnRpb25hbC4gQW5kIEkgd2FudCB0
byBwdXQgZG9tYWluCj4gPj4gaW50byBsb3dlc3QgcGVyZm9ybWFuY2Ugc3RhdGUgd2hlbiBkZXZp
Y2UgaXMgc3VzcGVuZGVkLgo+ID4gCj4gPiBSaWdodCwgc28gaWYgeW91IHJlYWxseSB3YW50IHRv
IGp1c3QgZHJvcCB0aGUgcGVyZm9ybWFuY2Ugdm90ZSwgdGhlbiB3aXRoIGEKPiA+IHZhbHVlIG9m
IDAgZm9yIHRoZSBwZXJmb3JtYW5jZSBzdGF0ZSB0aGUgY2FsbCB3aWxsIHJlYWNoIHRvIHlvdXIg
Z2VucGQncwo+ID4gY2FsbGJhY2sgLT5zZXRfcGVyZm9ybWFuY2Vfc3RhdGUoKS4gSnVzdCBhcyBk
ZXZfcG1fb3BwX3NldF9yYXRlKCkgYWNjZXB0cyB0aGUKPiA+IGZyZXF1ZW5jeSB0byBiZSAwLCBJ
IHdvdWxkIGV4cGVjdCBkZXZfcG1fb3BwX3NldF9yYXRlKCkgdG8gYWNjZXB0IG9wcCBhcmd1bWVu
dAo+ID4gYXMgTlVMTCBhbmQgaW4gdGhhdCBjYXNlIHNldCB2b2x0YWdlIHRvIDAgYW5kIGRvIHJl
Z3VsYXRvcl9kaXNhYmxlKCkgYXMgd2VsbC4KPiA+IFdvbid0IHRoYXQgd29yayBiZXR0ZXIgdGhh
biBnb2luZyBmb3IgdGhlIGxvd2VzdCB2b2x0YWdlID8KPiA+IAo+IAo+IFdlIGNhbiBtYWtlIGRl
dl9wbV9vcHBfc2V0X3ZvbHRhZ2UoKSB0byBhY2NlcHQgT1BQPU5VTEwgaW4gb3JkZXIgdG8KPiBk
aXNhYmxlIHRoZSByZWd1bGF0b3IsIGxpa2UgaXQncyBkb25lIGZvciBkZXZfcG1fb3BwX3NldF9y
YXRlKGRldiwgMCkuCj4gQWx0aG91Z2gsIEkgZG9uJ3QgbmVlZCB0aGlzIGtpbmQgb2YgYmVoYXZp
b3VyIGZvciB0aGUgVGVncmEgUEQgZHJpdmVyLAo+IGFuZCB0aHVzLCB3b3VsZCBwcmVmZXIgdG8g
bGVhdmUgdGhpcyBmb3Igc29tZWJvZHkgZWxzZSB0byBpbXBsZW1lbnQgaW4KPiB0aGUgZnV0dXJl
LCBvbmNlIGl0IHdpbGwgYmUgcmVhbGx5IG5lZWRlZC4KPiAKPiBTdGlsbCB3ZSBuZWVkIHRoZSBk
ZXZfcG1fb3BwX2ZpbmRfbGV2ZWxfY2VpbCgpIGJlY2F1c2UgbGV2ZWw9MCBtZWFucwo+IHRoYXQg
d2Ugd2FudCB0byBzZXQgUEQgdG8gdGhlIGxvd2VzdCAobWluaW1hbCkgcGVyZm9ybWFuY2Ugc3Rh
dGUsIGkuZS4KPiBpdCBkb2Vzbid0IG5lY2Vzc2FyaWx5IG1lYW4gdGhhdCB3ZSB3YW50IHRvIHNl
dCB0aGUgdm9sdGFnZSB0byAwIGFuZAo+IGRpc2FibGUgdGhlIFBEIGVudGlyZWx5LiBHRU5QRCBo
YXMgYSBzZXBhcmF0ZSBjb250cm9scyBmb3Igb24vb2ZmLgoKT2suCgotLSAKdmlyZXNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
