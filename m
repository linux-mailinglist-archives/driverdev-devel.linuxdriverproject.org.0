Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 929EB91C74
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:25:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7A44220436;
	Mon, 19 Aug 2019 05:25:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Md9eMYQ4U3ev; Mon, 19 Aug 2019 05:25:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 890712042D;
	Mon, 19 Aug 2019 05:25:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FFAD1BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D91D2040B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tUTwe5GEMG1 for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:25:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2C2A92040A
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:25:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74E5A2087E;
 Mon, 19 Aug 2019 05:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566192308;
 bh=JX3Eh018TENEZILR9PKGvf8EpEV054KUxr7uqIPnTeQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dTDwhDwZg1RHfi6syCEpoC4MXweGcKactSujSeXt7/mJmugHxkuuVKz51gQGrb1Kv
 c0VbReRZNWqqjX4Wj9DZCo89IW85PK6RVa1Zp64GOtCpFuTFtdRYqia72eRUaXPqeY
 iSfsUAlahxSFiEd1eSFuGUaYdqeevC+0X5YDxX7k=
Date: Mon, 19 Aug 2019 07:25:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Zhao, Yakui" <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
Message-ID: <20190819052505.GA915@kroah.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic>
 <78897bb2-e6eb-cac2-7166-eccb7cd5c959@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78897bb2-e6eb-cac2-7166-eccb7cd5c959@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMDk6NDQ6MjVBTSArMDgwMCwgWmhhbywgWWFrdWkgd3Jv
dGU6Cj4gCj4gCj4gT24gMjAxOeW5tDA45pyIMTbml6UgMTQ6MzksIEJvcmlzbGF2IFBldGtvdiB3
cm90ZToKPiA+IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0IDEwOjI1OjQxQU0gKzA4MDAsIFpoYW8g
WWFrdWkgd3JvdGU6Cj4gPiA+IFRoZSBmaXJzdCB0aHJlZSBwYXRjaGVzIGFyZSB0aGUgY2hhbmdl
cyB1bmRlciB4ODYvYWNybiwgd2hpY2ggYWRkcyB0aGUKPiA+ID4gcmVxdWlyZWQgQVBJcyBmb3Ig
dGhlIGRyaXZlciBhbmQgcmVwb3J0cyB0aGUgWDJBUElDIGNhcHMuCj4gPiA+IFRoZSByZW1haW5p
bmcgcGF0Y2hlcyBhZGQgdGhlIEFDUk4gZHJpdmVyIG1vZHVsZSwgd2hpY2ggYWNjZXB0cyB0aGUg
aW9jdGwKPiA+ID4gZnJvbSB1c2VyLXNwYWNlIGFuZCB0aGVuIGNvbW11bmljYXRlIHdpdGggdGhl
IGxvdy1sZXZlbCBBQ1JOIGh5cGVydmlzb3IKPiA+ID4gYnkgdXNpbmcgaHlwZXJjYWxsLgo+ID4g
Cj4gPiBJIGhhdmUgYSBwcm9ibGVtIHdpdGggdGhhdDogeW91J3JlIGFkZGluZyBpbnRlcmZhY2Vz
IHRvIGFyY2gveDg2LyBhbmQKPiA+IGl0cyB1c2VycyBnbyBpbnRvIHN0YWdpbmcuIFdoeT8gV2h5
IG5vdCBkaXJlY3RseSBwdXQgdGhlIGRyaXZlciB3aGVyZQo+ID4gaXQgYmVsb25ncywgY2xlYW4g
aXQgdXAgcHJvcGVybHkgYW5kIHN1Ym1pdCBpdCBsaWtlIGV2ZXJ5dGhpbmcgZWxzZSBpcwo+ID4g
c3VibWl0dGVkPwo+IAo+IFRoYW5rcyBmb3IgeW91ciByZXBseSBhbmQgdGhlIGNvbmNlcm4uCj4g
Cj4gQWZ0ZXIgdGFraW5nIGEgbG9vayBhdCBzZXZlcmFsIGRyaXZlciBleGFtcGxlcyhnbWE1MDAs
IGFuZHJvaWQpLCBpdCBzZWVtcwo+IHRoYXQgdGhleSBhcmUgZmlyc3RseSBhZGRlZCBpbnRvIGRy
aXZlcnMvc3RhZ2luZy9YWFggYW5kIHRoZW4gbW92ZWQgdG8KPiBkcml2ZXJzL1hYWCBhZnRlciB0
aGUgZHJpdmVyIGJlY29tZXMgbWF0dXJlLgo+IFNvIHdlIHJlZmVyIHRvIHRoaXMgbWV0aG9kIHRv
IHVwc3RyZWFtIEFDUk4gZHJpdmVyIHBhcnQuCgpUaG9zZSB0d28gZXhhbXBsZXMgYXJlIHByb2Jh
Ymx5IHRoZSB3b3JzdCBleGFtcGxlcyB0byBldmVyIGxvb2sgYXQgOikKClRoZSBjb2RlIHF1YWxp
dHkgb2YgdGhvc2Ugc3VibWlzc2lvbnMgd2FzIGhvcnJpYmxlLCBnbWE1MDAgdG9vayBhIHZlcnkK
bG9uZyB0aW1lIHRvIGNsZWFuIHVwIGFuZCB0aGVyZSBhcmUgcGFydHMgb2YgdGhlIGFuZHJvaWQg
Y29kZSB0aGF0IGFyZQpzdGlsbCBpbiBzdGFnaW5nIHRvIHRoaXMgZGF5LgoKPiBJZiB0aGUgbmV3
IGRyaXZlciBjYW4gYWxzbyBiZSBhZGRlZCBieSBza2lwcGluZyB0aGUgc3RhZ2luZyBhcHByb2Fj
aCwKPiB3ZSB3aWxsIHJlZmluZSBpdCBhbmQgdGhlbiBzdWJtaXQgaXQgaW4gbm9ybWFsIHByb2Nl
c3MuCgpUaGF0IGlzIHRoZSBub3JtYWwgcHJvY2Vzcywgc3RhZ2luZyBzaG91bGQgbm90IGJlIG5l
ZWRlZCBhdCBhbGwgZm9yIGFueQpjb2RlLiAgSXQgaXMgYSBmYWxsLWJhY2sgZm9yIHdoZW4gdGhl
IGNvbXBhbnkgaW52b2x2ZWQgaGFzIG5vIGlkZWEgb2YKaG93IHRvIHVwc3RyZWFtIHRoZWlyIGNv
ZGUsIHdoaWNoIHNob3VsZCBOT1QgYmUgdGhlIGNhc2UgaGVyZS4KCnRoYW5rcywKCmdyZWcgay1o
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
