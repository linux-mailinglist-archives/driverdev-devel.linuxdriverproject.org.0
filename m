Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 846BCAFA43
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 12:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7810F85755;
	Wed, 11 Sep 2019 10:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P_iEn_oN6-uI; Wed, 11 Sep 2019 10:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8BBE8453F;
	Wed, 11 Sep 2019 10:24:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 192611BF4D5
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1603A20371
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IigNIeNcxoP for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 10:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
 [217.26.49.172])
 by silver.osuosl.org (Postfix) with ESMTPS id 1521320368
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 10:24:28 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7znV-000BZB-4E; Wed, 11 Sep 2019 12:24:25 +0200
Received: from [213.55.220.251] (helo=[100.66.103.90])
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7znU-000PHX-V7; Wed, 11 Sep 2019 12:24:25 +0200
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2] Staging: exfat: Avoid use of strcpy
Date: Wed, 11 Sep 2019 12:24:23 +0200
Message-Id: <EAFF08E1-747C-4084-BFEF-A89465A6F9ED@volery.com>
References: <20190911100616.GH20699@kadam>
In-Reply-To: <20190911100616.GH20699@kadam>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Mailer: iPhone Mail (17A5831c)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org,
 linux@rasmusvillemoes.dk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cgo+IE9uIDExIFNlcCAyMDE5LCBhdCAxMjowNiwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiDvu79PbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAxMTo0
MjoxOUFNICswMjAwLCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+PiBVc2Ugc3Ryc2NweSBpbnN0ZWFk
IG9mIHN0cmNweSBpbiBleGZhdF9jb3JlLmMsIGFuZCBhZGQgYSBjaGVjawo+PiBmb3IgbGVuZ3Ro
IHRoYXQgd2lsbCByZXR1cm4gYWxyZWFkeSBrbm93biBGRlNfSU5WQUxJRFBBVEguCj4+IAo+PiBT
dWdnZXN0ZWQtYnk6IFJhc211cyBWaWxsZW1vZXMgPGxpbnV4QHJhc211c3ZpbGxlbW9lcy5kaz4K
Pj4gU2lnbmVkLW9mZi1ieTogU2FuZHJvIFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+Cj4+IC0t
LQo+PiB2MjogSW1wbGVtZW50IGxlbmd0aCBjaGVjayBhbmQgcmV0dXJuIGluIG9uZQo+PiB2MTog
T3JpZ2luYWwgUGF0Y2gKPj4gZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYyB8IDMg
KystCj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4g
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfY29yZS5jIGIvZHJp
dmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2NvcmUuYwo+PiBpbmRleCBkYThjNTgxNDljMzUuLjRj
NDBmMTM1Mjg0OCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X2Nv
cmUuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfY29yZS5jCj4+IEBAIC0y
OTY0LDcgKzI5NjQsOCBAQCBzMzIgcmVzb2x2ZV9wYXRoKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNo
YXIgKnBhdGgsIHN0cnVjdCBjaGFpbl90ICpwX2RpciwKPj4gICAgaWYgKHN0cmxlbihwYXRoKSA+
PSAoTUFYX05BTUVfTEVOR1RIICogTUFYX0NIQVJTRVRfU0laRSkpCj4gICAgICAgIF5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCj4gRGVsZXRl
IHRoaXMgYXMgaXQgaXMgbm8gbG9uZ2VyIHJlcXVpcmVkLgo+IAoKWWVwLCBzYXcgaXQgZnJvbSBS
YXNtdXMgcmVzcG9uc2UgdG9vIGp1c3Qgbm93Li4gRHVtYiBtaXN0YWtlLgpXaWxsIGZpeCB0aGlz
IHRoaXMgYWZ0ZXJub29uLgoKU2FuZHJvIFYKCj4+ICAgICAgICByZXR1cm4gRkZTX0lOVkFMSURQ
QVRIOwo+PiAKPj4gLSAgICBzdHJjcHkobmFtZV9idWYsIHBhdGgpOwo+PiArICAgIGlmIChzdHJz
Y3B5KG5hbWVfYnVmLCBwYXRoLCBzaXplb2YobmFtZV9idWYpKSA8IDApCj4+ICsgICAgICAgIHJl
dHVybiBGRlNfSU5WQUxJRFBBVEg7Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
