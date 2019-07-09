Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF6F62D59
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 03:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DF01866B1;
	Tue,  9 Jul 2019 01:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uaocKdnHiZS; Tue,  9 Jul 2019 01:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 606DB865B0;
	Tue,  9 Jul 2019 01:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 568711BF3F7
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 01:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5279B85B4A
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 01:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6rZjYhI3W6L for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 01:20:35 +0000 (UTC)
X-Greylist: delayed 00:28:08 by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD7D085A58
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 01:20:34 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hkeMm-0003fR-TC; Tue, 09 Jul 2019 00:52:20 +0000
Date: Tue, 9 Jul 2019 01:52:20 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: Procedure questions - new filesystem driver..
Message-ID: <20190709005220.GZ17978@ZenIV.linux.org.uk>
References: <21080.1562632662@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21080.1562632662@turing-police>
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDg6Mzc6NDJQTSAtMDQwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj4gSSBoYXZlIGFuIG91dC1vZi10cmVlIGRyaXZlciBmb3IgdGhlIGV4ZmF0IGZp
bGUgc3lzdGVtIHRoYXQgSSBiZWF0ZW4gaW50byBzaGFwZQo+IGZvciB1cHN0cmVhbWluZy4gVGhl
IGRyaXZlciB3b3JrcywgYW5kIHBhc3NlcyBzcGFyc2UgYW5kIGNoZWNrcGF0Y2ggKGV4Y2VwdAo+
IGZvciBhIG51bWJlciBvZiBsaW5lLXRvby1sb25nIGNvbXBsYWludHMpLgo+IAo+IERvIHlvdSB3
YW50IHRoaXMgdGFrZW4gc3RyYWlnaHQgdG8gdGhlIGZzLyB0cmVlLCBvciB0aHJvdWdoIGRyaXZl
cnMvc3RhZ2luZz8KCkZpcnN0IG9mIGFsbCwgcG9zdCBpdC4uLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
