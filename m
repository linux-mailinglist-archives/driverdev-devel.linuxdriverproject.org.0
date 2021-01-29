Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0554B308954
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 14:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B33952E14F;
	Fri, 29 Jan 2021 13:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjSsCpVyWgYR; Fri, 29 Jan 2021 13:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81E2722E96;
	Fri, 29 Jan 2021 13:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8569B1BF591
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81EFE84537
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n6-OJmEKWNc1 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 13:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC77384518
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 13:29:14 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id e15so7179287wme.0
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 05:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IDWUezIxYmnDjB6K8fc8DywReWx8ijzLCuSdygXJhhk=;
 b=xsT2/HDzKYodzsiw5dUjfLUhRfpb0SvGn26ziUsT5UURRv0oPe+3NNxFFZoomAa1Nz
 DqEW7xfOpmHN9aJ9WDOIUIK9QzR9nvQ0e+Vm4KkFKNlQlDhUzR0AcGRxcbtG1Upej4Kh
 C+CP0cIkUDuJCVXvWLY5hiHlEcfv874ZHr1LBspQhBxtq7VZXln5ucV2USud+im1HpQA
 DVDO7l2e5TzlkgBbFerp/rC5ZUr/eVp27mwmI+/RNCb96h9SEV0xDXijYYOkVzYE4rXC
 htNmVzoGTWgnXo5fCa3EmMRhiUKfHcjdGChfsnIqO9p9qWerrR8m5fg3Tq2+S6Dt9Cp1
 CEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IDWUezIxYmnDjB6K8fc8DywReWx8ijzLCuSdygXJhhk=;
 b=f4xiplH6wX0Ik/5UQSShi9/RYekP7irTynKnSNuRVl3Gc7ubF19NHVjk5DRG2ulAxH
 C/YxCA+iCLUXdhbmd+DtdXR0EI7N9Zmk560aXCvPcDxeV/tTnAp16W8CEU+tDkQP4Dbg
 4VtjaG6d+8qPyQJ7MASe6iCBjzd0y+ciriaKe6y/crcfgnCWtxN/XqflaiR5Ajlfke6N
 fqG21Tg9LPRWFGU6G0ZMAntGG35zB6h/9RignclGsTPxpt27guqruqBcKu/ml8Tx8RKG
 k51AOWJAIjTyu13jFTS69RJKjVLgg5sYImGYv8ts0TE6ixNFVrR+GLGYh9nrqQA6UoaH
 PZcg==
X-Gm-Message-State: AOAM531rgXEqQrnEJuEcOsvgecNbiQKsIpuOLK4t2HY24nEoTmkug46K
 NFmEbqzYX9A0AZ0u8Fs6XB0gWg==
X-Google-Smtp-Source: ABdhPJwMcRQcGKZmZ8yP7iTPz2oUEjVwF3ZJRxWd0bUmODxyxXW0ay26pI/Pe9sFZZmrJZj7mBzVAg==
X-Received: by 2002:a1c:9850:: with SMTP id a77mr3788324wme.163.1611926952998; 
 Fri, 29 Jan 2021 05:29:12 -0800 (PST)
Received: from dell ([91.110.221.188])
 by smtp.gmail.com with ESMTPSA id p18sm9699451wmc.31.2021.01.29.05.29.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 05:29:12 -0800 (PST)
