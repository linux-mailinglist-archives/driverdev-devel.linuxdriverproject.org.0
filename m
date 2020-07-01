Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E948821058C
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 09:56:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 725F189862;
	Wed,  1 Jul 2020 07:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DvzIEOekIbFf; Wed,  1 Jul 2020 07:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81737898D4;
	Wed,  1 Jul 2020 07:56:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF561BF59A
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A7E5288C39
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXi20GgX4VtR for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 07:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 28E4387E57
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 07:56:06 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6D422073E;
 Wed,  1 Jul 2020 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593590166;
 bh=8AVY+EOC1zIp5rtauW5ZfJDYFkhYsE0IK0VPZmhucc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zvIGS5xWsCSlh2c6XlBKR+4PGeNpV3IF1G7KQ9mud+WTa7UHAwSIp0SzOJru1Qpe5
 1dsSiAPmiDs0UWONeSkz2lz7vqk83dyRYwALcL3A3TbaISAFj/ZG3rKx2dMQILuG3X
 eXBpK/HTdB58Ae2Fxzi2Rr7Kin4iQOihjFcH5yTQ=
Received: by pali.im (Postfix)
 id 30880102D; Wed,  1 Jul 2020 09:56:04 +0200 (CEST)
Date: Wed, 1 Jul 2020 09:56:04 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Ajay.Kathat@microchip.com, Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
Message-ID: <20200701075604.7pyik6jkptl37yld@pali>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <20200629132612.nl6rfpihzlii6ilh@pali>
 <c23ca5da-b9db-5e98-94e4-edc84ded9611@microchip.com>
 <20200701075515.zypusfh4xazqu2fl@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701075515.zypusfh4xazqu2fl@pali>
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 Sripad.Balwadgi@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

KGFkZGluZyBVbGYpCgpPbiBXZWRuZXNkYXkgMDEgSnVseSAyMDIwIDA5OjU1OjE1IFBhbGkgUm9o
w6FyIHdyb3RlOgo+IE9uIFR1ZXNkYXkgMzAgSnVuZSAyMDIwIDAzOjE3OjAxIEFqYXkuS2F0aGF0
QG1pY3JvY2hpcC5jb20gd3JvdGU6Cj4gPiBPbiAyOS8wNi8yMCA2OjU2IHBtLCBQYWxpIFJvaMOh
ciB3cm90ZToKPiA+ID4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVu
IGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdyB0aGUgY29udGVudCBpcyBzYWZlCj4gPiA+IAo+
ID4gPiBPbiBUdWVzZGF5IDIzIEp1bmUgMjAyMCAxMTowMDowNCBBamF5LkthdGhhdEBtaWNyb2No
aXAuY29tIHdyb3RlOgo+ID4gPj4gVGhpcyBwYXRjaCBzZXJpZXMgaXMgdG8gcmV2aWV3IGFuZCBt
b3ZlIHdpbGMxMDAwIGRyaXZlciBvdXQgb2Ygc3RhZ2luZy4KPiA+ID4+IE1vc3Qgb2YgdGhlIHJl
dmlldyBjb21tZW50cyByZWNlaXZlZCBpbiBbMV0gJiBbMl0gYXJlIGFkZHJlc3NlZCBpbiB0aGUK
PiA+ID4+IGxhdGVzdCBjb2RlLgo+ID4gPj4gUGxlYXNlIHJldmlldyBhbmQgcHJvdmlkZSB5b3Vy
IGlucHV0cy4KPiA+ID4gCj4gPiA+IEhlbGxvIEFqYXkhIENvdWxkIHlvdSBwbGVhc2UgbW92ZSBT
RElPIHZlbmRvci9kZXZpY2UgSUQgZGVmaW5pdGlvbnMgZnJvbQo+ID4gPiBkcml2ZXIgY29kZSB3
aWxjMTAwMC9zZGlvLmMgdG8gY29tbW9uIGZpbGUgaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMu
aD8KPiA+ID4gCj4gPiAKPiA+IEN1cnJlbnRseSwgdGhlIHdpbGMxMDAwIGRyaXZlciBtb3ZlbWVu
dCBjaGFuZ2VzIGFyZSBwcmVzZW50IGluIHRvcGljCj4gPiBicmFuY2ggYW5kIHlldCB0byBiZSBt
ZXJnZWQgdG8gbWFzdGVyIGJyYW5jaC4gV291bGQgaXQgYmUgb2theSB0byBzdWJtaXQKPiA+IHRo
ZSBuZXcgcGF0Y2ggb25jZSBkcml2ZXIgaXMgbWVyZ2VkIHRvICd3aXJlbGVzcy1kcml2ZXItbmV4
dCcgbWFzdGVyIGFuZAo+ID4gYnJhbmNoIGlzIHB1bGxlZCBpbnRvIEdyZWcncyBzdGFnaW5nIHJl
cG8uCj4gCj4gSSB0aGluayBpdCBzaG91bGQgYmUgT0suIEJ1dCBtYXliZSBVbGYgYXMgbWFpbnRh
aW5lciBvZiBtbWMgc3Vic3lzdGVtCj4gY291bGQgaGF2ZSBvcGluaW9uIG9yIHJlYWN0IG9uIHRo
aXMuCj4gCj4gPiBSZWdhcmRzLAo+ID4gQWpheQo+ID4gCj4gPiA+IFNpbWlsYXIgY2xlYW51cCB3
YXMgcmVjZW50bHkgZmluaXNoZWQgZm9yIGFsbCBleGlzdGluZyBub24tc3RhZ2luZyBkcml2ZXJz
Ogo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbWMvMjAyMDA1MjIxNDQ0MTIu
MTk3MTItMS1wYWxpQGtlcm5lbC5vcmcvCj4gPiA+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
