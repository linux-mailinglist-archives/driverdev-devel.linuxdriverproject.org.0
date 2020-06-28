Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A5220C76C
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 12:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9FDB12012D;
	Sun, 28 Jun 2020 10:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AZCo3g3Teyss; Sun, 28 Jun 2020 10:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9017F204C6;
	Sun, 28 Jun 2020 10:45:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DC341BF3DC
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 10:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AABA8815C
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 10:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dG2m8L0ervOw for <devel@linuxdriverproject.org>;
 Sun, 28 Jun 2020 10:45:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 227AC88163
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 10:45:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D8DF20768;
 Sun, 28 Jun 2020 10:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593341102;
 bh=KpjKUXDxWiQue3Fow1c9uEPqwe7AZKvspU0yRQg5oGE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qLEQWbjovpe/rT8Y1k8KeJCXOBebPMbKMV3DUnX2IymfKNqgDRWhmd2FMTKn3NWeJ
 kOjAqTN+BtnbDRMOX5JlIj2PSv4QFQE0uc2lE9U/YnM31Cmo32t6s//s1Y0bpor+7Y
 56eU7BFY1fiL3HS90WPDDRPp/vr6p4CU6jXaHBYI=
Date: Sun, 28 Jun 2020 12:44:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3] staging: wfx: Get descriptors for GPIOs
Message-ID: <20200628104459.GA314754@kroah.com>
References: <20200628085236.707579-1-linus.walleij@linaro.org>
 <20200628104302.GA305213@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200628104302.GA305213@kroah.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBKdW4gMjgsIDIwMjAgYXQgMTI6NDM6MDJQTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBTdW4sIEp1biAyOCwgMjAyMCBhdCAxMDo1MjozNkFNICswMjAwLCBMaW51cyBXYWxsZWlq
IHdyb3RlOgo+ID4gVGhlIGNvZGUgaGFzIHRoZSBmdW5jdGlvbmFsaXR5IHRvIGluc2VydCB0aGUg
R1BJTyBsaW5lcyB1c2luZwo+ID4gdGhlIGdsb2JhbCBHUElPIG51bWJlcnMgdGhyb3VnaCBtb2R1
bGUgcGFyYW1ldGVycy4KPiA+IAo+ID4gQXMgd2UgYXJlIGNsZWFybHkgZGVwcmVjYXRpbmcgdGhl
IHVzZSBvZiBnbG9iYWwgR1BJTyBudW1iZXJzCj4gPiBsb29rIHVwIHRoZSBHUElPIGRlc2NyaXB0
b3JzIGZyb20gdGhlIGRldmljZSBpbnN0ZWFkLiBUaGlzCj4gPiB1c3VhbGx5IGZhbGxzIGJhY2sg
dG8gZGV2aWNlIGhhcmR3YXJlIGRlc2NyaXB0aW9ucyB1c2luZyBlLmcuCj4gPiBkZXZpY2UgdHJl
ZSBvciBBQ1BJLiBUaGlzIGRldmljZSBjbGVhcmx5IHN1cHBvcnRzIGRldmljZQo+ID4gdHJlZSB3
aGVuIHVzZWQgb3ZlciBTUEkgZm9yIGV4YW1wbGUuCj4gPiAKPiA+IEZvciBleGFtcGxlLCB0aGlz
IGNhbiBiZSBzdXBwbGllZCBpbiB0aGUgZGV2aWNlIHRyZWUgbGlrZSBzbzoKPiA+IAo+ID4gICB3
ZnhAMHgwMSB7Cj4gPiAgICAgICBjb21wYXRpYmxlID0gInNpbGFicyx3ZjIwMCI7Cj4gPiAgICAg
ICByZXNldC1ncGlvcyA9IDwmZ3BpbzAgMT47Cj4gPiAgICAgICB3YWtldXAtZ3Bpb3MgPSA8Jmdw
aW8wIDI+Owo+ID4gICB9Owo+ID4gCj4gPiBDYzogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTGludXMgV2FsbGVpaiA8bGlu
dXMud2FsbGVpakBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiBDaGFuZ2VMb2cgdjItPnYzOgo+ID4g
LSBFUlJfQ0FTVCBub3QgUFRSX0NBU1QKPiA+IENoYW5nZUxvZyB2MS0+djI6Cj4gPiAtIEZpeGVk
IGEgY2FzdCBhbmQgYSB2YXJpYWJsZSBuYW1lLgo+ID4gLSBJIHN0aWxsIGRvbid0IGtub3cgaG93
IHRvIGNvbXBpbGUgdGhpcyBidXQgaGV5IHRoZSB6ZXJvZGF5Cj4gPiAgIHJvYm90IGRvZXMuCj4g
Cj4gSSBjYW4gYnVpbGQgdGhpcyBvbiBteSBkZXNrdG9wLCBhbmQgdGhpcyBwYXRjaCBzdGlsbCBi
bG93cyB1cCB0aGUgYnVpbGQuCgpPaCwgYW5kIGhlcmUncyB0aGUgYnJlYWthZ2U6CgpyaXZlcnMv
c3RhZ2luZy93ZngvYnVzX3NwaS5jOiBJbiBmdW5jdGlvbiDigJh3Znhfc3BpX3Byb2Jl4oCZOgpk
cml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYzoyMDk6NjM6IGVycm9yOiBleHBlY3RlZCDigJgp
4oCZIGJlZm9yZSDigJhHUElPRF9PVVRfSElHSOKAmQogIDIwOSB8ICBidXMtPmdwaW9fcmVzZXQg
PSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbCgmZnVuYy0+ZGV2LCAicmVzZXQiCiAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICApCiAgMjEwIHwgICAgICAgICBHUElPRF9PVVRfSElHSCk7CiAgICAg
IHwgICAgICAgICB+fn5+fn5+fn5+fn5+fgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
