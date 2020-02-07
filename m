Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9638155A95
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 16:21:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D08E86DAE;
	Fri,  7 Feb 2020 15:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xvovW+X2XDe7; Fri,  7 Feb 2020 15:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABF4586D81;
	Fri,  7 Feb 2020 15:21:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E3CA1BF35C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B25A86A3C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RAOFqtpP6wHu for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from smtp81.iad3b.emailsrvr.com (smtp81.iad3b.emailsrvr.com
 [146.20.161.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B67E86CC5
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1581088451;
 bh=VGlPWNTKKUljpmPOWmZmMuPeGFPQfLAtj9nuO/IvdI8=;
 h=From:To:Subject:Date:From;
 b=jL3bh+gNw+Ke/eV+qb7RJ8QZ2F9pOv7cgClxftsyCWp3Lm2DjJ58LdKL9EjkFUp/y
 k6Wx2lDC+wyUD/rd3I0taHbYrvS/vqRGt4Q37eJ5AT4tZG1oFkengsDZbxuPilL7p2
 MWrXbKUp1WGyxUYhvRb9XUKjf0pkGboUp6YMo6Lw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 0979E401E3; 
 Fri,  7 Feb 2020 10:14:10 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Fri, 07 Feb 2020 10:14:11 -0500
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/4] staging: comedi: ni_routes: Share routing information
 between boards
Date: Fri,  7 Feb 2020 15:13:56 +0000
Message-Id: <20200207151400.272678-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.24.1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, =?UTF-8?q?=C3=89ric=20Piel?= <piel@delmic.com>,
 "Spencer E . Olson" <olsonse@umich.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V2UgZG8gbm90IGhhdmUgb3IgcHJvdmlkZSByb3V0aW5nIGluZm9ybWF0aW9uIGZvciBhbGwgc3Vw
cG9ydGVkIE5JCmJvYXJkcy4gIFNvbWUgb2YgdGhlIGJvYXJkcyBmb3Igd2hpY2ggd2UgY3VycmVu
dGx5IHByb3ZpZGUgcm91dGluZwppbmZvcm1hdGlvbiBhY3R1YWxseSBoYXZlIGlkZW50aWNhbCBy
b3V0ZXMgdG8gc2ltaWxhciBib2FyZHMgZm9yIHdoaWNoCndlIGRvIHByb3ZpZGUgcm91dGluZyBp
bmZvcm1hdGlvbi4gIFJhdGhlciB0aGFuIGR1cGxpY2F0aW5nIHRoZSByb3V0aW5nCmRhdGEgZm9y
IHN1Y2ggYm9hcmRzIChhYm91dCA3IEtpQiBwZXIgYm9hcmQpLCBpbXBsZW1lbnQgYSBtZWNoYW5p
c20gdG8KYWxsb3cgYW4gYWx0ZXJuYXRlIGJvYXJkIG5hbWUgdG8gYmUgc3BlY2lmaWVkIGZvciBy
b3V0aW5nIHB1cnBvc2VzIGluCmNhc2Ugcm91dGluZyBpbmZvcm1hdGlvbiBjYW5ub3QgYmUgZm91
bmQgZm9yIHRoZSBhY3R1YWwgYm9hcmQgbmFtZS4KClNwZWNpZmljYWxseSwgd2UgZG8gbm90IGN1
cnJlbnRseSBwcm92aWRlIHJvdXRpbmcgaW5mb3JtYXRpb24gZm9yIHRoZQpQQ0llLTYyNTEgYW5k
IFBDSWUtNjI1OSBib2FyZHMuICBQYXRjaCA0IGFsbG93cyB0aGVtIHRvIHVzZSB0aGUgcm91dGlu
ZwppbmZvcm1hdGlvbiBwcm92aWRlZCBmb3IgdGhlIFBDSS02MjUxIGFuZCBQQ0ktNjI1OSBib2Fy
ZHMuCgoxKSBzdGFnaW5nOiBjb21lZGk6IG5pX3JvdXRlczogUmVmYWN0b3IgbmlfZmluZF92YWxp
ZF9yb3V0ZXMoKQoyKSBzdGFnaW5nOiBjb21lZGk6IG5pX3JvdXRlczogQWxsb3cgYWx0ZXJuYXRl
IGJvYXJkIG5hbWUgZm9yIHJvdXRlcwozKSBzdGFnaW5nOiBjb21lZGk6IG5pX21pb19jb21tb246
IEFsbG93IGFsdGVybmF0ZSBib2FyZCBuYW1lIGZvciByb3V0ZXMKNCkgc3RhZ2luZzogY29tZWRp
OiBuaV9wY2ltaW86IGFkZCByb3V0ZXMgZm9yIE5JIFBDSWUtNjI1MSBhbmQgUENJZS02MjU5Cgog
ZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL25pXzY2MHguYyAgICAgICB8ICAyICstCiBk
cml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfbWlvX2NvbW1vbi5jIHwgIDEgKwogZHJp
dmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL25pX3BjaW1pby5jICAgICB8ICAyICsKIGRyaXZl
cnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9uaV9yb3V0ZXMuYyAgICAgfCA2MyArKysrKysrKysr
KysrKysrKysrKystLS0tLQogZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL25pX3JvdXRl
cy5oICAgICB8ICAxICsKIGRyaXZlcnMvc3RhZ2luZy9jb21lZGkvZHJpdmVycy9uaV9zdGMuaCAg
ICAgICAgfCAgMSArCiA2IGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0
aW9ucygtKQoKQ2M6IMOJcmljIFBpZWwgPHBpZWxAZGVsbWljLmNvbT4KQ2M6IFNwZW5jZXIgRS4g
T2xzb24gPG9sc29uc2VAdW1pY2guZWR1PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
