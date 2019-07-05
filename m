Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2000160C80
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 22:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7FBC881D9;
	Fri,  5 Jul 2019 20:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igIYKFZBWMQ7; Fri,  5 Jul 2019 20:43:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35421881B7;
	Fri,  5 Jul 2019 20:42:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E431C1BF5E9
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 20:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE5FE861EE
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 20:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WUYeA0PrUl6w for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 20:42:54 +0000 (UTC)
X-Greylist: delayed 00:07:45 by SQLgrey-1.7.6
Received: from mx.0dd.nl (mx.0dd.nl [5.2.79.48])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B76585F0A
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 20:42:53 +0000 (UTC)
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 6DE205FA1D;
 Fri,  5 Jul 2019 22:35:07 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="Bty0AGL2"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 20D441CF6176;
 Fri,  5 Jul 2019 22:35:07 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 20D441CF6176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1562358907;
 bh=iDTuEFvk0tw6Q2Z8phsGvBtQUAbQfo1eE9ND1g87xyA=;
 h=From:To:Cc:Subject:Date:From;
 b=Bty0AGL2ICr0Oh6zsH50aNeZz9IWZRpVtB3hhJhBhRaMK8Qos1EXl2iQQJjBF7kIs
 d5ApdTavh3JTmz9LNPLDVq0N+j3T8HiVPXttQ5c7zf2SJpqdLVjQvJcEs1BqoNTh1s
 xTvtZpJyQFHeTWvQ9BvMhfd8sH1B3g0/ihP+YBHfdm+cEgPrquNShdx3X5vomxdwwp
 kRAWaHrMJS5Xw+gdzDNGtBN72C0c264TJrbJ7o5Uqvi+aAJYswGNxX9+LoC7ygPM13
 rwNxEy/nfr1Z8luloHjlldEg0ojTRt+d72VXvLvrbI4nVuk0+DlrwVG/RrS6J4ZzM4
 kNOmki69anFXA==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sergio.paracuellos@gmail.com, matthias.bgg@gmail.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: Fix compiler error 'slot' may be used
 uninitialized
Date: Fri,  5 Jul 2019 22:33:27 +0200
Message-Id: <20190705203327.8493-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SW4gY29tbWl0IDgwMmEyZjdiMmZlMyAoInN0YWdpbmc6IG10NzYyMS1wY2k6IGZhY3RvciBvdXQK
J210NzYyMV9wY2llX2VuYWJsZV9wb3J0JyBmdW5jdGlvbiIpLCBzbG90ID0gcG9ydC0+c2xvdDsg
bGluZSB3YXMgcmVtb3ZlZC4KQWxzbyBvdGhlciBkZXZfZXJyKCkgcHJpbnQgcGFyYW1ldGVyIHdh
cyBjaGFuZ2VkIGZyb20gc2xvdCB0byBwb3J0LT5zbG90LgpTbyB0aGUgc2FtZSBzaG91bGQgYmUg
ZG9uZSBoZXJlLgoKVGhpcyBhbHNvIGZpeGVzIGNvbXBpbGVyIGVycm9yOgpkcml2ZXJzL3N0YWdp
bmcvbXQ3NjIxLXBjaS9wY2ktbXQ3NjIxLmM6IEluIGZ1bmN0aW9uICdtdDc2MjFfcGNpX3Byb2Jl
JzoKLi9pbmNsdWRlL2xpbnV4L2RldmljZS5oOjE0OTA6Mjogd2FybmluZzogJ3Nsb3QnIG1heSBi
ZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbiBbLVdtYXliZS11bmluaXRpYWxp
emVkXQogIF9kZXZfaW5mbyhkZXYsIGRldl9mbXQoZm10KSwgIyNfX1ZBX0FSR1NfXykKICBefn5+
fn5+fn4KZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYyMS5jOjUwNDo2OiBub3Rl
OiAnc2xvdCcgd2FzIGRlY2xhcmVkIGhlcmUKICB1MzIgc2xvdDsKICAgICAgXn5+fgoKRml4ZXM6
IDgwMmEyZjdiMmZlMyAoInN0YWdpbmc6IG10NzYyMS1wY2k6IGZhY3RvciBvdXQgJ210NzYyMV9w
Y2llX2VuYWJsZV9wb3J0JyBmdW5jdGlvbiIpClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3Jz
dCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNp
L3BjaS1tdDc2MjEuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1t
dDc2MjEuYyBiL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwppbmRleCAw
M2Q5MTlhOTQ1NTIuLjgxNjAwYzAzY2FlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL210
NzYyMS1wY2kvcGNpLW10NzYyMS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3Bj
aS1tdDc2MjEuYwpAQCAtNTExLDcgKzUxMSw3IEBAIHN0YXRpYyB2b2lkIG10NzYyMV9wY2llX2Vu
YWJsZV9wb3J0cyhzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCiAJCQkJCXBvcnQtPnNsb3QpOwog
CQkJCWNvbnRpbnVlOwogCQkJfQotCQkJZGV2X2luZm8oZGV2LCAiUENJRSVkIGVuYWJsZWRcbiIs
IHNsb3QpOworCQkJZGV2X2luZm8oZGV2LCAiUENJRSVkIGVuYWJsZWRcbiIsIHBvcnQtPnNsb3Qp
OwogCQkJbnVtX3Nsb3RzX2VuYWJsZWQrKzsKIAkJfQogCX0KLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
