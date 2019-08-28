Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB033A07FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 19:00:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A521086DEF;
	Wed, 28 Aug 2019 17:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyrrrD0bE2Pt; Wed, 28 Aug 2019 17:00:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59613864C4;
	Wed, 28 Aug 2019 17:00:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A82391BF365
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 17:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A4E1086CA7
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 17:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C_1Wy5CHDHM7 for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 17:00:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 69CE4864C4
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 17:00:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B558722CF5;
 Wed, 28 Aug 2019 17:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567011627;
 bh=ZARfaWUbuLbc3qSHosG2JV2Bb68PSz+bxh+2v5STyvE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NKOLjK5d8Reg2OCHJ7+BY+Soq9RzU45DRx1kt7HEjJh1xMM3xK6nV+vW2+x/phyrW
 ycEkdZZ83X7aBD85usZseHdXFSXPtrdcly0vuTdCJsbPN8oc7gPUjYYl3ykxZiPR2K
 PHxqq0tuLFk6VS7lIxXJP6/HVcchTp8df/yM7jv0=
Date: Wed, 28 Aug 2019 19:00:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190828170022.GA7873@kroah.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
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
Cc: linux-fsdevel@vger.kernel.org, Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMDY6MDg6MTdQTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+IEZyb206IFZhbGRpcyBLbMSTdG5pZWtzIDx2YWxkaXMua2xldG5pZWtzQHZ0
LmVkdT4KPiAKPiBUaGUgZXhmYXQgY29kZSBuZWVkcyBhIGxvdCBvZiB3b3JrIHRvIGdldCBpdCBp
bnRvICJyZWFsIiBzaGFwZSBmb3IKPiB0aGUgZnMvIHBhcnQgb2YgdGhlIGtlcm5lbCwgc28gcHV0
IGl0IGludG8gZHJpdmVycy9zdGFnaW5nLyBmb3Igbm93IHNvCj4gdGhhdCBpdCBjYW4gYmUgd29y
a2VkIG9uIGJ5IGV2ZXJ5b25lIGluIHRoZSBjb21tdW5pdHkuCj4gCj4gVGhlIGZ1bGwgc3BlY2lm
aWNhdGlvbiBvZiB0aGUgZmlsZXN5c3RlbSBjYW4gYmUgZm91bmQgYXQ6Cj4gICBodHRwczovL2Rv
Y3MubWljcm9zb2Z0LmNvbS9lbi11cy93aW5kb3dzL3dpbjMyL2ZpbGVpby9leGZhdC1zcGVjaWZp
Y2F0aW9uCj4gCj4gU2lnbmVkLW9mZi1ieTogVmFsZGlzIEtsZXRuaWVrcyA8dmFsZGlzLmtsZXRu
aWVrc0B2dC5lZHU+Cj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPGFsZXhhbmRlci5sZXZp
bkBtaWNyb3NvZnQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gLS0tCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgIDUgKwo+ICBkcml2ZXJzL3N0YWdpbmcvS2NvbmZpZyAgICAgICAg
ICAgICAgfCAgICAyICsKPiAgZHJpdmVycy9zdGFnaW5nL01ha2VmaWxlICAgICAgICAgICAgIHwg
ICAgMSArCj4gIGRyaXZlcnMvc3RhZ2luZy9leGZhdC9LY29uZmlnICAgICAgICB8ICAgMzkgKwo+
ICBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvTWFrZWZpbGUgICAgICAgfCAgIDEwICsKPiAgZHJpdmVy
cy9zdGFnaW5nL2V4ZmF0L1RPRE8gICAgICAgICAgIHwgICAxMiArCj4gIGRyaXZlcnMvc3RhZ2lu
Zy9leGZhdC9leGZhdC5oICAgICAgICB8ICA5NzMgKysrKysrCj4gIGRyaXZlcnMvc3RhZ2luZy9l
eGZhdC9leGZhdF9ibGtkZXYuYyB8ICAxMzYgKwo+ICBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhm
YXRfY2FjaGUuYyAgfCAgNzIyICsrKysrCj4gIGRyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9j
b3JlLmMgICB8IDM3MDQgKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9zdGFnaW5n
L2V4ZmF0L2V4ZmF0X25scy5jICAgIHwgIDQwNCArKysKPiAgZHJpdmVycy9zdGFnaW5nL2V4ZmF0
L2V4ZmF0X3N1cGVyLmMgIHwgNDEzNyArKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2
ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfdXBjYXNlLmMgfCAgNzQwICsrKysrCj4gIDEzIGZpbGVz
IGNoYW5nZWQsIDEwODg1IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvc3RhZ2luZy9leGZhdC9LY29uZmlnCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0
YWdpbmcvZXhmYXQvTWFrZWZpbGUKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy9leGZhdC9UT0RPCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvZXhmYXQv
ZXhmYXQuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0
X2Jsa2Rldi5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhm
YXRfY2FjaGUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4
ZmF0X2NvcmUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4
ZmF0X25scy5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhm
YXRfc3VwZXIuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4
ZmF0X3VwY2FzZS5jCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMK
PiBpbmRleCBlMzI0MjY4N2NkMTkuLmE0ODRiMzZlNTExNyAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJ
TkVSUwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTYwOTcsNiArNjA5NywxMSBAQCBGOglpbmNs
dWRlL3RyYWNlL2V2ZW50cy9tZGlvLmgKPiAgRjoJaW5jbHVkZS91YXBpL2xpbnV4L21kaW8uaAo+
ICBGOglpbmNsdWRlL3VhcGkvbGludXgvbWlpLmgKPiAgCj4gK0VYRkFUIEZJTEUgU1lTVEVNCj4g
K006CVZhbGRpcyBLbGV0bmlla3MgPHZhbGRpcy5rbGV0bmlla3NAdnQuZWR1Pgo+ICtTOglNYWlu
dGFpbmVkCj4gK0Y6CWZzL2V4ZmF0LwoKT29wcywgSSBtZXNzZWQgdGhpcyBsaW5lIHVwLiAgSSBt
b3ZlZCB0aGlzIHRvIGRyaXZlcnMvc3RhZ2luZy8gYW5kIEkKZm9yZ290IHRvIHVwZGF0ZSB0aGlz
IGxpbmUuICBJJ2xsIGRvIGl0IGluIGEgZm9sbG93LW9uIHBhdGNoLgoKdGhhbmtzLAoKZ3JlZyBr
LWgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
