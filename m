Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEBA13C35E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D0ED204EC;
	Wed, 15 Jan 2020 13:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g4o05CgQkGjq; Wed, 15 Jan 2020 13:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57DB5203C8;
	Wed, 15 Jan 2020 13:40:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FA451BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2AAC4860D6
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v2N1TvGvUAzx for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:40:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C16D860A2
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:40:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FF6B207FF;
 Wed, 15 Jan 2020 13:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579095613;
 bh=vq7dWZIt2uzMmU//MJnDRlhzag57tdT+vRJG617udFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pAuyIq2GysfG9S3GlghWZ6CQmBaqtmrJezPEwteygMOKNCDLyRE8eXRMflMeiWvza
 ufxC+sjMlz+9DD3PZkDbc0BoAThgdsDIQNqRr1tk8EOCy/UIhVDW5o/9iA2wj0sGcO
 xXVuV696c5E89sRBN9ayELZBHVGuO9qzKoEW1wI8=
Date: Wed, 15 Jan 2020 14:40:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 00/65] Simplify and improve the wfx driver
Message-ID: <20200115134010.GA3555935@kroah.com>
References: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgMTI6MTI6MDdQTSArMDAwMCwgSsOpcsO0bWUgUG91aWxs
ZXIgd3JvdGU6Cj4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxh
YnMuY29tPgo+IAo+IEhlbGxvIGFsbCwKPiAKPiBUaGlzIHB1bGwgcmVxdWVzdCBpcyBmaW5hbGx5
IGJpZ2dlciB0aGFuIEkgZXhwZWN0ZWQsIHNvcnJ5LgoKQWZ0ZXIgYXBwbHlpbmcgdGhpcyBzZXJp
ZXMsIEkgZ2V0IHRoaXMgYnVpbGQgZXJyb3I6Cgpkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jOiBJ
biBmdW5jdGlvbiDigJh3ZnhfY3FtX2Jzc2xvc3Nfc23igJk6CmRyaXZlcnMvc3RhZ2luZy93Zngv
c3RhLmM6OTE6Mjg6IGVycm9yOiBleHBlY3RlZCDigJg74oCZIGJlZm9yZSDigJhzdHJ1Y3TigJkK
ICAgOTEgfCAgIHN0cnVjdCBpZWVlODAyMTFfaGRyICpoZHIKICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBeCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgOwogICA5
MiB8ICAgc3RydWN0IGllZWU4MDIxMV90eF9jb250cm9sIGNvbnRyb2wgPSB7IH07CiAgICAgIHwg
ICB+fn5+fn4KZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYzo5OTozOiBlcnJvcjog4oCYaGRy4oCZ
IHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKA
mGlkcuKAmT8KICAgOTkgfCAgIGhkciA9IChzdHJ1Y3QgaWVlZTgwMjExX2hkciAqKXNrYi0+ZGF0
YTsKICAgICAgfCAgIF5+fgogICAgICB8ICAgaWRyCgpEaWQgeW91IGV2ZW4gdGVzdC1idWlsZCB0
aGlzPwoKSSBjb3VsZCB0cnkgdG8gYmlzZWN0IGFuZCB0cmFjayBkb3duIHRoZSBvZmZlbmRpbmcg
Y29tbWl0LCBidXQgdGhhdCdzCnRvbyBtdWNoIHdvcmsgOikKCkknbGwgd2FpdCBmb3IgYSB2MiBv
ZiB0aGlzIHNlcmllcywgcGxlYXNlIGZpeCB1cCBhbmQgcmVzZW5kLgoKdGhhbmtzLAoKZ3JlZyBr
LWgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
