Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 363522A37A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 10:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6849B86B2C;
	Sat, 25 May 2019 08:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUvA6fGtR3AD; Sat, 25 May 2019 08:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADF8B86948;
	Sat, 25 May 2019 08:39:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF3541BF5E6
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 08:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A94D286948
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 08:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F4LpiNziUV3D for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 08:39:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9956B867F6
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 08:39:22 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id q16so2243633ljj.8
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 01:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=WpJePGfJIkx4FN1WBzkrq9jAiVMdDuI8VDoj6jlDCJw=;
 b=upKWGQ+8nYg4SmyNCTZ+wtvSB9hiUgEmIQ2z7RttYczwgS0kUu2WPdGRHRuxqQiQug
 YJAzcW1nV/5MuyFv1ws+AzkXSeGh5w2fvs+rUQd+o6k3Qu4v0aPwuZdw4e/qX1O8mpJw
 uPIMLvjVMCxs3Q2qXyipQq37siSJg40ZFxpFA0jJ72pOM1ylmXAnY2TEnuAZGjLYX0aQ
 OdNtqYGIs0+rj1X+Y1D41nEqe9VmShi8EjBnePRXdOyk33jmICFemz+mVl/xXLe4Wui8
 4ybXb/ELQKKBc0MwUD3KfuRmSlyD7NPLqJiRrzOPwCRLnhhhAt9r5gTYOE1l90BhmbWP
 qIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=WpJePGfJIkx4FN1WBzkrq9jAiVMdDuI8VDoj6jlDCJw=;
 b=oRmTjQzGafdVjyHNVDdJG9LJ+B4mwLZzU0yV5t5Z0M/IV98iFek9xY19fJnBgrf0n/
 eC4r1l+MhisLOWbZYfHu6TjonKZ0YSFAZCWi/UIMeHm/7pEyLr52fZYGAHIWFRtrksCT
 jTobcvySpstgBZ1o/NtT146czM6FFzY0pq2ZNJzzOAucoNrqYFztBhEsN82qLNJ8wBwh
 cD5gWOphFvN7GG6/TdvVStGd2FkQaGJWsCPZCU3D4F5wZtYLvGHAp0xjUn6RH1z65lsy
 aZ+SrjIrzsnNM/K8xCRk4UvEo37p8xoil23mG0edaaZm6o7dytjOXxTuNuFF5RkCi4Nl
 2MWg==
X-Gm-Message-State: APjAAAXAdjxku3qo//bvO1Ei8SE2wKxP12by6OAZkcThbEMhTOYAy8jP
 LoStWBtk6LjMqnfTjExm8QC2cQ==
X-Google-Smtp-Source: APXvYqzjUHk8+eGgs6xW9sGM4or2e8CwO+kAgBfVsPn2uuho8wMG4elnmrcXZBtsSzpvhH2RZogaqA==
X-Received: by 2002:a05:651c:1055:: with SMTP id
 x21mr36711486ljm.83.1558773560815; 
 Sat, 25 May 2019 01:39:20 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id v9sm855551ljd.45.2019.05.25.01.39.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 01:39:20 -0700 (PDT)
Date: Sat, 25 May 2019 10:39:18 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: kpc2000: add missing dependencies for kpc2000
Message-ID: <20190525083918.dxa5qtomlu5yyqw5@dev.nikanor.nu>
References: <20190524203058.30022-1-simon@nikanor.nu>
 <20190524203058.30022-3-simon@nikanor.nu>
 <20190525050017.GA18684@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525050017.GA18684@kroah.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBNYXkgMjUsIDIwMTkgYXQgMDc6MDA6MTdBTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBGcmksIE1heSAyNCwgMjAxOSBhdCAxMDozMDo1OFBNICswMjAwLCBTaW1vbiBTYW5kc3Ry
w7ZtIHdyb3RlOgo+ID4gRml4ZXMgYnVpbGQgZXJyb3JzOgo+ID4gCj4gPiBFUlJPUjogIm1mZF9y
ZW1vdmVfZGV2aWNlcyIgW2twYzIwMDAua29dIHVuZGVmaW5lZCEKPiA+IEVSUk9SOiAidWlvX3Vu
cmVnaXN0ZXJfZGV2aWNlIiBba3BjMjAwMC5rb10gdW5kZWZpbmVkIQo+ID4gRVJST1I6ICJtZmRf
YWRkX2RldmljZXMiIFtrcGMyMDAwLmtvXSB1bmRlZmluZWQhCj4gPiBFUlJPUjogIl9fdWlvX3Jl
Z2lzdGVyX2RldmljZSIgW2twYzIwMDAua29dIHVuZGVmaW5lZCEKPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tjb25maWcgfCAyICsrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tjb25maWcKPiA+IGluZGV4
IGM0NjNkMjMyZjJiNC4uNTE4OGI1NjEyM2FiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFn
aW5nL2twYzIwMDAvS2NvbmZpZwo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAvS2Nv
bmZpZwo+ID4gQEAgLTMsNiArMyw4IEBACj4gPiAgY29uZmlnIEtQQzIwMDAKPiA+ICAJYm9vbCAi
RGFrdHJvbmljcyBLUEMgRGV2aWNlIHN1cHBvcnQiCj4gPiAgCWRlcGVuZHMgb24gUENJCj4gPiAr
CXNlbGVjdCBNRkRfQ09SRQo+ID4gKwlzZWxlY3QgVUlPCj4gPiAgCWhlbHAKPiA+ICAJICBTZWxl
Y3QgdGhpcyBpZiB5b3Ugd2lzaCB0byB1c2UgdGhlIERha3Ryb25pY3MgS1BDIFBDSSBkZXZpY2Vz
Cj4gPiAgCj4gCj4gVGhpcyBpcyBhbHJlYWR5IGluIGxpbnV4LW5leHQgKGluIGEgZGlmZmVyZW50
IGZvcm0pLCBhcmUgeW91IHN1cmUgeW91Cj4gYXJlIHdvcmtpbmcgYWdhaW5zdCB0aGUgbGF0ZXN0
IGtlcm5lbCB0cmVlPwo+IAo+IHRoYW5rcywKPiAKPiBncmVnIGstaAoKSXQncyBiYXNlZCBvbiB5
b3VyIHN0YWdpbmcgdHJlZS4gSSB0aGluayB0aGF0IEkgaGF2ZSB0byBnbyBiYWNrIGFuZCByZWFk
CmFib3V0IG5leHQgdHJlZXMgYWdhaW4sIGJlY2F1c2UgSSB0aG91Z2h0IGl0IHRvb2sgbG9uZ2Vy
IHRpbWUgZm9yIHRoaW5ncwp0byBnZXQgZnJvbSBzdGFnaW5nLW5leHQgdG8gbGludXgtbmV4dC4K
CkFueXdheSwgbmVpdGhlciB0aGUgTUZEX0NPUkUgbm9yIHRoZSB0eXBvIGZpeCBpcyBpbiBsaW51
eC1uZXh0IHNvIEkKZ3Vlc3MgdGhhdCBJIGNvdWxkIGp1c3QgcmViYXNlIHRoaXMgb24gbGludXgt
bmV4dCBhbmQgcmUtc2VuZCBhcyB2Mi4KSSdtIG5vdCBzdXJlIGlmIE1GRF9DT1JFIHNob3VsZCBi
ZSAiZGVwZW5kcyBvbiIgb3IgInNlbGVjdCIgdGhvdWdoLi4uCgoKLSBTaW1vbgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
