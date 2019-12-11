Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5165B11AC20
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 14:34:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF8FF230BD;
	Wed, 11 Dec 2019 13:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyjBgutX7NzP; Wed, 11 Dec 2019 13:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28F962302C;
	Wed, 11 Dec 2019 13:34:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A05D1BF32B
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 13:34:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 555DA879A6
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 13:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ec21OmFEy2-y for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 13:34:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F6B987939
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 13:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5mrH73H8IK9PCLoNbfAeyMajTAOWJOgXGTCwDhw8YRM=; b=E5sw+O0i+JbR6CuiQPBxKMAPbL
 BfsuNXhPVsOpKRXRHp/0ZjPlOTgBZZ7CPjSzBQjiPPpVpSPY6DdsSJbj8Ep26qr38wXK4Aq4xi7fn
 PCXgH50sYMZVLD+23kGaqTjLNxI/GsB/5LybwUHMIsSDvH5YDkau6KMx6cx/3YRE+2YQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1if280-0004Ma-Du; Wed, 11 Dec 2019 14:34:08 +0100
Date: Wed, 11 Dec 2019 14:34:08 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>
Subject: Re: [PATCH 4/4] [RFC] staging/net: move AF_X25 into drivers/staging
Message-ID: <20191211133408.GL16369@lunn.ch>
References: <20191209151256.2497534-1-arnd@arndb.de>
 <20191209151256.2497534-4-arnd@arndb.de>
 <m3d0cvjq1h.fsf@t19.piap.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3d0cvjq1h.fsf@t19.piap.pl>
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
Cc: devel@driverdev.osuosl.org, linux-x25@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "R.J.Dunlop" <bob.dunlop@farsite.com>, linux-kernel@vger.kernel.org,
 Kevin Curtis <kevin.curtis@farsite.com>, Eric Biggers <ebiggers@kernel.org>,
 syzbot+429c200ffc8772bfe070@syzkaller.appspotmail.com, netdev@vger.kernel.org,
 syzbot+eec0c87f31a7c3b66f7b@syzkaller.appspotmail.com,
 Andrew Hendry <andrew.hendry@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Zhao Qiang <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgMDg6MTA6MzRBTSArMDEwMCwgS3J6eXN6dG9mIEhhxYJh
c2Egd3JvdGU6Cj4gQXJuZCwKPiAKPiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiB3cml0
ZXM6Cj4gCj4gPiAtIE1vc3Qgb3RoZXIgc3VwcG9ydGVkIEhETEMgaGFyZHdhcmUgdGhhdCB3ZSBz
dXBvcHJ0IGlzIGZvciB0aGUgSVNBIG9yCj4gPiAgIFBDSSBidXNlcy4KPiAKPiBJIHdvdWxkIGJl
IHN1cnByaXNlZCBpZiB0aGVyZSBpcyBhbnlib2R5IGxlZnQgd2l0aCBJU0Egc3luYyBzZXJpYWwK
PiBzdHVmZiwgYnV0IHRoZSBQQ0kgaGFyZHdhcmUgc3RpbGwgaGFzIHNvbWUgdXNlcnMgLSB0aGVz
ZSBtYWNoaW5lcyBkb24ndAo+IG5lZWQgdG8gYmUgdXBncmFkZWQgeWVhcmx5LiBNb3N0IHBlb3Bs
ZSBoYXZlIG1pZ3JhdGVkIGF3YXksIHRob3VnaC4KCkhpIEtyenlzenRvZiwgQXJuZAoKSSBoYXZl
IGEgdXNlIGNhc2UgZm9yIGhkbGNfY2lzY28gYW5kIGhkbGNfcmF3X2V0aC4gQnV0IGl0IHVzZXMg
YSBsb3QKb2Ygb3V0IG9mIHRyZWUgY29kZSwgdGhlIERBSERJIGRyaXZlciBmcmFtZXdvcmsgZm9y
IEUxIGNhcmRzLCBhbmQgYW4KRTEgY2FyZCB3aGljaCBpcyBub3QgcGFydCBvZiBEQUhESS4KCkdp
dmVuIGhvdyBtdWNoIG9mIHRoaXMgaXMgb3V0IG9mIHRyZWUsIGkgd291bGQgdW5kZXJzdGFuZCBp
ZiB5b3UKZXZlbnR1YWxseSBkZWNpZGUgdG8gcmVtb3ZlIHRoaXMgSERMQyBjb2RlLgoKCSAgIEFu
ZHJldwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
