Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472DCAD302
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 08:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8860F8744A;
	Mon,  9 Sep 2019 06:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tl+k4pu0jlDP; Mon,  9 Sep 2019 06:14:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5703865EE;
	Mon,  9 Sep 2019 06:14:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EFFD1BF2A6
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 06:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02CCF86727
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 06:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j++82WrvioWc for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 06:14:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2062865EE
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 06:14:08 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id ABC2F21B; Mon,  9 Sep 2019 06:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1568009640;
 bh=019Xp0m77GdgTGWg3mqqaF5ta6E621OA5OPgyj1seJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NdYxgthLIh2SuB2tEdFH83Lt0Cz9phFTn5DFigIcBCG5e+rfjcfK4MFNKJeTVUDKK
 tgsDWMsysBxqhBfqlIZ35lkWrAl4cWaNHMZj5DD0GYpJQhRXJQKL21a7hWCuP0Ve3m
 10lmKuChJsHOakHRsIBHgVKyWfSL9ezLVsU/pXFdJYZROMeSGYNzvnmtprJXoNO6yN
 UxsalzndIYxY7a8caAQY7b/Hl5hUjgT7sBQCZ+faAl5TAs7In0hyLuzx5y00yqBOzm
 KE7Ie5TSkTO7JPwtUk9SWjRNcqUMYrrP+zsHZ589MV4ooL9PxiquFu32+wt4VV3VvI
 r+omQcz6d8SNg==
Date: Mon, 9 Sep 2019 06:14:00 +0000
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH v2 2/3] staging: exfat: drop unused field access_time_ms
Message-ID: <20190909061400.GI7664@valentin-vidic.from.hr>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
 <20190908161015.26000-2-vvidic@valentin-vidic.from.hr>
 <1049678.1567988361@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1049678.1567988361@turing-police>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBTZXAgMDgsIDIwMTkgYXQgMDg6MTk6MjFQTSAtMDQwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj4gSW4gdGhhdCBjYXNlLCByYXRoZXIgdGhhbiByZW1vdmluZyBpdCwgc2hvdWxk
bid0IHdlIGJlICphZGRpbmcqCj4gY29kZSB0byBwcm9wZXJseSBzZXQgaXQgaW5zdGVhZD8KClJp
Z2h0LCBzZXR0aW5nIHRoZSBVdGNPZmZzZXQgZmllbGRzIHRvIDAgaXMgdGhlIGZpcnN0IHN0ZXAg
bWFya2luZwp0aGVtIGFzIGludmFsaWQgZm9yIG5vdy4gVGhpcyBpcyBhbHNvIHdoeSBhY2Nlc3Nf
dGltZV9tcyBkaWQgbm90IGRvCmFueSBoYXJtIGhlcmUgLSBpdCB3YXMgYWx3YXlzIHNldCB0byAw
IHRvby4KCjcuNC4xMC4yIE9mZnNldFZhbGlkIEZpZWxkCgpUaGUgT2Zmc2V0VmFsaWQgZmllbGQg
c2hhbGwgZGVzY3JpYmUgd2hldGhlciB0aGUgY29udGVudHMgb2YgdGhlIE9mZnNldEZyb21VdGMK
ZmllbGQgYXJlIHZhbGlkIG9yIG5vdCwgYXMgZm9sbG93czoKCiAgICAwLCB3aGljaCBtZWFucyB0
aGUgY29udGVudHMgb2YgdGhlIE9mZnNldEZyb21VdGMgZmllbGQgYXJlIGludmFsaWQKICAgICAg
IGFuZCBzaGFsbCBiZSAwMGgKCiAgICAxLCB3aGljaCBtZWFucyB0aGUgY29udGVudHMgb2YgdGhl
IE9mZnNldEZyb21VdGMgZmllbGQgYXJlIHZhbGlkCgotLSAKVmFsZW50aW4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
