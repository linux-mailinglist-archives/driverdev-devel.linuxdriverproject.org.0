Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906CE2BFE83
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 04:08:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48AF8870B7;
	Mon, 23 Nov 2020 03:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COhi12cVVhej; Mon, 23 Nov 2020 03:08:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DC8F87080;
	Mon, 23 Nov 2020 03:08:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B14831BF3BB
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 03:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD33E85F97
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 03:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9vfgrkxwrj02 for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 03:08:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4646485F95
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 03:08:07 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id o9so21285500ejg.1
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 19:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=X/h8mnbAUuvIjH6Tba/THN9fIiEUryqxQTJ1lpmtNis=;
 b=y7kbd8ECOpDrtxh6QBb19MEWdUVAFBR3AzXzNV6TFTaa8LQHh0waCoKoLOZTWu2Sz3
 r9dEondUCP29tJNwj6XIO/inCY9Y/6X/7lmDcDCzsSyZxuWSpAZ6wWpkdqeUs0EbnQyy
 Rdjm7CO7c/42wqJ1rpoy8eeLd7aHX4CR0DX0E39tnUZEnrUPvYW6F3QdHDP+wrhjAhtR
 ZCPRPqVJlkwxTyk1+POJA00SiTh3g0rgvVMNLQwnCanPvuDAZ2O1K+/UpzaKUJm5HBaa
 MkcgzVOlKha0NoNHEQOhSuvcCeQQ4fqujOG8aB/8EUjVhzfh0wCgmduKbA8laYIonyKQ
 +dqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X/h8mnbAUuvIjH6Tba/THN9fIiEUryqxQTJ1lpmtNis=;
 b=s2jNccX1gp9uJLqUvGCnNQ58F3pzp526+rGyNzizwUQHvb2mIkmBdm1QYhCKbdMlg4
 pzAwrUJNlCzG3T4H7qS/nH/XUvrdfd2KQQhHg8y/qf86YNnCBhYFhav3263OBsKtYJxu
 hJMQ0jN5bKdrgtrnXLHOeBXkkmuENeFViRI3rwc/Jw6v2VMHFxrbnTRmtvfqDEeAce0W
 3bN0mJiDNxdoi0scu/4cTXHSIP6rRzBlSzgjfNsO0ILBYaKZtW5oHIyVlSvRaVPj6pob
 yNypTjf1owUPf788XZ1NIMLKE8lWj9WqLi8iHhR2dpkOTRXyLv39y40743R0cn/G80BN
 TY+w==
X-Gm-Message-State: AOAM530e7ItHHNgtkZA071KhtldfpZDtwyP906cHBaEX9TLOtVTP8D29
 wbPIkr91ijBKgOhhlgJAeQPsY+HJwC0Ar5wNwSgQ/w==
X-Google-Smtp-Source: ABdhPJwU0MxV1+uBRTiVT8JVaHkd74D4cjl2EjekvPyzveVzCXAZrz8+0U9zue39xgA3JwkJ3gYm70Q/DXMwUnrD4QU=
X-Received: by 2002:a17:906:8c7:: with SMTP id
 o7mr36471249eje.413.1606100885616; 
 Sun, 22 Nov 2020 19:08:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1513038011.git.digetx@gmail.com>
 <3d565db80f8dccafd14224924305243b37b75a07.1513038011.git.digetx@gmail.com>
 <CAAEAJfBZD0u6MDxcp3See-agzyCSJS7dKpwK28LMJwPvE9DLtQ@mail.gmail.com>
 <5665b221-04d7-6be9-2377-8006b9563d4b@gmail.com>
