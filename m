Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E3ACFCE
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D761A20492;
	Sun,  8 Sep 2019 16:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JmfmuMTYbfqy; Sun,  8 Sep 2019 16:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D0DB820469;
	Sun,  8 Sep 2019 16:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 310741BF2BD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E2BA8561D
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8zngfb6uPdV for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:43:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDD2385618
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:43:43 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CE20216C8;
 Sun,  8 Sep 2019 16:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567961023;
 bh=QcXOe6VPWYtj/hGsx0flEYarB4jaGMtWqVwLTq8Wodk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=02QA/j/TgJM1ZCODvJd6zqsT1442AJ4r2qWFdHnwsS5BtgaMxgXrVx+7XQ9uuOffe
 S9v+UlxWoloVMN8vJatHGDzFGtXDH8iasoS8+Q54wvjFCH+ACCPko4bPu4zQeveS8y
 MRqNXcSrckTFlaHxb8ZW6e3mL1BUy9CDgR8KA9QY=
Date: Sun, 8 Sep 2019 17:43:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH] staging: exfat: add millisecond support
Message-ID: <20190908164341.GC8362@kroah.com>
References: <20190908124808.23739-1-vvidic@valentin-vidic.from.hr>
 <20190908130337.GA9056@kroah.com>
 <20190908144735.GA7664@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908144735.GA7664@valentin-vidic.from.hr>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBTZXAgMDgsIDIwMTkgYXQgMDI6NDc6MzVQTSArMDAwMCwgVmFsZW50aW4gVmlkacSH
