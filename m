Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED018252B
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 23:47:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F535228E2;
	Wed, 11 Mar 2020 22:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9aI8XYOok97; Wed, 11 Mar 2020 22:47:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 829402284C;
	Wed, 11 Mar 2020 22:47:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8A71BF488
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 22:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79F58885EA
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 22:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6N0lpkeMs+z for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 22:47:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2B7338846E
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 22:47:08 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0331F206E7;
 Wed, 11 Mar 2020 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583966828;
 bh=UcNd5rYmINjwGgfboOi/vC/8shoIdG5DtpBHMlvH6Ls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KZVa7ZPGNaqaiG4v4C38D6UvLLRqNoYWMAZH4Bi8oTEMEozqM9VjVHGBgUWyZPXDd
 XKSKgE7dJEWJbeSxZNDL+XP7wwA0dldCByvGTYYwEnUP/l80mCfAa4Pbh9FuAPTkWg
 IgtwL2rWjAYE5FLiLZ91QnjvjX6VfJ+8g28vdft8=
Received: by pali.im (Postfix)
 id 96068803; Wed, 11 Mar 2020 23:47:05 +0100 (CET)
Date: Wed, 11 Mar 2020 23:47:05 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: remove staging version of exfat filesystem
Message-ID: <20200311224705.z3sn3taxjap67jle@pali>
References: <003501d5f66b$7fe3b260$7fab1720$@samsung.com>
 <20200310105421.GA2810679@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310105421.GA2810679@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Namjae Jeon <namjae.jeon@samsung.com>,
 'Linux Kernel Mailing List' <linux-kernel@vger.kernel.org>,
 'Linux Next Mailing List' <linux-next@vger.kernel.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Sungjong Seo <sj1557.seo@samsung.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlc2RheSAxMCBNYXJjaCAyMDIwIDExOjU0OjIxIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90
ZToKPiBOb3cgdGhhdCB0aGVyZSBpcyBhICJyZWFsIiBzb2x1dGlvbiBmb3IgZXhmYXQgaW4gdGhl
IHZmcyB0cmVlIHF1ZXVlZCB1cAo+IHRvIGJlIG1lcmdlZCBpbiA1LjctcmMxIHRoZSAib2xkIiBl
eGZhdCBjb2RlIGluIHN0YWdpbmcgY2FuIGJlIHJlbW92ZWQuCj4gCj4gTWFueSB0aGFua3MgdG8g
VmFsZGlzIGZvciBkb2luZyB0aGUgd29yayB0byBnZXQgdGhpcyBpbnRvIHRoZSB0cmVlIGluCj4g
dGhlIGZpcnN0IHBsYWNlLCBpdCB3YXMgZ3JlYXRseSBhcHByZWNpYXRlZC4KPiAKPiBDYzogVmFs
ZGlzIEtsZXRuaWVrcyA8dmFsZGlzLmtsZXRuaWVrc0B2dC5lZHU+Cj4gQ2M6IFBhbGkgUm9ow6Fy
IDxwYWxpQGtlcm5lbC5vcmc+Cj4gQ2M6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcu
b3JnLmF1Pgo+IENjOiBBbCBWaXJvIDx2aXJvQFplbklWLmxpbnV4Lm9yZy51az4KPiBDYzogTmFt
amFlIEplb24gPG5hbWphZS5qZW9uQHNhbXN1bmcuY29tPgo+IENjOiBTdW5nam9uZyBTZW8gPHNq
MTU1Ny5zZW9Ac2Ftc3VuZy5jb20+Cj4gQ2M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRl
Pgo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRh
dGlvbi5vcmc+CgpBY2tlZC1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KCj4gLS0t
Cj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDYgLQo+ICBkcml2
ZXJzL3N0YWdpbmcvS2NvbmZpZyAgICAgICAgICAgICAgfCAgICAyIC0KPiAgZHJpdmVycy9zdGFn
aW5nL01ha2VmaWxlICAgICAgICAgICAgIHwgICAgMSAtCj4gIGRyaXZlcnMvc3RhZ2luZy9leGZh
dC9LY29uZmlnICAgICAgICB8ICAgNDEgLQo+ICBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvTWFrZWZp
bGUgICAgICAgfCAgIDEwIC0KPiAgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L1RPRE8gICAgICAgICAg
IHwgICA2OSAtCj4gIGRyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdC5oICAgICAgICB8ICA3NjAg
LS0tLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9ibGtkZXYuYyB8ICAxMzggLS0K
PiAgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NhY2hlLmMgIHwgIDUxNCAtLS0tCj4gIGRy
aXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9jb3JlLmMgICB8IDI1MjkgLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X25scy5jICAgIHwgIDIxMiAtLQo+
ICBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfc3VwZXIuYyAgfCAzMjk2IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF91cGNhc2UuYyB8
ICA3NDAgLS0tLS0tCj4gIDEzIGZpbGVzIGNoYW5nZWQsIDgzMTggZGVsZXRpb25zKC0pCj4gIGRl
bGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvS2NvbmZpZwo+ICBkZWxldGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL2V4ZmF0L01ha2VmaWxlCj4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvZXhmYXQvVE9ETwo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0LmgKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvc3RhZ2luZy9leGZhdC9leGZhdF9ibGtkZXYuYwo+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NhY2hlLmMKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9jb3JlLmMKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9ubHMuYwo+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X3N1cGVyLmMKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF91cGNhc2UuYwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