In-Reply-To: <5665b221-04d7-6be9-2377-8006b9563d4b@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 23 Nov 2020 00:07:57 -0300
Message-ID: <CAAEAJfAdGeFK7DNY3QzRZEsZx+PGbQtxyyOPwawmMsx2JByt8g@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] staging: media: Introduce NVIDIA Tegra video
 decoder driver
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Stephen Warren <swarren@wwwdotorg.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Vladimir Zapolskiy <vz@mleia.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAyMSBOb3YgMjAyMCBhdCAyMzowMSwgRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21h
aWwuY29tPiB3cm90ZToKPgo+IDIyLjExLjIwMjAgMDQ6MDIsIEV6ZXF1aWVsIEdhcmNpYSDQv9C4
0YjQtdGCOgo+ID4gSGkgRG1pdHJ5LAo+ID4KPiAuLi4KPiA+PiArKysgYi9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvdGVncmEtdmRlL1RPRE8KPiA+PiBAQCAtMCwwICsxLDQgQEAKPiA+PiArVE9ETzoK
PiA+PiArICAgICAgIC0gSW1wbGVtZW50IFY0TDIgQVBJIG9uY2UgaXQgZ2FpbnMgc3VwcG9ydCBm
b3Igc3RhdGVsZXNzIGRlY29kZXJzLgo+ID4+ICsKPiA+PiArQ29udGFjdDogRG1pdHJ5IE9zaXBl
bmtvIDxkaWdldHhAZ21haWwuY29tPgo+ID4KPiA+IFRoZSBBUEkgZm9yIEgyNjQgc3RhdGVsZXNz
IGRlY29kaW5nIGlzIHJlYWR5Lgo+ID4gU2VlIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzEx
LzE4Lzc5NS4KPgo+IEhlbGxvIEV6ZXF1aWVsLAo+Cj4gVGhhbmsgeW91IGZvciB0aGUgbm90aWZp
Y2F0aW9uISBNeSBsYXN0IGF0dGVtcHQgYXQgaW1wbGVtZW50aW5nIFY0TCBBUEkKPiBzdXBwb3J0
IHdhcyBhYm91dCBhIHllYXIgYWdvIGFuZCBpdCBzdG9wcGVkIG9uY2UgSSByZWFsaXplZCB0aGF0
IHRoZXJlCj4gaXMgbm8gdXNlcnNwYWNlIHdoaWNoIHVzZXMgdGhhdCBBUEkuIEZGTVBFRyBhbmQg
Y2hyb21pdW0gYnJvd3NlciBoYWQKPiBzb21lIGtpbmQgb2YgVjRMIHN1cHBvcnQsIGJ1dCBpdCBh
bGwgd2FzIG9yaWVudGVkIGF0IGRvd25zdHJlYW0gZHJpdmVyCj4gc3RhY2tzLCBhbmQgdGh1cywg
bm90IHVzYWJsZS4gRG8geW91IGtub3cgd2hhdCBpcyB0aGUgY3VycmVudCBzdGF0dXM/Cj4KClRo
ZSBidWxrIG9mIHRoZSBBUEksIHdoaWNoIHJlbGllcyBvbiB0aGUgc3RhdGVsZXNzIGRlY29kZXIg
aW50ZXJmYWNlIFsxXSwKYW5kIEgyNjQgc3RhdGVsZXNzIFY0TDIgY29udHJvbHMgaGFzIGJlZW4g
cmVhZHkgZm9yIHNvbWUgdGltZSBub3csCmFuZCB0aGVyZSBhcmUgdmFyaW91cyBpbXBsZW1lbnRh
dGlvbnMgc3VwcG9ydGluZyBpdC4KCkNocm9taXVtIHN1cHBvcnRzIGl0IFsyXSwgYW5kIEkndmUg
dGVzdGVkIGl0IG9uIGNocm9tZWJvb2tzLAp0aHJvdWdoIGNocm9tZW9zIGJ1aWxkcy4gV2UgaGF2
ZW4ndCB0cmllZCBhIG5vbi1jaHJvbWVvcyBidWlsZCwKYW5kIEkgd291bGQgc2F5IGl0J3MgcXVp
dGUgc29tZSB3b3JrLgoKR1N0cmVhbWVyIHN1cHBvcnQgaXMgYXZhaWxhYmxlIGFzIHdlbGwuIFNl
ZSBbM10gd2hpY2ggc2hvdWxkCndvcmsgZm9yIHRoZSBsYXRlc3QgSDI2NCBjb250cm9scyAodGhl
IG9uZXMgYmVpbmcgbW92ZWQgb3V0IG9mIHN0YWdpbmcpLgoKTGlicmVFTEVDIGRldmVsb3BlcnMg
bWFpbnRhaW4gYW4gRmZtcGVnIGJyYW5jaCBbNF0sIEkgZXhwZWN0IGl0IHdpbGwKYmUgdXBkYXRl
ZCBmb3IgdGhlIGxhdGVzdCBIMjY0IGNvbnRyb2xzIHNvb24sIGFuZCBob3BlZnVsbHkgbWVyZ2Vk
CmluIG1haW5saW5lIEZmbXBlZy4KCkdTdHJlYW1lciBhbmQgRmZtcGVnIGFyZSByZWxhdGl2ZWx5
IHN0cmFpZ2h0Zm9yd2FyZCB0byBidWlsZCBhbmQgdGVzdC4KClRoYW5rcywKRXplcXVpZWwKClsx
XSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC91c2Vyc3BhY2UtYXBpL21l
ZGlhL3Y0bC9kZXYtc3RhdGVsZXNzLWRlY29kZXIuaHRtbApbMl0gaHR0cHM6Ly9naXRodWIuY29t
L2Nocm9taXVtL2Nocm9taXVtL3RyZWUvbWFzdGVyL21lZGlhL2dwdS92NGwyClszXSBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZXplcXVpZWxnYXJjaWEvZ3N0LXBsdWdpbnMtYmFkLy0v
dHJlZS9oMjY0X3N0YWJsZV91YXBpCls0XSBodHRwczovL2dpdGh1Yi5jb20vS3dpYm9vL0ZGbXBl
Zy90cmVlL3Y0bDItcmVxdWVzdC1od2FjY2VsLTQuMy4KCgo+ID4gT25lIG1pbm9yIGNvbW1lbnQg
YmVsb3cuCj4gPgo+IC4uLgo+ID4+ICsgICAgICAgLy8gUFBTCj4gPj4gKyAgICAgICBfX3U4ICBw
aWNfaW5pdF9xcDsKPiA+PiArICAgICAgIF9fdTggIGRlYmxvY2tpbmdfZmlsdGVyX2NvbnRyb2xf
cHJlc2VudF9mbGFnOwo+ID4+ICsgICAgICAgX191OCAgY29uc3RyYWluZWRfaW50cmFfcHJlZF9m
bGFnOwo+ID4+ICsgICAgICAgX191OCAgY2hyb21hX3FwX2luZGV4X29mZnNldDsKPiA+PiArICAg
ICAgIF9fdTggIHBpY19vcmRlcl9wcmVzZW50X2ZsYWc7Cj4gPj4gKwo+ID4KPiA+IFRoaXMgc2Vl
bXMgdG8gYmUgYm90dG9tX2ZpZWxkX3BpY19vcmRlcl9pbl9mcmFtZV9wcmVzZW50X2ZsYWcsCj4g
PiBhcyB0aGVyZSBpcyBubyAicGljX29yZGVyX3ByZXNlbnRfZmxhZyIgc3ludGF4IGVsZW1lbnQu
Cj4KPiBDb3JyZWN0LCBsb29rcyBsaWtlIEkgYm9ycm93ZWQgdGhhdCBuYW1lIGZyb20gdGhlIGxp
YnZkcGF1IEFQSS4KPgo+IGh0dHBzOi8vdmRwYXUucGFnZXMuZnJlZWRlc2t0b3Aub3JnL2xpYnZk
cGF1L3N0cnVjdF92ZHBfcGljdHVyZV9pbmZvX2gyNjQuaHRtbCNhNDA1ZjdlZjI2ZWE3NmJiMmM0
NDZlMTUxMDYyZmMwMDEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