IHdyb3RlOgo+IE9uIFN1biwgU2VwIDA4LCAyMDE5IGF0IDAyOjAzOjM3UE0gKzAxMDAsIEdyZWcg
S3JvYWgtSGFydG1hbiB3cm90ZToKPiA+IFBsZWFzZSBydW4gY2hlY2twYXRjaCBvbiB5b3VyIHBh
dGNoZXMgc28gdGhhdCB3ZSBkb24ndCBoYXZlIHRvIGdvIGFuZAo+ID4gZml4IHVwIHRob3NlIGlz
c3VlcyBsYXRlciBvbi4KPiAKPiBTdHJhbmdlLCBpdCBkaWQgbm90IHJlcG9ydCBhbnl0aGluZyBm
b3IgbWU6Cj4gCj4gdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgNDM5IGxp
bmVzIGNoZWNrZWQKPiAwMDAxLXN0YWdpbmctZXhmYXQtYWRkLW1pbGxpc2Vjb25kLXN1cHBvcnQu
cGF0Y2ggaGFzIG5vIG9idmlvdXMgc3R5bGUgcHJvYmxlbXMgYW5kIGlzIHJlYWR5IGZvciBzdWJt
aXNzaW9uLgoKU2VlIG15IHJlc3BvbnNlIHRvIHRoZSBicm9rZW4gb3V0IHBhdGNoIGFzIHRvIHdo
ZXJlIGl0IHNob3VsZCBoYXZlCmNvbXBsYWluZWQuCgo+ID4gQWxzbywgY2FuIHlvdSBicmVhayB0
aGlzIHVwIGludG8gc21hbGxlciBwYXRjaGVzIHBsZWFzZT8gIFlvdSBhcmUgZG9pbmcKPiA+IG11
bHRpcGxlIHRoaW5ncyBhbGwgYXQgb25jZS4KPiAKPiBTdXJlLCBJIHdhcyBqdXN0IHRyeWluZyB0
byBpbXByb3ZlIHRoZSBjb2RlIGEgYml0IDopCgpObyBwcm9ibGVtLCBpdCdzIG11Y2ggYXBwcmVj
aWF0ZWQuCgo+ID4gQW5kLCBhcmUgeW91IHN1cmUgYWJvdXQgdGhlIG1pbGxpc2Vjb25kIGZpZWxk
IGZvciBhY2Nlc3MgdGltZSBzdHVmZj8gIEl0Cj4gPiB3YXMgb2J2aW91c2x5IGFkZGVkIGZvciBz
b21lIHJlYXNvbiAodGhlcmUgYXJlIGxvdHMgaW4gdGhlIHNwZWMgdGhhdCB0aGUKPiA+IGNvZGUg
ZG9lcyBub3QgeWV0IGNvdmVyLCB0aGlzIHNlZW1zIG9kZCBiZWluZyB0aGUgb3RoZXIgd2F5IGFy
b3VuZCkuCj4gPiBEaWQgeW91IHRlc3QgaXQgYWdhaW5zdCBhbnkgb3RoZXIgb3BlcmF0aW5nIHN5
c3RlbSBleGZhdCBpbWFnZXMgdG8KPiA+IGVuc3VyZSB0aGF0IGl0IHJlYWxseSBpcyBub3QgYmVp
bmcgdXNlZCBhdCBhbGw/ICBJZiBzbywgd2hpY2ggb25lcz8KPiAKPiBEb24ndCByZWFsbHkgaGF2
ZSBhY2Nlc3MgdG8gYW5vdGhlciBPUywgYnV0IGhlcmUgaXMgd2hhdCBleGZhdC1mdXNlIGhhczoK
PiAKPiBzdHJ1Y3QgZXhmYXRfZW50cnlfbWV0YTEgICAgICAgICAgICAgICAgICAgICAgICAvKiBm
aWxlIG9yIGRpcmVjdG9yeSBpbmZvIChwYXJ0IDEpICovCj4gewo+ICAgICAgICAgdWludDhfdCB0
eXBlOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogRVhGQVRfRU5UUllfRklM
RSAqLwo+ICAgICAgICAgdWludDhfdCBjb250aW51YXRpb25zOwo+ICAgICAgICAgbGUxNl90IGNo
ZWNrc3VtOwo+ICAgICAgICAgbGUxNl90IGF0dHJpYjsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLyogY29tYmluYXRpb24gb2YgRVhGQVRfQVRUUklCX3h4eCAqLwo+ICAgICAgICAg
bGUxNl90IF9fdW5rbm93bjE7Cj4gICAgICAgICBsZTE2X3QgY3J0aW1lLCBjcmRhdGU7ICAgICAg
ICAgICAgICAgICAgLyogY3JlYXRpb24gZGF0ZSBhbmQgdGltZSAqLwo+ICAgICAgICAgbGUxNl90
IG10aW1lLCBtZGF0ZTsgICAgICAgICAgICAgICAgICAgIC8qIGxhdGVzdCBtb2RpZmljYXRpb24g
ZGF0ZSBhbmQgdGltZSAqLwo+ICAgICAgICAgbGUxNl90IGF0aW1lLCBhZGF0ZTsgICAgICAgICAg
ICAgICAgICAgIC8qIGxhdGVzdCBhY2Nlc3MgZGF0ZSBhbmQgdGltZSAqLwo+ICAgICAgICAgdWlu
dDhfdCBjcnRpbWVfY3M7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogY3JlYXRpb24g
dGltZSBpbiBjcyAoY2VudGlzZWNvbmRzKSAqLwo+ICAgICAgICAgdWludDhfdCBtdGltZV9jczsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogbGF0ZXN0IG1vZGlmaWNhdGlvbiB0aW1l
IGluIGNzICovCj4gICAgICAgICB1aW50OF90IF9fdW5rbm93bjJbMTBdOwo+IH0KPiAKPiBUaGUg
c3BlYyBtYXRjaGVzIHRoaXMgYW5kIGRlZmluZXMgMyBhZGRpdGlvbmFsIFV0Y09mZnNldCBmaWVs
ZHMgdGhhdCB3ZSBkb24ndCB1c2U6CgpJIHdvdWxkIG9ubHkgZ28gb2ZmIG9mIHRoZSBzcGVjLCB3
aG8ga25vd3Mgd2hlcmUgZXhmYXQtZnVzZSBnb3QgaXRzCmluZm9ybWF0aW9uIGZyb20gOikKCj4g
RW50cnlUeXBlCj4gU2Vjb25kYXJ5Q291bnQKPiBTZXRDaGVja3N1bQo+IEZpbGVBdHRyaWJ1dGVz
Cj4gUmVzZXJ2ZWQxCj4gQ3JlYXRlVGltZXN0YW1wCj4gTGFzdE1vZGlmaWVkVGltZXN0YW1wCj4g
TGFzdEFjY2Vzc2VkVGltZXN0YW1wCj4gQ3JlYXRlMTBtc0luY3JlbWVudAo+IExhc3RNb2RpZmll
ZDEwbXNJbmNyZW1lbnQKPiAKPiBDcmVhdGVVdGNPZmZzZXQgKDEgYnl0ZSkKPiBMYXN0TW9kaWZp
ZWRVdGNPZmZzZXQgKDEgYnl0ZSkKPiBMYXN0QWNjZXNzZWRVdGNPZmZzZXQgKDEgYnl0ZSkKPiBS
ZXNlcnZlZDIgKDcgYnl0ZXMpCj4gCj4gU28gSSdtIG5vdCBzdXJlIHdoZXJlIGFjY2Vzc190aW1l
X21zIGNhbWUgZnJvbS4gSW4gYW55IGNhc2UgaXQgd2FzIGFsd2F5cyBzZXQgdG8KPiAwIHNvIGl0
IHNob3VsZCBub3QgbWF0dGVyIG11Y2g/CgpJZiBpdCByZWFsbHkgaXMgQ3JlYXRlVXRjT2Zmc2V0
LCB3ZSBzaG91bGQgdXNlIHRoYXQuCgpGb3IgdGhpbmdzIGxpa2UgbWVzc2luZyB3aXRoIGZpZWxk
cywgdGVzdGluZyBvbiBhbm90aGVyIG9wZXJhdGluZyBzeXN0ZW0KdG8gZW5zdXJlIHdlIGdvdCB0
aGlzIHJpZ2h0IGlzIGdvaW5nIHRvIGJlIHZlcnkgZXNzZW50aWFsLiAgVmlydHVhbAptYWNoaW5l
cyBvZiBvc3ggb3Igd2luZG93cyBtaWdodCBiZSBhIGdvb2Qgd2F5IHRvIGRvIHRoYXQuCgp0aGFu
a3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
