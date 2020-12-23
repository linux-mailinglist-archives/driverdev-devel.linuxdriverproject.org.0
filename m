Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84872E1821
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 05:34:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59EB88724B;
	Wed, 23 Dec 2020 04:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tV09ZcrSJNbv; Wed, 23 Dec 2020 04:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC67087257;
	Wed, 23 Dec 2020 04:34:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D24681BF349
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 04:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C759185C9D
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 04:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUi50NlE-S4a for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 04:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1CFAE85C95
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 04:34:50 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id n7so9823145pgg.2
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 20:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=n/wQ/8FF3ZQQmDW8wRJInIGGffY6h+3NeQmSLgJVsG0=;
 b=OFVqi0FZly+cr6h2L4MgV3W+0bqGCFrv37DumbpBBHHWKR10mlk8j96RhehvYC0ZKZ
 A7gveeGO4wUPNnptPGhKrlG+oY9ETV8EggwWNNJcSxmSKnIhp4D6iv6jEddwltALPRsH
 XoYuBifhBdhegWVRfh980lFbJW3ZCSqNzWxi8omP37WhPmGjiRZ+cWui/1OKijohx3Ni
 VZ3o0KDN4OIc1fPJ6UYDAexLzU558i9zpREZpptiCrCuZwWp74C+otCB7ziEAp6JpBCe
 /0WINPCLg0o7wHc+WB03uTQnpOkKqeEM2Jo/o42Mju6zYgkhMy6UlsZnrI4SeRLP+Rxr
 M+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=n/wQ/8FF3ZQQmDW8wRJInIGGffY6h+3NeQmSLgJVsG0=;
 b=Pw9WLDMHUv2kD5OAy7aLOgFLn7xCTK7Dy+D6qdkjeqYPbxNx5+uIQzM0hWTmnt09FG
 HiS/g3Dr0tl5chl4vVrpytAy5EsZ71MXr592DyzHBlhaJPeyAXNvP9rfi1Ln28teYeZ2
 SGFTpN/lPtDxyVvNsbTaa7v+1K7yUnnDac5psZ6PTM/y27XFjS8LWLWdqcIiq4NCFGnf
 v0Js/vHt1e9fHBveArNPZe6/laFdCVnAqSwAIa2l7ec5Z1PTzrcgbKe0jaLm3X1FX/Pt
 RZba9K7cyxm8qXneOxfKnMtodPfMGAREDy7P5xos1bF1xye1NWosUncPfRv3fIZJmoW+
 r4sg==
X-Gm-Message-State: AOAM530c14HXSuBMR9BMq6aWzwDu2zOdnuOCRxLVDVZfuX0Yoo0v/jsC
 X1P2VqyVks4l1b1gEgcbXfhx7w==
X-Google-Smtp-Source: ABdhPJy/6iEXMfinC0IgZ7fpt7I2g+zIxTjZQnxLRTk8cjqPdAagKq6g9nUKUea3gO9B/DZE0Q9zrw==
X-Received: by 2002:a63:6305:: with SMTP id x5mr22354072pgb.216.1608698089700; 
 Tue, 22 Dec 2020 20:34:49 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id p16sm21154516pju.47.2020.12.22.20.34.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 20:34:48 -0800 (PST)
Date: Wed, 23 Dec 2020 10:04:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 19/48] opp: Fix adding OPP entries in a wrong order if
 rate is unavailable
Message-ID: <20201223043443.rklw5er6hck3gl4y@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-20-digetx@gmail.com>
 <20201222091255.wentz5hyt726qezg@vireshk-i7>
 <db6273e6-8406-b7ae-b51d-48ceb6d21962@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db6273e6-8406-b7ae-b51d-48ceb6d21962@gmail.com>
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

