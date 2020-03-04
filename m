Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35457178AB3
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 07:39:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C70C584031;
	Wed,  4 Mar 2020 06:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dl5yNfB05W2n; Wed,  4 Mar 2020 06:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA69483F66;
	Wed,  4 Mar 2020 06:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 464801BF85D
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 430AA87541
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLP8n45eZYtd for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 06:39:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC2D7873DC
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 06:39:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27A1F2146E;
 Wed,  4 Mar 2020 06:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583303952;
 bh=etnCL/zRmgdNa1IlpbE+pMZF9X1/uAAONZvLvu7gdrU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B2M1E6ifaNigQT7OE5HcfBwvDJ3Vh2xHEfSHu/Al1V19B7BCfZkCxOu2jfepo+0Mj
 kP3vO+d1h5d+cOtbR6H/IGCvy2Fl0QBBxwkZtYxBu65ieu3koYmCjYZ0Uj0TsTwzlr
 YmGKNmQixmbjpvLfhcz3tU3DgdtxeizsxALNEChE=
Date: Wed, 4 Mar 2020 07:39:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: YunQiang Su <wzssyqa@gmail.com>
Subject: Re: [PATCH 0/6] Re-instate octeon staging drivers
Message-ID: <20200304063910.GA1203555@kroah.com>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
 <20200212215200.GA2367959@kroah.com>
 <CAKcpw6VczRuMC_KRzP6VRPeZPtmEpVOJE5Fc+JhDH4mWU7jUVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKcpw6VczRuMC_KRzP6VRPeZPtmEpVOJE5Fc+JhDH4mWU7jUVg@mail.gmail.com>
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
 linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mips <linux-mips@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Ralf Baechle <ralf@linux-mips.org>, dan.carpenter@oracle.com,
 linux@roeck-us.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDk6NDg6NDZBTSArMDgwMCwgWXVuUWlhbmcgU3Ugd3Jv
dGU6Cj4gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IOS6jjIwMjDlubQy5pyI
MTPml6Xlkajlm5sg5LiK5Y2INTo1MuWGmemBk++8mgo+ID4KPiA+IE9uIFdlZCwgRmViIDA1LCAy
MDIwIGF0IDAxOjExOjEwUE0gKzEzMDAsIENocmlzIFBhY2toYW0gd3JvdGU6Cj4gPiA+IFRoaXMg
c2VyaWVzIHJlLWluc3RhdGVzIHRoZSBvY3Rlb24gZHJpdmVycyB0aGF0IHdlcmUgcmVjZW50bHkg
cmVtb3ZlZCBhbmQKPiA+ID4gYWRkcmVzc2VzIHRoZSBidWlsZCBpc3N1ZXMgdGhhdCBsZWFkIHRv
IHRoYXQgZGVjaXNpb24uCj4gPiA+Cj4gPiA+IEkndmUgYXBwcm9hY2hlZCBDYXZpdW0vTWFydmVs
bCBhYm91dCB0YWtpbmcgYSBtb3JlIGFjdGl2ZSBpbnRlcmVzdCBpbiBnZXR0aW5nCj4gPiA+IHRo
ZSBjb2RlIG91dCBvZiBzdGFnaW5nIGFuZCBpbnRvIHRoZWlyIHByb3BlciBsb2NhdGlvbi4gTm8g
cmVwbHkgb24gdGhhdCAoeWV0KS4KPiA+Cj4gPiBHb29kIGx1Y2sgd2l0aCB0YWxraW5nIHRvIHRo
ZSBjb21wYW5pZXMsIGhvcGVmdWxseSB0aGF0IHdpbGwgd29yay4KPiA+Cj4gPiBBbnl3YXksIEkn
dmUgYXBwbGllZCB0aGlzIHNlcmllcywgdGhhbmtzIGZvciB0aGlzLCBsZXQncyBzZWUgd2hhdCBi
cmVha3MKPiA+IG5vdyA6KQo+IAo+IERpZCB5b3UgbWVldCBhbnkgcHJvYmxlbSB0byBtZXJnZSBD
aHJpcydzIHBhdGNoc2V0PwoKVGhleSBhcmUgYWxsIGluIGxpbnV4LW5leHQsIHNvIHlvdSBjYW4g
c2VlIGZvciB5b3Vyc2VsZiA6KQoKZ3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
