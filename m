Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D8D178FD1
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 12:50:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FAF684FDE;
	Wed,  4 Mar 2020 11:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEa2eJROYD3C; Wed,  4 Mar 2020 11:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5979084518;
	Wed,  4 Mar 2020 11:50:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7D991BF3D6
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 11:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E48B6852C7
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 11:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id buP517hANG5E for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 11:50:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60C518528B
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 11:50:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADACE21739;
 Wed,  4 Mar 2020 11:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583322641;
 bh=Vv6tft/6s8eTaR5uE07e77E4tzR7PioLaiDjnjzQ9zc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eTt62EEXLCsVOdW25+cJSe6hfk0qTill6PuVYnucUMt4ktfYuQaDM6AW4txeL8prc
 B25VHRJ7FHHueVSR1xEUMBnOTzr/1weoh0FaSlU9OaBo/dIuKYD9+tDB5Dkye9pYs0
 IEFzAE8DwUpgDh45aajZCuOq0onApZrMejyqzNiI=
Date: Wed, 4 Mar 2020 12:50:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: YunQiang Su <wzssyqa@gmail.com>
Subject: Re: [PATCH 0/6] Re-instate octeon staging drivers
Message-ID: <20200304115038.GB1581141@kroah.com>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
 <20200212215200.GA2367959@kroah.com>
 <CAKcpw6VczRuMC_KRzP6VRPeZPtmEpVOJE5Fc+JhDH4mWU7jUVg@mail.gmail.com>
 <20200304063910.GA1203555@kroah.com>
 <CAKcpw6Vt1wUGcps2b86YGU8gGijvKTa6ERL5F1Nk=utaJyz+kg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKcpw6Vt1wUGcps2b86YGU8gGijvKTa6ERL5F1Nk=utaJyz+kg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Paul Burton <paulburton@kernel.org>,
 linux@roeck-us.net, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mips <linux-mips@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Ralf Baechle <ralf@linux-mips.org>, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDY6MjU6MzRQTSArMDgwMCwgWXVuUWlhbmcgU3Ugd3Jv
dGU6Cj4gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IOS6jjIwMjDlubQz5pyI
NOaXpeWRqOS4iSDkuIvljYgyOjM55YaZ6YGT77yaCj4gPgo+ID4gT24gV2VkLCBNYXIgMDQsIDIw
MjAgYXQgMDk6NDg6NDZBTSArMDgwMCwgWXVuUWlhbmcgU3Ugd3JvdGU6Cj4gPiA+IEdyZWcgS0gg
PGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiDkuo4yMDIw5bm0MuaciDEz5pel5ZGo5ZubIOS4
iuWNiDU6NTLlhpnpgZPvvJoKPiA+ID4gPgo+ID4gPiA+IE9uIFdlZCwgRmViIDA1LCAyMDIwIGF0
IDAxOjExOjEwUE0gKzEzMDAsIENocmlzIFBhY2toYW0gd3JvdGU6Cj4gPiA+ID4gPiBUaGlzIHNl
cmllcyByZS1pbnN0YXRlcyB0aGUgb2N0ZW9uIGRyaXZlcnMgdGhhdCB3ZXJlIHJlY2VudGx5IHJl
bW92ZWQgYW5kCj4gPiA+ID4gPiBhZGRyZXNzZXMgdGhlIGJ1aWxkIGlzc3VlcyB0aGF0IGxlYWQg
dG8gdGhhdCBkZWNpc2lvbi4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ3ZlIGFwcHJvYWNoZWQgQ2F2
aXVtL01hcnZlbGwgYWJvdXQgdGFraW5nIGEgbW9yZSBhY3RpdmUgaW50ZXJlc3QgaW4gZ2V0dGlu
Zwo+ID4gPiA+ID4gdGhlIGNvZGUgb3V0IG9mIHN0YWdpbmcgYW5kIGludG8gdGhlaXIgcHJvcGVy
IGxvY2F0aW9uLiBObyByZXBseSBvbiB0aGF0ICh5ZXQpLgo+ID4gPiA+Cj4gPiA+ID4gR29vZCBs
dWNrIHdpdGggdGFsa2luZyB0byB0aGUgY29tcGFuaWVzLCBob3BlZnVsbHkgdGhhdCB3aWxsIHdv
cmsuCj4gPiA+ID4KPiA+ID4gPiBBbnl3YXksIEkndmUgYXBwbGllZCB0aGlzIHNlcmllcywgdGhh
bmtzIGZvciB0aGlzLCBsZXQncyBzZWUgd2hhdCBicmVha3MKPiA+ID4gPiBub3cgOikKPiA+ID4K
PiA+ID4gRGlkIHlvdSBtZWV0IGFueSBwcm9ibGVtIHRvIG1lcmdlIENocmlzJ3MgcGF0Y2hzZXQ/
Cj4gPgo+ID4gVGhleSBhcmUgYWxsIGluIGxpbnV4LW5leHQsIHNvIHlvdSBjYW4gc2VlIGZvciB5
b3Vyc2VsZiA6KQo+IAo+IFRoYW5rIHlvdSBzbyBtdWNoLiBJIGZvdW5kIGl0Lgo+IEl0IGlzIHZl
cnkgaW1wb3J0YW50IGZvciBEZWJpYW4gTUlQUyBQb3J0cyBhcyB3ZSBhcmUgdXNpbmcgc29tZSBv
Zgo+IE9jdGVvbiBtYWNoaW5lcy4KCklmIGl0IGlzIHNvIGltcG9ydGFudCwgd2h5IGlzIG5vIG9u
ZSB3b3JraW5nIG9uIGZpeGluZyB0aGVzZSBkcml2ZXJzIHVwPwoKdGhhbmtzLAoKZ3JlZyBrLWgK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
