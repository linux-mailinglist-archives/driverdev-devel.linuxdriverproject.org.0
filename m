Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB104BA3F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 16:05:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE68E61B80;
	Thu, 17 Feb 2022 15:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wrhTJVPaY26t; Thu, 17 Feb 2022 15:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7737C60B4A;
	Thu, 17 Feb 2022 15:05:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 581AA1BF2B9
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 15:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4670561B80
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 15:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SH8sAgKEYPWO for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 15:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1194E60B4A
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 15:05:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D8E22B8228A;
 Thu, 17 Feb 2022 15:04:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0B1C340E8;
 Thu, 17 Feb 2022 15:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645110298;
 bh=6eo+ss2NaQ4aaexU80Am0OVsZOTFMqFINYOGQ7TKdaY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=U9C7SYoWqotR4fU/A5O/7My+s46ccTUUMx6BWD0p66hmvMPqd9tWXacmXIUdcLhdd
 qHKdMzbSHGh5UTkRs8hDppoG/4H12JMsLyiroMiRqhJ8GLR9OG5fDzkeMHwaL9wN6f
 hcmLkraWjwJ91/iDTvzPt7wR2RLdDSovR7uYQmsoera8K7DKc8Bc57zsMHxURuKwg5
 29aaVvu/7MUzoDTCCZ1jbKbvq9V2s9F/Z11VQLN6EXpH9CL6fSPDLTLMVWS8j77cK0
 nVojl6Fxaj8ZGOOMShphoEdPq0aGawzQMBHi5Y5l0jkr8dqzpXEcLJ7Z+31EdAk69T
 gyhlBZ2YzpTBA==
From: Kalle Valo <kvalo@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 2/2] staging: wfx: apply the necessary SDIO quirks for the
 Silabs WF200
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <20220216093112.92469-3-Jerome.Pouiller@silabs.com>
 <878ru924qr.fsf@kernel.org>
 <CAPDyKFqm3tGa+dtAGPn803rLnfY=tdcoX5DySnG-spFFqM=CrA@mail.gmail.com>
Date: Thu, 17 Feb 2022 17:04:51 +0200
In-Reply-To: <CAPDyKFqm3tGa+dtAGPn803rLnfY=tdcoX5DySnG-spFFqM=CrA@mail.gmail.com>
 (Ulf Hansson's message of "Thu, 17 Feb 2022 15:54:05 +0100")
Message-ID: <87ley9zg8c.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+IHdyaXRlczoKCj4gT24gVGh1LCAx
NyBGZWIgMjAyMiBhdCAxMDo1OSwgS2FsbGUgVmFsbyA8a3ZhbG9Aa2VybmVsLm9yZz4gd3JvdGU6
Cj4+Cj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRl
czoKPj4KPj4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFi
cy5jb20+Cj4+ID4KPj4gPiBVbnRpbCBub3csIHRoZSBTRElPIHF1aXJrcyBhcmUgYXBwbGllZCBk
aXJlY3RseSBmcm9tIHRoZSBkcml2ZXIuCj4+ID4gSG93ZXZlciwgaXQgaXMgYmV0dGVyIHRvIGFw
cGx5IHRoZSBxdWlya3MgYmVmb3JlIGRyaXZlciBwcm9iaW5nLiBTbywKPj4gPiB0aGlzIHBhdGNo
IHJlbG9jYXRlIHRoZSBxdWlya3MgaW4gdGhlIE1NQyBmcmFtZXdvcmsuCj4+Cj4+IEl0IHdvdWxk
IGJlIGdvb2QgdG8ga25vdyBob3cgdGhpcyBpcyBiZXR0ZXIsIHdoYXQncyB0aGUgY29uY3JldGUK
Pj4gYWR2YW50YWdlPwo+Cj4gVGhlIG1tYyBjb3JlIGhhcyBhIHF1aXJrIGludGVyZmFjZSBmb3Ig
YWxsIHR5cGVzIG9mIGNhcmRzCj4gKGVNTUMvU0QvU0RJTyksIHdoaWNoIHRodXMga2VlcHMgdGhl
c2UgdGhpbmdzIGZyb20gc3ByaW5rbGluZyB0bwo+IGRyaXZlcnMuIEluIHNvbWUgY2FzZXMsIHRo
ZSBxdWlyayBuZWVkcyB0byBiZSBhcHBsaWVkIGFscmVhZHkgZHVyaW5nCj4gY2FyZCBpbml0aWFs
aXphdGlvbiwgd2hpY2ggaXMgZWFybGllciB0aGFuIHdoZW4gcHJvYmluZyBhbiBTRElPIGZ1bmMK
PiBkcml2ZXIgb3IgdGhlIE1NQyBibG9jayBkZXZpY2UgZHJpdmVyLgo+Cj4gUGVyaGFwcyBpdCdz
IGEgZ29vZCBpZGVhIHRvIGV4cGxhaW4gYSBiaXQgYWJvdXQgdGhpcyBpbiB0aGUgY29tbWl0IG1l
c3NhZ2UuCgpJIHdvdWxkIGFkZCB0aGUgd2hvbGUgcGFyYWdyYXBoIHRvIHRoZSBjb21taXQgbG9n
IDopCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVs
ZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJz
L2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