Date: Fri, 29 Jan 2021 13:29:10 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 18/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210129132910.GP4774@dell>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
 <20210127110537.GI4903@dell> <20210129140348.6b151fcb@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129140348.6b151fcb@coco.lan>
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
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCAyOSBKYW4gMjAyMSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgoKPiBIaSBM
ZWUsCj4gCj4gRW0gV2VkLCAyNyBKYW4gMjAyMSAxMTowNTozNyArMDAwMAo+IExlZSBKb25lcyA8
bGVlLmpvbmVzQGxpbmFyby5vcmc+IGVzY3JldmV1Ogo+IAo+ID4gT24gVHVlLCAxOSBKYW4gMjAy
MSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+ID4gCj4gPiA+IFRoaXMgZHJpdmVyIGlz
IHJlYWR5IGZvciBtYWluc3RyZWFtLiBTbywgbW92ZSBpdCBvdXQgb2Ygc3RhZ2luZy4KPiA+ID4g
Cj4gCj4gPiBSZXBsaWVkIHRvIGFuIGVhcmxpZXIgc3VibWlzc2lvbiB3aGVyZSBJIHdhcyBhYmxl
IHRvIHJlcGx5IGluLWxpbmUuCj4gCj4gU29ycnkhIEluZnJhZGVhZCBzZWVtZWQgdG8gaGF2ZSBz
b21lIHByb2JsZW0gYmV0d2VlbiBKYW4gMjYtMjc6IGVtYWlscwo+IGdvdCBsYXRlLWRlbGl2ZXJl
ZC4KCk5vIHByb2JsZW0uCgo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBtZmRfY2VsbCBoaTY0
MjF2NjAwX2RldnNbXSA9IHsKPiA+ID4gKwl7IC5uYW1lID0gImhpNjQyMXY2MDAtcmVndWxhdG9y
IiwgfSwKPiA+ID4gK307ICAKPiA+IAo+ID4gV2hlcmUgYXJlIHRoZSByZXNldCBvZiB0aGUgZGV2
aWNlcz8KPiAKPiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGhlcmUuIAo+IAo+IFRoaXMgTUZEIGRl
dmljZSBwcm92aWRlczoKPiAKPiAJLSBhbiBJUlEgaGFuZGxlcjsKPiAJLSBzZXZlcmFsIExETyBs
aW5lcyB1c2VkIGJ5IGEgcmVndWxhdG9yIGRyaXZlci4KPiAKPiBUaGUgSVJRIGhhbmRsZXIgaXMg
cHJvcGVybHkgaW5pdGlhbGl6ZWQgaGVyZSwgd2hpbGUgdGhlCj4gcmVndWxhdG9ycyBhcmUgaW5p
dGlhbGl6ZWQgYnkgdGhlIHJlZ3VsYXRvciBkcml2ZXIuIFRoZSBpbml0aWFsCj4gc3RhdGUgb2Yg
dGhpcyBkZXZpY2UgaXMgc2V0IHVwIGJ5IHUtYm9vdC4KPiAKPiBTbywgQUZBSUtULCB0aGVyZSdz
IG5vIG5lZWQgdG8gaGF2ZSBhbnkgcmVzZXQgbGluZQo+IGF0dGFjaGVkIGhlcmUuCgpPaCB3b3ch
ICBTb3JyeSBhYm91dCB0aGF0LiAgSXQncyBhIG1pc3NwZWxsaW5nLgoKIldoZXJlIGFyZSB0aGUg
KnJlc3QqIG9mIHRoZSBkZXZpY2VzPyIKClJlZ2lzdGVyaW5nIG9uZSBkZXZpY2UgZG9lcyBub3Qg
cXVhbGlmeSB0aGlzIGFzIGFuIE1GRC4KCj4gWWV0LCBJJ20gc3RpbGwgZmlndXJpbmcgb3V0IGhv
dyB0aGUgUENJZSBjaGlwcyBhdCBIaWtleSA5NzAKPiBzaG91bGQgYmUgcHJvcGVybHkgaW5pdGlh
bGl6ZWQuIFNvLCBJIG1heSBuZWVkIHRvIGFkZCBzb21ldGhpbmcKPiBzb21ld2hlcmUgaW4gb3Jk
ZXIgdG8gcHJvcGVybHkgcmVzZXQgYW5kIHBvd2VyIHVwIHRoZSBFdGhlcm5ldCwKPiBNLjIgYW5k
IFBDSWUgMXggc2xvdC4KPiAKPiBUaG9zZSBhcmUgbGlua2VkIHRvIHRoZSBMRE8gMzMuCj4gCj4g
PiA+ICtzdGF0aWMgdm9pZCBoaTY0MjFfc3BtaV9pcnFfbWFzayhzdHJ1Y3QgaXJxX2RhdGEgKmQp
Cj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IGhpNjQyMV9zcG1pX3BtaWMgKnBtaWMgPSBpcnFfZGF0
YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPiA+ID4gKwl1bnNpZ25lZCBsb25nIGZsYWdzOwo+ID4g
PiArCXVuc2lnbmVkIGludCBkYXRhOwo+ID4gPiArCXUzMiBvZmZzZXQ7Cj4gPiA+ICsKPiA+ID4g
KwlvZmZzZXQgPSAoaXJxZF90b19od2lycShkKSA+PiAzKTsgIAo+ID4gCj4gPiBXaHkgMz8gCj4g
Cj4gTm8gaWRlYS4gSSBkb24ndCBoYXZlIGFueSBkYXRhc2hlZXRzIGZyb20gdGhpcyBkZXZpY2Uu
Cj4KPiA+IFByb2JhYmx5IGJldHRlciB0byBkZWZpbmUgdGhlc2Ugc2hpZnRzL21hc2tzIHJhdGhl
ciB0aGFuIHVzZQo+ID4gbWFnaWMgbnVtYmVycyB3aXRoIG5vIGNvbW1lbnRzLgo+IAo+IEknbGwg
Y2hhbmdlIHRoZSBhYm92ZSB0bzoKPiAKPiAJI2RlZmluZSBISVNJX0lSUV9NQVNLCQkJR0VOTUFT
SygxLCAwKQo+IAo+IAlvZmZzZXQgPSAoaXJxZF90b19od2lycShkKSA+PiBISVNJX0lSUV9NQVNL
KTsKClRoaXMgaXMgYSBzaGlmdCBzdXJlbHk/ICBNYXJrcyBhcmUgdXN1YWxseSAmJ2VkLgoKPiA+
ID4gKwlyZWdtYXBfcmVhZChwbWljLT5tYXAsIG9mZnNldCwgJmRhdGEpOwo+ID4gPiArCWRhdGEg
fD0gKDEgPDwgKGlycWRfdG9faHdpcnEoZCkgJiAweDA3KSk7ICAKPiA+IAo+ID4gV2hhdCBhcmUg
eW91IGRvaW5nIGhlcmU/Cj4gPiAKPiA+IE1heWJlIGltcHJvdmVkIGRlZmluZXMgd2lsbCBiZSBl
bm91Z2guICBJZiBub3QsIHBsZWFzZSBzdXBwbHkgYQo+ID4gc3VpdGFibGUgY29tbWVudC4KPiAK
PiBBZ2Fpbiwgbm8gaWRlYS4gVGhlIG9ubHkgZG9jdW1lbnRhdGlvbiBJIGhhZCBhY2Nlc3MgdG8g
dGhpcyBjaGlwIGlzCj4gYXQ6Cj4gCj4gCWh0dHBzOi8vd3d3Ljk2Ym9hcmRzLm9yZy9kb2N1bWVu
dGF0aW9uL2NvbnN1bWVyL2hpa2V5L2hpa2V5OTcwLwo+IAo+IFdpdGggZG9lc24ndCBtZW50aW9u
IGFueSByZWdpc3RlciBkZXRhaWxzLgo+IAo+IFRoZSBkcml2ZXIgaXRzZWxmIGNhbWUgZnJvbSB0
aGUgTGluYXJvJ3MgOTZib2FyZHMgZ2l0IHRyZWUsIHdpdGggYWxzbwo+IGRvZXNuJ3QgY29udGFp
biBhbnkgcmVnaXN0ZXIgbWFwcGluZy4KCldlbGwgdGhhdCdzIGF3a3dhcmQuCgpJJ20gbm90IGtl
ZW4gb24gbWVyZ2luZyBjb2RlIHRoYXQgbm8gb25lIGtub3dzIHdoYXQgaXQgZG9lcy4KCk1heWJl
IEkgY2FuIGRvIHNvbWUgZGlnZ2luZy4KCj4gPiA+ICsJCXByX2RlYnVnKCJQTVUgSVJRIGFkZHJl
c3MgdmFsdWU6aXJxWzB4JXhdID0gMHgleFxuIiwKPiA+ID4gKwkJCSBTT0NfUE1JQ19JUlEwX0FE
RFIgKyBpLCBwZW5kaW5nKTsgIAo+ID4gCj4gPiBBZ2FpbiwgaXMgdGhpcyBhY3R1YWxseSB1c2Vm
dWwgdG8gYW55b25lIG5vdyB0aGF0IHRoZSBkcml2ZXIgaXMgbmVhcmx5Cj4gPiAxMCB5ZWFycyBv
bGQuICBQYXJ0aWN1bGFybHkgYW55b25lIHdobyBjYW4ndCBhZGQgYSBxdWljayBwcmludGsoKQo+
ID4gZHVyaW5nIGEgZGVidWcgc2Vzc2lvbj8KPiAKPiBXaXRoIHJlZ2FyZHMgdG8gdGhlIGRlYnVn
IHN0dWZmLCBJJ20gZHJvcHBpbmcgZXZlcnl0aGluZy4KCkdyZWF0LgoKPiBPbiBhIHNpZGUgY29t
bWVudCwgSSBkb3VidCB0aGF0IHRoZSBkcml2ZXIgaGFzIDEwIHllYXJzIG9sZCA7LSkKPiAKPiBT
ZWUsIEhpa2V5IDk3MCB1c2VzIEtpcmluIDk3MCBTb0MsIHdoaWNoIGl0IHdhcyBsYXVuY2hlZCBp
biBTZXB0LCAyMDE3LiAKClRoZSBoZWFkZXIgaGFzIGEgY29weXJpZ2h0IGZyb20gMjAxMS4KCiAv
LyBDb3B5cmlnaHQgKGMpIDIwMTMgTGluYXJvIEx0ZC4KIC8vIENvcHlyaWdodCAoYykgMjAxMSBI
aXNpbGljb24uCgo+IFRoZSBvcmlnaW5hbCB2ZXJzaW9uIG9mIHRoaXMgZHJpdmVyIHB1YmxpY2x5
IGRlYnV0ZWQgb24gdGhpcyB0cmVlOgo+IAo+IAlodHRwczovL2dpdGh1Yi5jb20vOTZib2FyZHMt
aGlrZXkvbGludXgvYmxvYi9oaWtleTk3MC12NC45L2RyaXZlcnMvbWZkL2hpc2lfcG1pY19zcG1p
LmMKPiAKPiBPbiBhIGNvbW1pdCBtYWRlIG9uIEZlYiwgMjAxOC4KPiAKPiBPaywgSGk2NDIxdjYw
MCBpcyBhIHNlcGFyYXRlIHNpbGljb24sIHByb2JhYmx5IGRlcml2YXRpdmUgZnJvbQo+IEhpNjQy
MSAodXNlZCBvbiBIaWtleSA5NjApLiBJdHMgY29weXJpZ2h0IG1lbnRpb25zIDIwMTEsIGJ1dCAK
PiB0aGF0J3MgcHJvYmFibHkgYmVjYXVzZSB0aGUgY29kZSBpdHNlbGYgY2FtZSBmcm9tIG9sZGVy
IGdlbmVyYXRpb25zCj4gb2YgdGhlIHJlZ3VsYXRvciBjaGlwc2V0LgoKU28gd2UndmUgaW5oZXJp
dGVkIGEgY29weXJpZ2h0IGZyb20gYW5vdGhlciBkcml2ZXI/CgpTb3VuZHMgc3VzcGVjdC4KCj4g
UGxlYXNlIHNlZSB0aGUgZW5jbG9zZWQgcGF0Y2ggZm9yIHRoZSBuZXcgY29kZSBhZnRlciBmaXhp
bmcgdGhlIGlzc3Vlcwo+IHlvdSBwb2ludGVkLiBJJ2xsIHJlLXN1Ym1pdCBpdCBhcyBhIHNlcmll
cyBvbmNlIHlvdSdyZSBvayB3aXRoIHRoZQo+IGNvZGUuCgpXb3VsZCB5b3UgbWluZCBqdXN0IHJl
c3VibWl0dGluZyBwbGVhc2U/ICBXZSBjYW4gZ28gZnJvbSB0aGVyZS4KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGlu
YXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
