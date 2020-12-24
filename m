Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A55552E26FF
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 14:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7E1D8691D;
	Thu, 24 Dec 2020 13:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GTF00zAwGVOf; Thu, 24 Dec 2020 13:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72E5886760;
	Thu, 24 Dec 2020 13:00:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7301BF42C
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 13:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 437EA8731D
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 13:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6dv3kHShTGdD for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 13:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6140A87330
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 13:00:53 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id l11so4672054lfg.0
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 05:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PPrH0JQSkYTBUDfxgE5s9c2FpdNYSs+ZfAVKTdSJpOU=;
 b=h35B/CGskQN9x2gajXsHnapJAn/oOdmJUPQzEUHvzlPUdoaVdWOHSvn0gRhd+h4Ola
 kRThB7EwzP4zCJ6I/cDBaa2jz7i8GwFBJ3G3UgCUXtUfsT2g52TetI+SjB06v4QccX98
 yOgW4XRztBS1Rb1sUB+HjV5efgFf1R3v/2FDKAIhyUg38TSfby9FdbMS/BOhsmpV8q93
 2PXIilSxhr+6+5vRNFV8pb+G4eE9EQA1e1YzsE81H7g6mvgl8zL3naGYGYHQKfwNKpkP
 FkcD6cP+0rX2PGwAlkOUF9fsFJlC40+sqMoNc+qDnwDTa8+wBi9oi10CEnKiniae650p
 1/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PPrH0JQSkYTBUDfxgE5s9c2FpdNYSs+ZfAVKTdSJpOU=;
 b=tenSoQrySl4lnqaFMB6j9Wl0SrOBr8GAsmPKY5IW+X2f+799EdI554FxuFD5GamBzL
 TndRPV342RYNj1EuOSp0/7HY0j0TxySPMPvmIuJzfkwgu7eCCx5QwyQx4CuQRrlBlJCL
 tUrzVwtxF0BujkgldYyHErLRCPTvlyKI9w5BjOmkzx4MnkE7RgBcaKFNJO+AXQXOdwJP
 2h1MjEDSmyK1/cgFTvamrZZKG+r8bqMMz+j3p9Z58jeqrwIftaM+OHItBBpsciG4VrDx
 GCbVH425FxFwHRc07AyndnrMXh5r4II/m7E4Rm3QKwzVRVQ0IYJUHCtp2hqAMraH7FWa
 pMZQ==
X-Gm-Message-State: AOAM530nHGvWCZXF1h2e5XsAIV5TXg53LTyY37cO/BSiiKEzNPD5K1uq
 iPSuQIW0NUw55fPDpWrpvCk=
X-Google-Smtp-Source: ABdhPJy4dUISU54G6I/fcsUIBl9m9poD0jxB1pYpBLDFT4iw28ge43cAa/UiLwCH2jmZTgAPqvlFag==
X-Received: by 2002:a05:6512:52c:: with SMTP id
 o12mr12294057lfc.559.1608814851636; 
 Thu, 24 Dec 2020 05:00:51 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id b4sm3594686lfa.261.2020.12.24.05.00.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Dec 2020 05:00:50 -0800 (PST)
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
 <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
 <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
 <20201224064339.zngidobhstnlu2a3@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <780db190-d93d-3bca-4819-790010f82c62@gmail.com>
Date: Thu, 24 Dec 2020 16:00:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201224064339.zngidobhstnlu2a3@vireshk-i7>
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

