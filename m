Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B4DF9DCA
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 00:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E22FB84948;
	Tue, 12 Nov 2019 23:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQIyZxt3Yd_V; Tue, 12 Nov 2019 23:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF7CD81A2F;
	Tue, 12 Nov 2019 23:09:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F01B1BF44A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BAA8873DE
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w2Ovi2hQxcnm for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 23:09:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CE3CE87364
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 23:09:23 +0000 (UTC)
Received: from localhost (unknown [8.46.76.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A51CE21925;
 Tue, 12 Nov 2019 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573600163;
 bh=aRtyOqmha9ZZUYAuDDeC+sL+QifL115+qQu+v0y0imY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8W4zRq0cZ0HeA2OawMLcuxjH8dLbyJAgKQbkX9tgGKUJG5Un+Ekk961vwaUWBFAK
 Ud9BLnsFCBGKX8PoMMF1mlyhaUY0EfVI5wdRprKJgsizm5wMz315u0tmqAoeBnxY1g
 WkN7wpoEMWcm6V3/QWwBrJgKpqD654mN3FMRGBEk=
Date: Wed, 13 Nov 2019 00:09:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
Message-ID: <20191112230915.GA1931478@kroah.com>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMTI6MTQ6MjNQTSAtMDUwMCwgTWFyY2VsbyBEaW9wLUdv
bnphbGV6IHdyb3RlOgo+IFRoaXMgYWxsb3dzIHRoZSByZW1vdmFsIG9mIHRoZSBzdHJ1Y3QgcnBp
X2Zpcm13YXJlKiBtZW1iZXIKPiBmcm9tIHN0cnVjdCB2Y2hpcV9kcnZkYXRhLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IE1hcmNlbG8gRGlvcC1Hb256YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+
Cj4gLS0tCj4gIC4uLi9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4MzVfYXJtLmMgICAgICAg
ICAgIHwgMTQgKysrKysrKysrKysrKy0KPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3Zj
aGlxX2FybS92Y2hpcV9hcm0uYyAgfCAxNCAtLS0tLS0tLS0tLS0tLQo+ICAuLi4vdmMwNF9zZXJ2
aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5oICB8ICAxIC0KPiAgMyBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKClRoaXMgY29tbWl0IGJy
ZWFrcyB0aGUgYnVpbGQ6CgpJbiBmdW5jdGlvbiDigJhmcmVlX3BhZ2VsaXN04oCZLAogICAgaW5s
aW5lZCBmcm9tIOKAmHZjaGlxX2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3Zj
MDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgpk
cml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4
MzVfYXJtLmM6NTg4OjQ6IHdhcm5pbmc6IGFyZ3VtZW50IDIgbnVsbCB3aGVyZSBub24tbnVsbCBl
eHBlY3RlZCBbLVdub25udWxsXQogIDU4OCB8ICAgIG1lbWNweSgoY2hhciAqKWttYXAocGFnZXNb
MF0pICsKICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgNTg5IHwg
ICAgIHBhZ2VsaXN0LT5vZmZzZXQsCiAgICAgIHwgICAgIH5+fn5+fn5+fn5+fn5+fn5+CiAgNTkw
IHwgICAgIGZyYWdtZW50cywKICAgICAgfCAgICAgfn5+fn5+fn5+fgogIDU5MSB8ICAgICBoZWFk
X2J5dGVzKTsKICAgICAgfCAgICAgfn5+fn5+fn5+fn4KClBsZWFzZSBiZSBtb3JlIGNhcmVmdWwg
YW5kIGF0IGxlYXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5nCnRoZW0gb3V0IDoo
CgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
