Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F23962FCB
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 06:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF20B85C54;
	Tue,  9 Jul 2019 04:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mI2Mjszb82WV; Tue,  9 Jul 2019 04:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34E8885C5C;
	Tue,  9 Jul 2019 04:51:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76E701BF3EF
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 04:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73B4E879FC
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 04:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l6eYUOgon2ZB for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 04:51:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D10085B4A
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 04:50:24 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-8-97.corp.google.com
 [104.133.8.97] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x694oKBg013059
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 9 Jul 2019 00:50:22 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 8B32242002E; Tue,  9 Jul 2019 00:50:20 -0400 (EDT)
Date: Tue, 9 Jul 2019 00:50:20 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: Procedure questions - new filesystem driver..
Message-ID: <20190709045020.GB23646@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
References: <21080.1562632662@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21080.1562632662@turing-police>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org
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
cnMvc3RhZ2luZz8KCkhvdyBoYXZlIHlvdSBkZWFsdCB3aXRoIHRoZSBwYXRlbnQgY2xhaW1zIHdo
aWNoIE1pY3Jvc29mdCBoYXMKYXNzZXJ0ZWRbMV0gb24gdGhlIGV4RkFUIGZpbGUgc3lzdGVtIGRl
c2lnbj8KClsxXSBodHRwczovL3d3dy5taWNyb3NvZnQuY29tL2VuLXVzL2xlZ2FsL2ludGVsbGVj
dHVhbHByb3BlcnR5L210bC9leGZhdC1saWNlbnNpbmcuYXNweAoKSSBhbSBub3QgbWFraW5nIGFu
eSBjbGFpbXMgYWJvdXQgdGhlIHZhbGlkaXR5IG9mIE1pY3Jvc29mdCdzIHBhdGVudAphc3NlcnRp
b25zIG9uIGV4RkFULCBvbmUgd2F5IG9yIGFub3RoZXIuICBCdXQgaXQgbWlnaHQgYmUgYSBnb29k
IGlkZWEKZm9yIHNvbWUgbGF5d2VycyBmcm9tIHRoZSBMaW51eCBGb3VuZGF0aW9uIHRvIHJlbmRl
ciBzb21lIGxlZ2FsIGFkdmljZQp0byB0aGVpciBlbXBsb3llZXMgKG5hbWVseSBHcmVnIEstSCBh
bmQgTGludXMgVG9ydmFsZHMpIHJlZ2FyZGluZyB0aGUKYWR2aXNhYmlsaXR5IG9mIHRha2luZyBl
eEZBVCBpbnRvIHRoZSBvZmZpY2lhbCBMaW51eCB0cmVlLgoKUGVyc29uYWxseSwgaWYgTWljcm9z
b2Z0IGlzIGdvaW5nIHRvIGJlIHVuZnJpZW5kbHkgYWJvdXQgbm90IHdhbnRpbmcKb3RoZXJzIHRv
IHVzZSB0aGVpciBmaWxlIHN5c3RlbSB0ZWNobm9sb2d5IGJ5IG1ha2luZyBwYXRlbnQgY2xhaW1z
LAp3aHkgc2hvdWxkIHdlIHJld2FyZCB0aGVtIGJ5IG1ha2luZyB0aGVpciBmaWxlIHN5c3RlbSBi
ZXR0ZXIgYnkKaW1wcm92aW5ncyBpdHMgaW50ZXJvcGVyYWJpbGl0eT8gIChNeSBwZXJzb25hbCBv
cGluaW9uIG9ubHkuKQoKQ2hlZXJzLAoKCQkJCQkJLSBUZWQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
