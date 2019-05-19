Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ABC22696
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EBB3858DA;
	Sun, 19 May 2019 10:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v94OtJq2NuvX; Sun, 19 May 2019 10:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67748857FB;
	Sun, 19 May 2019 10:21:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50A231BF2EB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A444857FB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TCd_wKmfpE9r for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:21:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 778F2857F8
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:21:34 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14829208C3;
 Sun, 19 May 2019 10:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558261294;
 bh=RMAcnNdzYjfx2XpG3oSH8rKO9nCYYU3tLEvOgbs2bfw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ALJneouBfemWqoMOmAVZQyy5VwLTVanD2N7pDQjKN6NgjR1MN8XgrsbhrDjMjcQAB
 dCnkOpMTz6TD/BDEe8+8mX+tl3tAIGfhY9R/Wg5fPQlhCA7HVQzC6jE9YTjYc0X/cR
 9FXKEx6QaOyBgxBKsxhyCiQp6ki3Bt12xIoyUTos=
Date: Sun, 19 May 2019 11:21:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?QsOhcmJhcmE=?= Fernandes <barbara.fernandes@usp.br>
Subject: Re: [PATCH 1/2] staging: iio: cdc: ad7150: create of_device_id array
Message-ID: <20190519112129.5d83e393@archlinux>
In-Reply-To: <20190518224136.16942-2-barbara.fernandes@usp.br>
References: <20190518224136.16942-1-barbara.fernandes@usp.br>
 <20190518224136.16942-2-barbara.fernandes@usp.br>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Melissa Wen <melissa.srw@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxOTo0MTozNSAtMDMwMApCw6FyYmFyYSBGZXJuYW5kZXMgPGJh
cmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cgo+IENyZWF0ZSBzdHJ1Y3R1cmUgb2YgdHlw
ZSBvZl9kZXZpY2VfaWQgaW4gb3JkZXIgdG8gcmVnaXN0ZXIgYWxsIGRldmljZXMKPiB0aGUgZHJp
dmVyIGlzIGFibGUgdG8gbWFuYWdlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IELDoXJiYXJhIEZlcm5h
bmRlcyA8YmFyYmFyYS5mZXJuYW5kZXNAdXNwLmJyPgo+IFNpZ25lZC1vZmYtYnk6IE1lbGlzc2Eg
V2VuIDxtZWxpc3NhLnNyd0BnbWFpbC5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBNZWxpc3NhIFdl
biA8bWVsaXNzYS5zcndAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFdpbHNvbiBTYWxlcyA8
c3Bvb25tQHNwb29ubS5vcmc+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBXaWxzb24gU2FsZXMgPHNwb29u
bUBzcG9vbm0ub3JnPgoKSGksCgpPbmUgcmVhbGx5IG1pbm9yIHBvaW50IGlubGluZSwgb3RoZXJ3
aXNlIGxvb2tzIGdvb2QgdG8gbWUuCgpUaGFua3MsCgpKb25hdGhhbgoKPiAtLS0KPiAgZHJpdmVy
cy9zdGFnaW5nL2lpby9jZGMvYWQ3MTUwLmMgfCAxMCArKysrKysrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9p
aW8vY2RjL2FkNzE1MC5jIGIvZHJpdmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3MTUwLmMKPiBpbmRl
eCA0YjFjOTBlMWIwZWEuLjA3MjA5NDIyN2UxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvaWlvL2NkYy9hZDcxNTAuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzE1
MC5jCj4gQEAgLTY1NSwxMSArNjU1LDIxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2Rldmlj
ZV9pZCBhZDcxNTBfaWRbXSA9IHsKPiAgCXt9Cj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZCBhZDcxNTBfb2ZfaTJjX21hdGNoW10gPSB7Cj4gKwl7IC5jb21wYXRp
YmxlID0gImFkaSxhZDcxNTAiIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDcxNTEiIH0s
Cj4gKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDcxNTYiIH0sCj4gKwl7fQo+ICt9Owo+ICsKPiAr
TU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYWQ3MTUwX29mX2kyY19tYXRjaCk7Cj4gKwpJIHdvdWxk
IHN1Z2dlc3Qga2VlcGluZyB0aGUgYmVsb3cgTU9EVUxFX0RFVklDRV9UQUJMRQplbnRyeSBuZXh0
IHRvIHRoZSBkZWZpbml0aW9uIG9mIGFkNzE1MF9pZCByYXRoZXIgdGhhbiBwdXR0aW5nCnRoaXMg
bmV3IGJsb2NrIGluIGJldHdlZW4gdGhlbS4KCkluIHNob3J0LCBqdXN0IG1vdmUgeW91ciBhZGRp
dGlvbnMgYmVsb3cgdGhlIG5leHQgbGluZS4KClRoYW5rcywKCkpvbmF0aGFuCgo+ICBNT0RVTEVf
REVWSUNFX1RBQkxFKGkyYywgYWQ3MTUwX2lkKTsKPiAgCj4gIHN0YXRpYyBzdHJ1Y3QgaTJjX2Ry
aXZlciBhZDcxNTBfZHJpdmVyID0gewo+ICAJLmRyaXZlciA9IHsKPiAgCQkubmFtZSA9ICJhZDcx
NTAiLAo+ICsJCS5vZl9tYXRjaF90YWJsZSA9IGFkNzE1MF9vZl9pMmNfbWF0Y2gKPiAgCX0sCj4g
IAkucHJvYmUgPSBhZDcxNTBfcHJvYmUsCj4gIAkuaWRfdGFibGUgPSBhZDcxNTBfaWQsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