T24gMjItMTItMjAsIDIyOjE5LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjIuMTIuMjAyMCAx
MjoxMiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAxNy0xMi0yMCwgMjE6MDYsIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiBGaXggYWRkaW5nIE9QUCBlbnRyaWVzIGluIGEgd3Jv
bmcgKG9wcG9zaXRlKSBvcmRlciBpZiBPUFAgcmF0ZSBpcwo+ID4+IHVuYXZhaWxhYmxlLiBUaGUg
T1BQIGNvbXBhcmlzb24gaXMgZXJyb25lb3VzbHkgc2tpcHBlZCBpZiBPUFAgcmF0ZSBpcwo+ID4+
IG1pc3NpbmcsIHRodXMgT1BQcyBhcmUgbGVmdCB1bnNvcnRlZC4KPiA+Pgo+ID4+IFNpZ25lZC1v
ZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPiA+PiAtLS0KPiA+PiAg
ZHJpdmVycy9vcHAvY29yZS5jIHwgMjMgKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+PiAgZHJp
dmVycy9vcHAvb3BwLmggIHwgIDIgKy0KPiA+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29w
cC9jb3JlLmMgYi9kcml2ZXJzL29wcC9jb3JlLmMKPiA+PiBpbmRleCAzNGY3ZTUzMGQ5NDEuLjVj
N2YxMzBhOGRlMiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL29wcC9jb3JlLmMKPiA+PiArKysg
Yi9kcml2ZXJzL29wcC9jb3JlLmMKPiA+PiBAQCAtMTUzMSw5ICsxNTMxLDEwIEBAIHN0YXRpYyBi
b29sIF9vcHBfc3VwcG9ydGVkX2J5X3JlZ3VsYXRvcnMoc3RydWN0IGRldl9wbV9vcHAgKm9wcCwK
PiA+PiAgCXJldHVybiB0cnVlOwo+ID4+ICB9Cj4gPj4gIAo+ID4+IC1pbnQgX29wcF9jb21wYXJl
X2tleShzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwMSwgc3RydWN0IGRldl9wbV9vcHAgKm9wcDIpCj4g
Pj4gK2ludCBfb3BwX2NvbXBhcmVfa2V5KHN0cnVjdCBkZXZfcG1fb3BwICpvcHAxLCBzdHJ1Y3Qg
ZGV2X3BtX29wcCAqb3BwMiwKPiA+PiArCQkgICAgIGJvb2wgcmF0ZV9ub3RfYXZhaWxhYmxlKQo+
ID4+ICB7Cj4gPj4gLQlpZiAob3BwMS0+cmF0ZSAhPSBvcHAyLT5yYXRlKQo+ID4+ICsJaWYgKCFy
YXRlX25vdF9hdmFpbGFibGUgJiYgb3BwMS0+cmF0ZSAhPSBvcHAyLT5yYXRlKQo+ID4gCj4gPiBy
YXRlIHdpbGwgYmUgMCBmb3IgYm90aCB0aGUgT1BQcyBoZXJlIGlmIHJhdGVfbm90X2F2YWlsYWJs
ZSBpcyB0cnVlIGFuZCBzbyB0aGlzCj4gPiBjaGFuZ2Ugc2hvdWxkbid0IGJlIHJlcXVpcmVkLgo+
IAo+IFRoZSByYXRlX25vdF9hdmFpbGFibGUgaXMgbmVnYXRlZCBpbiB0aGUgY29uZGl0aW9uLiBU
aGlzIGNoYW5nZSBpcwo+IHJlcXVpcmVkIGJlY2F1c2UgYm90aCByYXRlcyBhcmUgMCBhbmQgdGhl
biB3ZSBzaG91bGQgcHJvY2VlZCB0byB0aGUKPiBsZXZlbHMgY29tcGFyaXNvbi4KCldvbid0IHRo
YXQgaGFwcGVuIHdpdGhvdXQgdGhpcyBwYXRjaCA/Cgo+IEkgZ3Vlc3MgaXQncyBub3QgY2xlYXIg
YnkgbG9va2luZyBhdCB0aGlzIHBhdGNoLCBwbGVhc2Ugc2VlIGEgZnVsbAo+IHZlcnNpb24gb2Yg
dGhlIGZ1bmN0aW9uOgo+IAo+IGludCBfb3BwX2NvbXBhcmVfa2V5KHN0cnVjdCBkZXZfcG1fb3Bw
ICpvcHAxLCBzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwMiwKPiAgICAgICAgICBib29sIHJhdGVfbm90
X2F2YWlsYWJsZSkKPiB7Cj4gICBpZiAoIXJhdGVfbm90X2F2YWlsYWJsZSAmJiBvcHAxLT5yYXRl
ICE9IG9wcDItPnJhdGUpCj4gICAgIHJldHVybiBvcHAxLT5yYXRlIDwgb3BwMi0+cmF0ZSA/IC0x
IDogMTsKPiAgIGlmIChvcHAxLT5iYW5kd2lkdGggJiYgb3BwMi0+YmFuZHdpZHRoICYmCj4gICAg
ICAgb3BwMS0+YmFuZHdpZHRoWzBdLnBlYWsgIT0gb3BwMi0+YmFuZHdpZHRoWzBdLnBlYWspCj4g
ICAgIHJldHVybiBvcHAxLT5iYW5kd2lkdGhbMF0ucGVhayA8IG9wcDItPmJhbmR3aWR0aFswXS5w
ZWFrID8gLTEgOiAxOwo+ICAgaWYgKG9wcDEtPmxldmVsICE9IG9wcDItPmxldmVsKQo+ICAgICBy
ZXR1cm4gb3BwMS0+bGV2ZWwgPCBvcHAyLT5sZXZlbCA/IC0xIDogMTsKPiAgIHJldHVybiAwOwo+
IH0KPiAKPiBQZXJoYXBzIHdlIGNvdWxkIGNoZWNrIHdoZXRoZXIgb3BwMS0+cmF0ZT0wLCBsaWtl
IGl0J3MgZG9uZSBmb3IgdGhlCj4gb3BwMS0+YmFuZHdpZHRoLiBJJ2xsIGNvbnNpZGVyIHRoaXMg
dmFyaWFudCBmb3IgdjMsIHRoYW5rcy4KCi0tIAp2aXJlc2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
