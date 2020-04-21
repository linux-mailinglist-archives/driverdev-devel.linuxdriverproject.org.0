Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFAA1B31F0
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Apr 2020 23:30:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AECF204C4;
	Tue, 21 Apr 2020 21:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id itoxwy61K4b4; Tue, 21 Apr 2020 21:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2497C20476;
	Tue, 21 Apr 2020 21:30:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 149391BF304
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 21:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10BA287048
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 21:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1GJpL-NU7Fxv for <devel@linuxdriverproject.org>;
 Tue, 21 Apr 2020 21:30:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6246B8545E
 for <devel@driverdev.osuosl.org>; Tue, 21 Apr 2020 21:30:48 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05AC3206E9;
 Tue, 21 Apr 2020 21:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587504648;
 bh=mG0iEI2vowwwZ8w7ZAJgJpuwjSgD+woCxqTTePYKf6I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kyq9XJIVK9LFHEn/1nwvYdV5K3Sz8y+wNKJH7BViDfJy22vHVj1Xy72AJIHYPTrG+
 dn/VveamzvPTi/n+eqqiFhYx1hBM/Hx7eHQfxMtHVAKscMjZoPPJcwH0+8IAiADb3r
 eemdiru+MhZb/tIiUgwRHiEzo2bG4FnJuBVfz5i4=
Received: by pali.im (Postfix)
 id E7E38A4B; Tue, 21 Apr 2020 23:30:45 +0200 (CEST)
Date: Tue, 21 Apr 2020 23:30:45 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: exfat upcase table for code points above U+FFFF (Was: Re: [PATCH]
 staging: exfat: add exfat filesystem code to staging)
Message-ID: <20200421213045.skv2dvgm3xuspbl7@pali>
References: <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
 <20191017075008.2uqgdimo3hrktj3i@pali>
 <20200213000656.hx5wdofkcpg7aoyo@pali>
 <20200213211847.GA1734@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213211847.GA1734@sasha-vm>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1cnNkYXkgMTMgRmVicnVhcnkgMjAyMCAxNjoxODo0NyBTYXNoYSBMZXZpbiB3cm90ZToK
PiBPbiBUaHUsIEZlYiAxMywgMjAyMCBhdCAwMTowNjo1NkFNICswMTAwLCBQYWxpIFJvaMOhciB3
cm90ZToKPiA+IEluIHJlbGVhc2VkIGV4RkFUIHNwZWNpZmljYXRpb24gaXMgbm90IHdyaXR0ZW4g
aG93IGFyZSBVbmljb2RlIGNvZGUKPiA+IHBvaW50cyBhYm92ZSBVK0ZGRkYgcmVwcmVzZW50ZWQg
aW4gZXhGQVQgdXBjYXNlIHRhYmxlLiBOb3JtYWxseSBpbgo+ID4gVVRGLTE2IGFyZSBVbmljb2Rl
IGNvZGUgcG9pbnRzIGFib3ZlIFUrRkZGRiByZXByZXNlbnRlZCBieSBzdXJyb2dhdGUKPiA+IHBh
aXJzIGJ1dCBjb21wcmVzc2lvbiBmb3JtYXQgb2YgZXhGQVQgdXBjYXNlIHRhYmxlIGlzIG5vdCBj
bGVhciBob3cgdG8KPiA+IGRvIGl0IHRoZXJlLgo+ID4gCj4gPiBBcmUgeW91IGFibGUgdG8gc2Vu
ZCBxdWVzdGlvbiBhYm91dCB0aGlzIHByb2JsZW0gdG8gcmVsZXZhbnQgTVMgcGVvcGxlPwo+ID4g
Cj4gPiBOZXcgTGludXggaW1wbGVtZW50YXRpb24gb2YgZXhmYXQgd2hpY2ggaXMgd2FpdGluZyBv
biBtYWlsaW5nIGxpc3QganVzdAo+ID4gZG8gbm90IHN1cHBvcnQgVW5pY29kZSBjb2RlIHBvaW50
cyBhYm92ZSBVK0ZGRkYgaW4gZXhGQVQgdXBjYXNlIHRhYmxlLgo+IAo+IFN1cmUsIEknbGwgZm9y
d2FyZCB0aGlzIHF1ZXN0aW9uIG9uLiBJJ2xsIHNlZSBpZiBJIGNhbiBnZXQgc29tZW9uZSBmcm9t
Cj4gdGhlaXIgdGVhbSB3aG8gY291bGQgYmUgYXZhaWxhYmxlIHRvIGFuc3dlciBxdWVzdGlvbnMg
c3VjaCBhcyB0aGVzZSBpbgo+IHRoZSBmdXR1cmUgLSBNaWNyb3NvZnQgaXMgaW50ZXJlc3RlZCBp
biBtYWludGFpbmluZyBjb21wYXRpYmxpdHkgYmV0d2Vlbgo+IExpbnV4IGFuZCBXaW5kb3dzIGV4
RkFUIGltcGxlbWVudGF0aW9ucy4KCkhlbGxvIFNhc2hhISBIYXZlIHlvdSBnb3QgYW55IGFuc3dl
ciBmcm9tIGV4ZmF0IE1TIHRlYW0gYWJvdXQgdXBjYXNlCnRhYmxlIGZvciBVbmljb2RlIGNvZGUg
cG9pbnRzIGFib3ZlIFUrRkZGRj8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
