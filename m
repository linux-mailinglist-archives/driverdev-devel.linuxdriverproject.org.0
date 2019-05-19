Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E45D2269E
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9BB885B0A;
	Sun, 19 May 2019 10:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vy8zONVhOMex; Sun, 19 May 2019 10:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4306285A6E;
	Sun, 19 May 2019 10:44:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B67451BF2EB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B07298598A
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PVTPDhdBei87 for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:44:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4676E8550D
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:44:07 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1671A21734;
 Sun, 19 May 2019 10:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558262647;
 bh=hpwbVfmn2fxc4zYpjdxBfzApp8qMJssloRB3VH4zxj4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HcZRRlrOQijMKrZyA1qTt28Ejb7F7BqzkAs/QKXjwVJ06XeEIL5f4LgRLMLBLZ+Sx
 pvSECfzmtq3JP1nSelueUiOlQzYJmpKMciv6P49U4jx252MSKR9uZN1W0o+z1hT981
 WwOZ6rLU/SLcZKkq5HCn69jbmuUVTfRaA0FpH5ew=
Date: Sun, 19 May 2019 11:44:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?QsOhcmJhcmE=?= Fernandes <barbara.fernandes@usp.br>
Subject: Re: [RESEND PATCH] staging: iio: adt7316: create of_device_id array
Message-ID: <20190519114400.5cc29c77@archlinux>
In-Reply-To: <20190518224333.18067-1-barbara.fernandes@usp.br>
References: <20190518224333.18067-1-barbara.fernandes@usp.br>
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxOTo0MzozMyAtMDMwMApCw6FyYmFyYSBGZXJuYW5kZXMgPGJh
cmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cgo+IENyZWF0ZSBzdHJ1Y3R1cmUgb2YgdHlw
ZSBvZl9kZXZpY2VfaWQgaW4gb3JkZXIgdG8gcmVnaXN0ZXIgYWxsIGRldmljZXMKPiB0aGUgZHJp
dmVyIGlzIGFibGUgdG8gbWFuYWdlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IELDoXJiYXJhIEZlcm5h
bmRlcyA8YmFyYmFyYS5mZXJuYW5kZXNAdXNwLmJyPgo+IFNpZ25lZC1vZmYtYnk6IFdpbHNvbiBT
YWxlcyA8c3Bvb25tQHNwb29ubS5vcmc+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBXaWxzb24gU2FsZXMg
PHNwb29ubUBzcG9vbm0ub3JnPgpMb29rcyBnb29kIHRvIG1lLgoKQXBwbGllZCB0byB0aGUgdG9n
cmVnIGJyYW5jaCBvZiBpaW8uZ2l0IGFuZCBwdXNoZWQgb3V0IGFzIHRlc3RpbmcKZm9yIHRoZSBh
dXRvYnVpbGRlcnMgdG8gcGxheSB3aXRoIGl0LgoKVGhhbmtzLAoKSm9uYXRoYW4KCj4gLS0tCj4g
IGRyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi1zcGkuYyB8IDEzICsrKysrKysrKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LXNwaS5jIGIvZHJpdmVycy9zdGFnaW5n
L2lpby9hZGRhYy9hZHQ3MzE2LXNwaS5jCj4gaW5kZXggODI5NGI5YzFlM2MyLi45OTY4Nzc1ZjFk
MjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LXNwaS5j
Cj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LXNwaS5jCj4gQEAgLTEy
Nyw5ICsxMjcsMjIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lkIGFkdDczMTZf
c3BpX2lkW10gPSB7Cj4gIAo+ICBNT0RVTEVfREVWSUNFX1RBQkxFKHNwaSwgYWR0NzMxNl9zcGlf
aWQpOwo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYWR0NzMxNl9vZl9z
cGlfbWF0Y2hbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkdDczMTYiIH0sCj4gKwl7
IC5jb21wYXRpYmxlID0gImFkaSxhZHQ3MzE3IiB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJhZGks
YWR0NzMxOCIgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkdDc1MTYiIH0sCj4gKwl7IC5j
b21wYXRpYmxlID0gImFkaSxhZHQ3NTE3IiB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJhZGksYWR0
NzUxOSIgfSwKPiArCXsgfQo+ICt9Owo+ICsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYWR0
NzMxNl9vZl9zcGlfbWF0Y2gpOwo+ICsKPiAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGFkdDcz
MTZfZHJpdmVyID0gewo+ICAJLmRyaXZlciA9IHsKPiAgCQkubmFtZSA9ICJhZHQ3MzE2IiwKPiAr
CQkub2ZfbWF0Y2hfdGFibGUgPSBhZHQ3MzE2X29mX3NwaV9tYXRjaCwKPiAgCQkucG0gPSBBRFQ3
MzE2X1BNX09QUywKPiAgCX0sCj4gIAkucHJvYmUgPSBhZHQ3MzE2X3NwaV9wcm9iZSwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
