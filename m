Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB702AB066
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A83820509;
	Mon,  9 Nov 2020 05:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxN6n7ya2wS1; Mon,  9 Nov 2020 05:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 283B2204F9;
	Mon,  9 Nov 2020 05:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 316C41BF29E
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2BD46870B1
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eMSrnoREqMfo for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81A78870A7
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:00:14 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id z1so4126713plo.12
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pqRYwsgE80dyuksaxFD472eZJVu82XkbBKetRcMgwkU=;
 b=jEZAcCQJcoNyrqtopd159IVehbQnFdrCz6Gv6znnBL+oQ9Lbu4SwHrg2soadRKeK2K
 tHih4WST3i/TCcj6zG3NcC99f5l/4cWK9Hfln+BVXXbkrR1PnWTasCM5zfT/TMCZDGt9
 4y9fQy768qLLnTE3MNoBwJpSS+n1y2hy4CEdK5c9TZgDv/CsZCyWoBuiaAscEi6XOXaz
 fFRrm9tIKwCRdg8pkO9cL1mnHke7AsuFQHSxVtVK1lOFWXAcbU0rrIszlYFyBsfjnS5J
 5MYwsJUwjmTVqE/xB66miJ9Smg7Qnite7DZudEoTQOg9GTVBnz2CKxeWfhRk9Fxccles
 G1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=pqRYwsgE80dyuksaxFD472eZJVu82XkbBKetRcMgwkU=;
 b=hY0UqrPP97coK5xFHrsdRJQScLXMTQomh+NKyXSswrVVvgCc34rEJOJL4AeKGvA843
 BA12XWsxAmYKDcJR5qZJ8S/4/0lmF+Y3PT2De8BKKGUIKOqWNHgcp26r2Lt6VPTHASbZ
 bew4IO6I5rvXYTU/SNcP6qw/FUtQjWVdJLwidLFZMmFQwGlDpvAVae91UkPSKhUdq7Bw
 250V68M2B82FJqtKMph/eqILnC3dSWgAJzMEvsGzG+YjqdC02R8LdHpYWan+NoKxcxTZ
 VKIHIdfuMACeCywJ7ZeWIuZpBrCeiIsX7YdEYW9PD9QfYhFJ2LGFxiVishc3TN7k2JLa
 LDCA==
X-Gm-Message-State: AOAM532KnKEuDLaztXHNijXk9qFB7wXwj2AFJX652XPfyztAyY/Dlhdb
 YtVUb8tzkBg6VblBe3ABU4ZnFw==
X-Google-Smtp-Source: ABdhPJxqVzbXuE7r2OTnlJIGnZcPTN9Z6rBdnUMyX2RPUkOj+pqZMZGHLq2naeoWPtp+jW/061Xf1w==
X-Received: by 2002:a17:902:a612:b029:d6:6ae:4d47 with SMTP id
 u18-20020a170902a612b02900d606ae4d47mr10993684plq.50.1604898014065; 
 Sun, 08 Nov 2020 21:00:14 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id gx24sm3171830pjb.38.2020.11.08.21.00.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:00:12 -0800 (PST)
Date: Mon, 9 Nov 2020 10:30:10 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
Message-ID: <20201109050010.g47zojh6wafvwqva@vireshk-i7>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
 <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDYtMTEtMjAsIDIxOjQxLCBGcmFuayBMZWUgd3JvdGU6Cj4gT24gRnJpLCBOb3YgNiwgMjAy
MCBhdCA5OjE4IFBNIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gMDYuMTEuMjAyMCAwOToxNSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiA+IFNl
dHRpbmcgcmVndWxhdG9ycyBmb3IgY291bnQgYXMgMCBkb2Vzbid0IHNvdW5kIGdvb2QgdG8gbWUu
Cj4gPiA+Cj4gPiA+IEJ1dCwgSSB1bmRlcnN0YW5kIHRoYXQgeW91IGRvbid0IHdhbnQgdG8gaGF2
ZSB0aGF0IGlmIChoYXZlX3JlZ3VsYXRvcikKPiA+ID4gY2hlY2ssIGFuZCBpdCBpcyBhIGZhaXIg
cmVxdWVzdC4gV2hhdCBJIHdpbGwgaW5zdGVhZCBkbyBpcywgYWxsb3cgYWxsCj4gPiA+IGRldl9w
bV9vcHBfcHV0KigpIEFQSSB0byBzdGFydCBhY2NlcHRpbmcgYSBOVUxMIHBvaW50ZXIgZm9yIHRo
ZSBPUFAKPiA+ID4gdGFibGUgYW5kIGZhaWwgc2lsZW50bHkuIEFuZCBzbyB5b3Ugd29uJ3QgYmUg
cmVxdWlyZWQgdG8gaGF2ZSB0aGlzCj4gPiA+IHVud2FudGVkIGNoZWNrLiBCdXQgeW91IHdpbGwg
YmUgcmVxdWlyZWQgdG8gc2F2ZSB0aGUgcG9pbnRlciByZXR1cm5lZAo+ID4gPiBiYWNrIGJ5IGRl
dl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMoKSwgd2hpY2ggaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRv
Cj4gPiA+IGFueXdheXMuCj4gPgo+ID4gUGVyaGFwcyBldmVuIGEgYmV0dGVyIHZhcmlhbnQgY291
bGQgYmUgdG8gYWRkIGEgZGV2bSB2ZXJzaW9ucyBvZiB0aGUgT1BQCj4gPiBBUEkgZnVuY3Rpb25z
LCB0aGVuIGRyaXZlcnMgd29uJ3QgbmVlZCB0byBjYXJlIGFib3V0IHN0b3JpbmcgdGhlCj4gPiBv
cHBfdGFibGUgcG9pbnRlciBpZiBpdCdzIHVudXNlZCBieSBkcml2ZXJzLgo+IAo+IEkgdGhpbmsg
c28uIFRoZSBjb25zdW1lciBtYXkgbm90IGJlIHNvIGNvbmNlcm5lZCBhYm91dCB0aGUgc3RhdHVz
IG9mCj4gdGhlc2UgT1BQIHRhYmxlcy4KPiBJZiB0aGUgZHJpdmVyIG5lZWRzIHRvIG1hbmFnZSB0
aGUgcmVsZWFzZSwgaXQgbmVlZHMgdG8gYWRkIGEgcG9pbnRlcgo+IHRvIHRoZWlyIGRyaXZlciBn
bG9iYWwgc3RydWN0dXJlLgo+IAo+IE1heWJlIGl0J3Mgd29ydGggaGF2aW5nIHRoZXNlIGRldm0g
aW50ZXJmYWNlcyBmb3Igb3BwLgoKU3VyZSBpZiB0aGVyZSBhcmUgZW5vdWdoIHVzZXJzIG9mIHRo
aXMsIEkgYW0gYWxsIGZvciBpdC4gSSB3YXMgZmluZQp3aXRoIHRoZSBwYXRjaGVzIHlvdSBzZW50
LCBqdXN0IHRoYXQgdGhlcmUgd2VyZSBub3QgYSBsb3Qgb2YgdXNlcnMgb2YKaXQgYW5kIHNvIEkg
cHVzaGVkIHRoZW0gYmFjay4gSWYgd2UgZmluZCB0aGF0IHdlIGhhdmUgbW9yZSB1c2VycyBvZiBp
dApub3csIHdlIGNhbiBzdXJlbHkgZ2V0IHRoYXQgYmFjay4KCi0tIAp2aXJlc2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
