Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B3711A4F9
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 08:20:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41BB086B66;
	Wed, 11 Dec 2019 07:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjb07bxoJvRw; Wed, 11 Dec 2019 07:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A1BE86B5A;
	Wed, 11 Dec 2019 07:20:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB651BF3C3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 35FF6204D6
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AuYkAZd1nUhg for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 07:20:21 +0000 (UTC)
X-Greylist: delayed 00:09:42 by SQLgrey-1.7.6
Received: from ni.piap.pl (ni.piap.pl [195.187.100.5])
 by silver.osuosl.org (Postfix) with ESMTPS id B25F5204CE
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 07:20:21 +0000 (UTC)
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ni.piap.pl (Postfix) with ESMTPSA id 8B26144395F;
 Wed, 11 Dec 2019 08:10:34 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 8B26144395F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=piap.pl; s=mail;
 t=1576048235; bh=NzjEtJBbGMnp7Oker2Ku1W7VereultBIRwFu42VbqH0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ddfu2lN5c/GDpBgFP7CSUj0b136P+lVeJ7gwAXrjiOc/imCh/fKKl06s4jiNWd3W6
 ghZTZ3rWpbxy0U0jx8x6F4oyrkOb+j4jZNenBXXxV0t87/bTxylOTmAAjyPY2pKW0j
 p+4ER4qIEmPNUzF+DwzgjA2TKIAZAhR6S+H4y0LA=
From: khalasa@piap.pl (Krzysztof =?utf-8?Q?Ha=C5=82asa?=)
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 4/4] [RFC] staging/net: move AF_X25 into drivers/staging
References: <20191209151256.2497534-1-arnd@arndb.de>
 <20191209151256.2497534-4-arnd@arndb.de>
Date: Wed, 11 Dec 2019 08:10:34 +0100
In-Reply-To: <20191209151256.2497534-4-arnd@arndb.de> (Arnd Bergmann's message
 of "Mon, 9 Dec 2019 16:12:56 +0100")
Message-ID: <m3d0cvjq1h.fsf@t19.piap.pl>
MIME-Version: 1.0
X-KLMS-Rule-ID: 4
X-KLMS-Message-Action: skipped
X-KLMS-AntiSpam-Status: not scanned, whitelist
X-KLMS-AntiPhishing: not scanned, whitelist
X-KLMS-AntiVirus: Kaspersky Security 8.0 for Linux Mail Server,
 version 8.0.1.721, not scanned, whitelist
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

QXJuZCwKCkFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyaXRlczoKCj4gLSBNb3N0IG90
aGVyIHN1cHBvcnRlZCBIRExDIGhhcmR3YXJlIHRoYXQgd2Ugc3Vwb3BydCBpcyBmb3IgdGhlIElT
QSBvcgo+ICAgUENJIGJ1c2VzLgoKSSB3b3VsZCBiZSBzdXJwcmlzZWQgaWYgdGhlcmUgaXMgYW55
Ym9keSBsZWZ0IHdpdGggSVNBIHN5bmMgc2VyaWFsCnN0dWZmLCBidXQgdGhlIFBDSSBoYXJkd2Fy
ZSBzdGlsbCBoYXMgc29tZSB1c2VycyAtIHRoZXNlIG1hY2hpbmVzIGRvbid0Cm5lZWQgdG8gYmUg
dXBncmFkZWQgeWVhcmx5LiBNb3N0IHBlb3BsZSBoYXZlIG1pZ3JhdGVkIGF3YXksIHRob3VnaC4K
LS0gCgpLcnp5c3p0b2YgSGFsYXNhCgrFgVVLQVNJRVdJQ1ogUmVzZWFyY2ggTmV0d29yawpJbmR1
c3RyaWFsIFJlc2VhcmNoIEluc3RpdHV0ZSBmb3IgQXV0b21hdGlvbiBhbmQgTWVhc3VyZW1lbnRz
IFBJQVAKQWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYgV2Fyc2F3LCBQb2xhbmQKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
