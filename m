Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B721BB7F9
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 09:47:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EBAC86D08;
	Tue, 28 Apr 2020 07:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EU-FPTyZlK1g; Tue, 28 Apr 2020 07:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA78C8539F;
	Tue, 28 Apr 2020 07:46:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 008891BF28D
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 07:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F108D83970
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 07:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5eMLWsQ7oebj for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 07:46:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 70AD9834E6
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 07:46:55 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17626206A5;
 Tue, 28 Apr 2020 07:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588060015;
 bh=Yu1yHSEbM7UvnreW4VbWBBp6FDeif1jXQ1bMBO+35AI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g2J9L/Z+US9yUFhggxbwGgaoN7BfTgOzNGAVSF1W5yHTLAAUrfEJlrEUrQcnmb8EF
 RLN+hTR6fYKIh+o67x++dRLLYAJWkrIpdE/m2b58mO8xyXA+0PhsI+A1akVDTLXjZ6
 7kDJXwmhsUojV8JTeFGQZMzmIpADrf4RwY2RL1xw=
Received: by pali.im (Postfix)
 id 2E053735; Tue, 28 Apr 2020 09:46:53 +0200 (CEST)
Date: Tue, 28 Apr 2020 09:46:53 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: exfat upcase table for code points above U+FFFF (Was: Re:
 [PATCH] staging: exfat: add exfat filesystem code to staging)
Message-ID: <20200428074653.kcq6ibj6rjlrnau7@pali>
References: <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
 <20191017075008.2uqgdimo3hrktj3i@pali>
 <20200213000656.hx5wdofkcpg7aoyo@pali>
 <20200213211847.GA1734@sasha-vm>
 <20200421213045.skv2dvgm3xuspbl7@pali>
 <20200427154913.GR13035@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427154913.GR13035@sasha-vm>
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

T24gTW9uZGF5IDI3IEFwcmlsIDIwMjAgMTE6NDk6MTMgU2FzaGEgTGV2aW4gd3JvdGU6Cj4gT24g
VHVlLCBBcHIgMjEsIDIwMjAgYXQgMTE6MzA6NDVQTSArMDIwMCwgUGFsaSBSb2jDoXIgd3JvdGU6
Cj4gPiBPbiBUaHVyc2RheSAxMyBGZWJydWFyeSAyMDIwIDE2OjE4OjQ3IFNhc2hhIExldmluIHdy
b3RlOgo+ID4gPiBPbiBUaHUsIEZlYiAxMywgMjAyMCBhdCAwMTowNjo1NkFNICswMTAwLCBQYWxp
IFJvaMOhciB3cm90ZToKPiA+ID4gPiBJbiByZWxlYXNlZCBleEZBVCBzcGVjaWZpY2F0aW9uIGlz
IG5vdCB3cml0dGVuIGhvdyBhcmUgVW5pY29kZSBjb2RlCj4gPiA+ID4gcG9pbnRzIGFib3ZlIFUr
RkZGRiByZXByZXNlbnRlZCBpbiBleEZBVCB1cGNhc2UgdGFibGUuIE5vcm1hbGx5IGluCj4gPiA+
ID4gVVRGLTE2IGFyZSBVbmljb2RlIGNvZGUgcG9pbnRzIGFib3ZlIFUrRkZGRiByZXByZXNlbnRl
ZCBieSBzdXJyb2dhdGUKPiA+ID4gPiBwYWlycyBidXQgY29tcHJlc3Npb24gZm9ybWF0IG9mIGV4
RkFUIHVwY2FzZSB0YWJsZSBpcyBub3QgY2xlYXIgaG93IHRvCj4gPiA+ID4gZG8gaXQgdGhlcmUu
Cj4gPiA+ID4KPiA+ID4gPiBBcmUgeW91IGFibGUgdG8gc2VuZCBxdWVzdGlvbiBhYm91dCB0aGlz
IHByb2JsZW0gdG8gcmVsZXZhbnQgTVMgcGVvcGxlPwo+ID4gPiA+Cj4gPiA+ID4gTmV3IExpbnV4
IGltcGxlbWVudGF0aW9uIG9mIGV4ZmF0IHdoaWNoIGlzIHdhaXRpbmcgb24gbWFpbGluZyBsaXN0
IGp1c3QKPiA+ID4gPiBkbyBub3Qgc3VwcG9ydCBVbmljb2RlIGNvZGUgcG9pbnRzIGFib3ZlIFUr
RkZGRiBpbiBleEZBVCB1cGNhc2UgdGFibGUuCj4gPiA+IAo+ID4gPiBTdXJlLCBJJ2xsIGZvcndh
cmQgdGhpcyBxdWVzdGlvbiBvbi4gSSdsbCBzZWUgaWYgSSBjYW4gZ2V0IHNvbWVvbmUgZnJvbQo+
ID4gPiB0aGVpciB0ZWFtIHdobyBjb3VsZCBiZSBhdmFpbGFibGUgdG8gYW5zd2VyIHF1ZXN0aW9u
cyBzdWNoIGFzIHRoZXNlIGluCj4gPiA+IHRoZSBmdXR1cmUgLSBNaWNyb3NvZnQgaXMgaW50ZXJl
c3RlZCBpbiBtYWludGFpbmluZyBjb21wYXRpYmxpdHkgYmV0d2Vlbgo+ID4gPiBMaW51eCBhbmQg
V2luZG93cyBleEZBVCBpbXBsZW1lbnRhdGlvbnMuCj4gPiAKPiA+IEhlbGxvIFNhc2hhISBIYXZl
IHlvdSBnb3QgYW55IGFuc3dlciBmcm9tIGV4ZmF0IE1TIHRlYW0gYWJvdXQgdXBjYXNlCj4gPiB0
YWJsZSBmb3IgVW5pY29kZSBjb2RlIHBvaW50cyBhYm92ZSBVK0ZGRkY/Cj4gCj4gU29ycnkgZm9y
IHRha2luZyBzbyBsb25nLiBUaGlzIGlzIG15IHVuZGVyc3RhbmRpbmcgZnJvbSB0aGUgV2luZG93
cwo+IGZvbGtzOiBXaW5kb3dzIGZpbGVzeXN0ZW1zIGp1c3QgZG9uJ3Qgc3VwcG9ydCB2YXJpYWJs
ZSBlbmNvZGluZyBsZW5ndGgsCj4gYW5kIGV4cGVjdCBVQ1MtMiBzdHJpbmdzLgoKT2ssIHNvIHNo
b3VsZCBJIHVuZGVyc3RhbmQgeW91ciBhbnN3ZXIgYXMgZXhGQVQgdXBjYXNlIHRhYmxlIGRvZXMg
bm90CnN1cHBvcnQgcmVwcmVzZW50aW5nIFVuaWNvZGUgY29kZSBwb2ludHMgYWJvdmUgVStGRkZG
IGFuZCB0aGVyZWZvcmUKZXhGQVQgaW1wbGVtZW50YXRpb24gc2hvdWxkIGV4cGVjdCB0aGF0IHRv
dXBwZXIodSkgPSB1IGFuZCB0b2xvd2VyKHUpID0gdQpmb3IgYW55IFVuaWNvZGUgY29kZSBwb2lu
dCB1IGluIHJhbmdlIFtVKzEwMDAwLCBVKzEwRkZGRl0/IFRoaXMgaXMgaG93CmN1cnJlbnQgZXhm
YXQgbGludXggZHJpdmVyIGJlaGF2ZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