MjQuMTIuMjAyMCAwOTo0MywgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjMtMTItMjAs
IDIzOjM3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDIzLjEyLjIwMjAgMDc6MTksIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMjItMTItMjAsIDIyOjE1LCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4+Pj4gMjIuMTIuMjAyMCAwOTo0MiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6
Cj4+Pj4+IE9uIDE3LTEyLTIwLCAyMTowNiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4+Pj4g
QWRkIGEgY2VpbCB2ZXJzaW9uIG9mIHRoZSBkZXZfcG1fb3BwX2ZpbmRfbGV2ZWwoKS4gSXQncyBo
YW5keSB0byBoYXZlIGlmCj4+Pj4+PiBsZXZlbHMgZG9uJ3Qgc3RhcnQgZnJvbSAwIGluIE9QUCB0
YWJsZSBhbmQgemVybyB1c3VhbGx5IG1lYW5zIGEgbWluaW1hbAo+Pj4+Pj4gbGV2ZWwuCj4+Pj4+
Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29t
Pgo+Pj4+Pgo+Pj4+PiBXaHkgZG9lc24ndCB0aGUgZXhhY3QgdmVyc2lvbiB3b3JrIGZvciB5b3Ug
aGVyZSA/Cj4+Pj4+Cj4+Pj4KPj4+PiBUaGUgZXhhY3QgdmVyc2lvbiB3b24ndCBmaW5kIE9QUCBm
b3IgbGV2ZWw9MCBpZiBsZXZlbHMgZG9uJ3Qgc3RhcnQgd2l0aAo+Pj4+IDAsIHdoZXJlIDAgbWVh
bnMgdGhhdCBtaW5pbWFsIGxldmVsIGlzIGRlc2lyZWQuCj4+Pgo+Pj4gUmlnaHQsIGJ1dCB3aHkg
ZG8geW91IG5lZWQgdG8gc2VuZCAwIGZvciB5b3VyIHBsYXRmb3JtID8KPj4+Cj4+Cj4+IFRvIHB1
dCBwb3dlciBkb21haW4gaW50byB0aGUgbG93ZXN0IHBlcmZvcm1hbmNlIHN0YXRlIHdoZW4gZGV2
aWNlIGlzIGlkbGluZy4KPiAKPiBJIHNlZS4gU28geW91IHJlYWxseSB3YW50IHRvIHNldCBpdCB0
byB0aGUgbG93ZXN0IHN0YXRlIG9yIGp1c3QgdGFrZSB0aGUgdm90ZQo+IG91dCA/IFdoaWNoIG1h
eSBlbmQgdXAgcG93ZXJpbmcgb2ZmIHRoZSBkb21haW4gaW4gdGhlIHdvcnN0IGNhc2UgPwo+IAoK
SW4gYSBkZXZpY2UgZHJpdmVyIEkgd2FudCB0byBzZXQgUEQgdG8gdGhlIGxvd2VzdCBwZXJmb3Jt
YW5jZSBzdGF0ZSBieQpyZW1vdmluZyB0aGUgcGVyZm9ybWFuY2Ugdm90ZSB3aGVuIGRldl9wbV9v
cHBfc2V0X3JhdGUoZGV2LCAwKSBpcwppbnZva2VkIGJ5IHRoZSBkcml2ZXIuCgpUaGUgT1BQIGNv
cmUgYWxyZWFkeSBkb2VzIHRoaXMsIGJ1dCBpZiBPUFAgbGV2ZWxzIGRvbid0IHN0YXJ0IGZyb20g
MCBpbgphIGRldmljZS10cmVlIGZvciBQRCwgdGhlbiBpdCBjdXJyZW50bHkgZG9lc24ndCB3b3Jr
IHNpbmNlIHRoZXJlIGlzIGEKbmVlZCB0byBnZXQgYSByb3VuZGVkLXVwIHBlcmZvcm1hbmNlIHN0
YXRlIGJlY2F1c2UKZGV2X3BtX29wcF9zZXRfdm9sdGFnZSgpIHRha2VzIE9QUCBlbnRyeSBmb3Ig
dGhlIGFyZ3VtZW50IChwYXRjaGVzIDkgYW5kCjI4KS4KClRoZSBQRCBwb3dlcmluZyBvZmYgYW5k
IHBlcmZvcm1hbmNlLWNoYW5nZXMgYXJlIHNlcGFyYXRlIGZyb20gZWFjaCBvdGhlcgppbiB0aGUg
R0VOUEQgY29yZS4gVGhlIEdFTlBEIGNvcmUgYXV0b21hdGljYWxseSB0dXJucyBvZmYgZG9tYWlu
IHdoZW4KYWxsIGRldmljZXMgd2l0aGluIHRoZSBkb21haW4gYXJlIHN1c3BlbmRlZCBieSBzeXN0
ZW0tc3VzcGVuZCBvciBSUE0uCgpUaGUgcGVyZm9ybWFuY2Ugc3RhdGUgb2YgYSBwb3dlciBkb21h
aW4gaXMgY29udHJvbGxlZCBzb2xlbHkgYnkgYSBkZXZpY2UKZHJpdmVyLiBHRU5QRCBjb3JlIG9u
bHkgYWdncmVnYXRlcyB0aGUgcGVyZm9ybWFuY2UgcmVxdWVzdHMsIGl0IGRvZXNuJ3QKY2hhbmdl
IHRoZSBwZXJmb3JtYW5jZSBzdGF0ZSBvZiBhIGRvbWFpbiBieSBpdHNlbGYgd2hlbiBkZXZpY2Ug
aXMKc3VzcGVuZGVkIG9yIHJlc3VtZWQsIElJVUMgdGhpcyBpcyBpbnRlbnRpb25hbC4gQW5kIEkg
d2FudCB0byBwdXQgZG9tYWluCmludG8gbG93ZXN0IHBlcmZvcm1hbmNlIHN0YXRlIHdoZW4gZGV2
aWNlIGlzIHN1c3BlbmRlZC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
