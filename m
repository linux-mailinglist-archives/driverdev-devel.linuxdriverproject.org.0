Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B80E6820A9
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 17:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8EC085CAA;
	Mon,  5 Aug 2019 15:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RJVL3xvNxJX5; Mon,  5 Aug 2019 15:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51A7485CF2;
	Mon,  5 Aug 2019 15:46:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E66B21BF2FC
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 15:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E33EE85C86
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 15:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lzkUIm0WrTli for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 15:46:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16956853FF
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 15:46:37 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B50B82086D;
 Mon,  5 Aug 2019 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565019996;
 bh=u7lsS/8/8w7L3VnyMcz6Rwoa3DBa4x5pEdbYelQKDBE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CUn5iOaaG4uDCeZFaIGQUAsF6DLTi3NveQDzZkwqu6o04ewg7yHfPEAsbTiBTdBTz
 aXaf/iOi93HT8BGqA3lmauAbytuxXWNutOcbv12hvS1tzUFyFNaZ7JSANJUdUlLyys
 t5Olj5Nh453HmkD1kqjQQ+hTNhhyyamwEZVAFvbw=
Date: Mon, 5 Aug 2019 16:46:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH 1/4] iio: adc: ad7606: Add support for AD7606B ADC
Message-ID: <20190805164630.357039e2@archlinux>
In-Reply-To: <20190802100304.15899-1-beniamin.bia@analog.com>
References: <20190802100304.15899-1-beniamin.bia@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Stefan Popa <stefan.popa@analog.com>,
 Michael.Hennerich@analog.com, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, mchehab+samsung@kernel.org, paulmck@linux.ibm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCAyIEF1ZyAyMDE5IDEzOjAzOjAxICswMzAwCkJlbmlhbWluIEJpYSA8YmVuaWFtaW4u
YmlhQGFuYWxvZy5jb20+IHdyb3RlOgoKPiBGcm9tOiBTdGVmYW4gUG9wYSA8c3RlZmFuLnBvcGFA
YW5hbG9nLmNvbT4KPiAKPiBUaGUgQUQ3NjA2QiBpcyBhIDE2LWJpdCBBREMgdGhhdCBzdXBwb3J0
cyBzaW11bHRhbmVvdXMgc2FtcGxpbmcgb2YgOAo+IGNoYW5uZWxzLiBJdCBpcyBwaW4gY29tcGF0
aWJsZSB0byBBRDc2MDYsIGJ1dCBhZGRzIGV4dHJhIG1vZGVzIGJ5Cj4gd3JpdGluZyB0byB0aGUg
cmVnaXN0ZXIgbWFwLgo+IAo+IFRoZSBBRDc2MDZCIGNhbiBiZSBjb25maWd1cmVkIHRvIHdvcmsg
aW4gc29mdHdhcmUgbW9kZSBieSBzZXR0aW5nIGFsbAo+IG92ZXJzYW1wbGluZyBwaW5zIHRvIGhp
Z2guIFRoaXMgbW9kZSBpcyBzZWxlY3RlZCBieSBkZWZhdWx0Lgo+IFRoZSBvdmVyc2FtcGxpbmcg
cmF0aW8gaXMgY29uZmlndXJlZCBmcm9tIHRoZSBPU19NT0RFIHJlZ2lzdGVyIChhZGRyZXNzCj4g
MHgwOCkgd2l0aCB0aGUgYWRkaXRpb24gb2YgT1M9MTI4IGFuZCBPUz0yNTYgdGhhdCB3ZXJlIG5v
dCBhdmFpbGFibGUgaW4KPiBoYXJkd2FyZSBtb2RlLgo+IAo+IFRoZSBkZXZpY2UgaXMgY29uZmln
dXJlZCB0byBvdXRwdXQgZGF0YSBvbiBhIHNpbmdsZSBzcGkgY2hhbm5lbCwgYnV0IHRoaXMKPiBj
b25maWd1cmF0aW9uIG11c3QgYmUgZG9uZSByaWdodCBhZnRlciByZXN0YXJ0LiBUaGF0IGlzIHdo
eSB0aGUgZGVsYXkgd2FzCj4gcmVtb3ZlZCBmb3IgZGV2aWNlcyB3aGljaCBkb2Vzbid0IHJlcXVp
cmUgaXQuCj4gCj4gTW9yZW92ZXIsIGluIHNvZnR3YXJlIG1vZGUsIHRoZSByYW5nZSBncGlvIGhh
cyBubyBsb25nZXIgaXRzIGZ1bmN0aW9uLgo+IEluc3RlYWQsIHRoZSBzY2FsZSBjYW4gYmUgY29u
ZmlndXJlZCBpbmRpdmlkdWFsbHkgZm9yIGVhY2ggY2hhbm5lbCBmcm9tCj4gdGhlIFJBTkdFX0NI
IHJlZ2lzdGVycyAoYWRkcmVzcyAweDAzIHRvIDB4MDYpLiBCZXNpZGVzIHRoZSBhbHJlYWR5Cj4g
c3VwcG9ydGVkIMKxMTAgViBhbmQgwrE1IFYgcmFuZ2VzLCBzb2Z0d2FyZSBtb2RlIGNhbiBhbHNv
IGFjY29tbW9kYXRlIHRoZQo+IMKxMi41IFYgcmFuZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3Rl
ZmFuIFBvcGEgPHN0ZWZhbi5wb3BhQGFuYWxvZy5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBCZW5p
YW1pbiBCaWEgPGJlbmlhbWluLmJpYUBhbmFsb2cuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEJlbmlh
bWluIEJpYSA8YmVuaWFtaW4uYmlhQGFuYWxvZy5jb20+CgpUaGlzIGxvb2tzIGZpbmUgdG8gbWUu
IEknbGwgcGljayBpdCB1cCAoaWYgbm8gb3RoZXIgY29tbWVudHMpCndoZW4geW91J3ZlIHRpZGll
ZCB1cCB0aGUgaXNzdWVzIFJvYiByYWlzZXMgZm9yIHRoZSBEVCBiaW5kaW5ncy4KClRoYW5rcywK
CkpvbmF0aGFuCgo+IC0tLQo+ICBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgICAgIHwgIDEzICsr
KystCj4gIGRyaXZlcnMvaWlvL2FkYy9hZDc2MDYuaCAgICAgfCAgIDQgKysKPiAgZHJpdmVycy9p
aW8vYWRjL2FkNzYwNl9zcGkuYyB8IDEwNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEyMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgYi9kcml2ZXJzL2lp
by9hZGMvYWQ3NjA2LmMKPiBpbmRleCBlZDJkMDg0MzdlNWQuLmY1YmE5NGMwM2E4ZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMKPiArKysgYi9kcml2ZXJzL2lpby9hZGMv
YWQ3NjA2LmMKPiBAQCAtNDEwLDEyICs0MTAsMTkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhZDc2
MDZfY2hpcF9pbmZvIGFkNzYwNl9jaGlwX2luZm9fdGJsW10gPSB7Cj4gIAkJLm92ZXJzYW1wbGlu
Z19hdmFpbCA9IGFkNzYwNl9vdmVyc2FtcGxpbmdfYXZhaWwsCj4gIAkJLm92ZXJzYW1wbGluZ19u
dW0gPSBBUlJBWV9TSVpFKGFkNzYwNl9vdmVyc2FtcGxpbmdfYXZhaWwpLAo+ICAJfSwKPiArCVtJ
RF9BRDc2MDZCXSA9IHsKPiArCQkuY2hhbm5lbHMgPSBhZDc2MDZfY2hhbm5lbHMsCj4gKwkJLm51
bV9jaGFubmVscyA9IDksCj4gKwkJLm92ZXJzYW1wbGluZ19hdmFpbCA9IGFkNzYwNl9vdmVyc2Ft
cGxpbmdfYXZhaWwsCj4gKwkJLm92ZXJzYW1wbGluZ19udW0gPSBBUlJBWV9TSVpFKGFkNzYwNl9v
dmVyc2FtcGxpbmdfYXZhaWwpLAo+ICsJfSwKPiAgCVtJRF9BRDc2MTZdID0gewo+ICAJCS5jaGFu
bmVscyA9IGFkNzYxNl9jaGFubmVscywKPiAgCQkubnVtX2NoYW5uZWxzID0gMTcsCj4gIAkJLm92
ZXJzYW1wbGluZ19hdmFpbCA9IGFkNzYxNl9vdmVyc2FtcGxpbmdfYXZhaWwsCj4gIAkJLm92ZXJz
YW1wbGluZ19udW0gPSBBUlJBWV9TSVpFKGFkNzYxNl9vdmVyc2FtcGxpbmdfYXZhaWwpLAo+ICAJ
CS5vc19yZXFfcmVzZXQgPSB0cnVlLAo+ICsJCS5pbml0X2RlbGF5X21zID0gMTUsCj4gIAl9LAo+
ICB9Owo+ICAKPiBAQCAtNjMxLDggKzYzOCwxMCBAQCBpbnQgYWQ3NjA2X3Byb2JlKHN0cnVjdCBk
ZXZpY2UgKmRldiwgaW50IGlycSwgdm9pZCBfX2lvbWVtICpiYXNlX2FkZHJlc3MsCj4gIAkJZGV2
X3dhcm4oc3QtPmRldiwgImZhaWxlZCB0byBSRVNFVDogbm8gUkVTRVQgR1BJTyBzcGVjaWZpZWRc
biIpOwo+ICAKPiAgCS8qIEFENzYxNiByZXF1aXJlcyBhbCBsZWFzdCAxNW1zIHRvIHJlY29uZmln
dXJlIGFmdGVyIGEgcmVzZXQgKi8KPiAtCWlmIChtc2xlZXBfaW50ZXJydXB0aWJsZSgxNSkpCj4g
LQkJcmV0dXJuIC1FUkVTVEFSVFNZUzsKPiArCWlmIChzdC0+Y2hpcF9pbmZvLT5pbml0X2RlbGF5
X21zKSB7Cj4gKwkJaWYgKG1zbGVlcF9pbnRlcnJ1cHRpYmxlKHN0LT5jaGlwX2luZm8tPmluaXRf
ZGVsYXlfbXMpKQo+ICsJCQlyZXR1cm4gLUVSRVNUQVJUU1lTOwo+ICsJfQo+ICAKPiAgCXN0LT53
cml0ZV9zY2FsZSA9IGFkNzYwNl93cml0ZV9zY2FsZV9odzsKPiAgCXN0LT53cml0ZV9vcyA9IGFk
NzYwNl93cml0ZV9vc19odzsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5o
IGIvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCj4gaW5kZXggZWVhYWE4YjkwNWRiLi45MzUwZWYx
ZjYzYjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCj4gKysrIGIvZHJp
dmVycy9paW8vYWRjL2FkNzYwNi5oCj4gQEAgLTQ2LDYgKzQ2LDggQEAKPiAgICoJCQlvdmVyc2Ft
cGxpbmcgcmF0aW9zLgo+ICAgKiBAb3ZlcnNhbXBsaW5nX251bQludW1iZXIgb2YgZWxlbWVudHMg
c3RvcmVkIGluIG92ZXJzYW1wbGluZ19hdmFpbCBhcnJheQo+ICAgKiBAb3NfcmVxX3Jlc2V0CXNv
bWUgZGV2aWNlcyByZXF1aXJlIGEgcmVzZXQgdG8gdXBkYXRlIG92ZXJzYW1wbGluZwo+ICsgKiBA
aW5pdF9kZWxheV9tcwlyZXF1aXJlZCBkZWxheSBpbiBtaWxpc2Vjb25kcyBmb3IgaW5pdGlhbGl6
YXRpb24KPiArICoJCQlhZnRlciBhIHJlc3RhcnQKPiAgICovCj4gIHN0cnVjdCBhZDc2MDZfY2hp
cF9pbmZvIHsKPiAgCWNvbnN0IHN0cnVjdCBpaW9fY2hhbl9zcGVjCSpjaGFubmVsczsKPiBAQCAt
NTMsNiArNTUsNyBAQCBzdHJ1Y3QgYWQ3NjA2X2NoaXBfaW5mbyB7Cj4gIAljb25zdCB1bnNpZ25l
ZCBpbnQJCSpvdmVyc2FtcGxpbmdfYXZhaWw7Cj4gIAl1bnNpZ25lZCBpbnQJCQlvdmVyc2FtcGxp
bmdfbnVtOwo+ICAJYm9vbAkJCQlvc19yZXFfcmVzZXQ7Cj4gKwl1bnNpZ25lZCBsb25nCQkJaW5p
dF9kZWxheV9tczsKPiAgfTsKPiAgCj4gIC8qKgo+IEBAIC0xNTUsNiArMTU4LDcgQEAgZW51bSBh
ZDc2MDZfc3VwcG9ydGVkX2RldmljZV9pZHMgewo+ICAJSURfQUQ3NjA2XzgsCj4gIAlJRF9BRDc2
MDZfNiwKPiAgCUlEX0FENzYwNl80LAo+ICsJSURfQUQ3NjA2QiwKPiAgCUlEX0FENzYxNiwKPiAg
fTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDZfc3BpLmMgYi9kcml2
ZXJzL2lpby9hZGMvYWQ3NjA2X3NwaS5jCj4gaW5kZXggOThlZDUyYjc0NTA3Li4wNzBlZTdlMzFl
MmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNl9zcGkuYwo+ICsrKyBiL2Ry
aXZlcnMvaWlvL2FkYy9hZDc2MDZfc3BpLmMKPiBAQCAtMzEsNiArMzEsMjAgQEAKPiAgLyogVGhl
IHJhbmdlIG9mIHRoZSBjaGFubmVsIGlzIHN0b3JlZCBvbiAyIGJpdHMqLwo+ICAjZGVmaW5lIEFE
NzYxNl9SQU5HRV9DSF9NU0soY2gpCQkoMGIxMSA8PCAoKChjaCkgJiAwYjExKSAqIDIpKQo+ICAj
ZGVmaW5lIEFENzYxNl9SQU5HRV9DSF9NT0RFKGNoLCBtb2RlKQkoKG1vZGUpIDw8ICgoKChjaCkg
JiAwYjExKSkgKiAyKSkKPiArCj4gKyNkZWZpbmUgQUQ3NjA2X0NPTkZJR1VSQVRJT05fUkVHSVNU
RVIJMHgwMgo+ICsjZGVmaW5lIEFENzYwNl9TSU5HTEVfRE9VVAkJMHgwCj4gKwo+ICsvKgo+ICsg
KiBSYW5nZSBmb3IgQUQ3NjA2QiBjaGFubmVscyBhcmUgc3RvcmVkIGluIHJlZ2lzdGVycyBzdGFy
dGluZyB3aXRoIGFkZHJlc3MgMHgzLgo+ICsgKiBFYWNoIHJlZ2lzdGVyIHN0b3JlcyByYW5nZSBm
b3IgMiBjaGFubmVscyg0IGJpdHMgcGVyIGNoYW5uZWwpLgo+ICsgKi8KPiArI2RlZmluZSBBRDc2
MDZfUkFOR0VfQ0hfTVNLKGNoKQkJKEdFTk1BU0soMywgMCkgPDwgKDQgKiAoKGNoKSAmIDB4MSkp
KQo+ICsjZGVmaW5lIEFENzYwNl9SQU5HRV9DSF9NT0RFKGNoLCBtb2RlKQlcCj4gKwkoKEdFTk1B
U0soMywgMCkgJiBtb2RlKSA8PCAoNCAqICgoY2gpICYgMHgxKSkpCj4gKyNkZWZpbmUgQUQ3NjA2
X1JBTkdFX0NIX0FERFIoY2gpCSgweDAzICsgKChjaCkgPj4gMSkpCj4gKyNkZWZpbmUgQUQ3NjA2
X09TX01PREUJCQkweDA4Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGlpb19jaGFuX3NwZWMg
YWQ3NjE2X3N3X2NoYW5uZWxzW10gPSB7Cj4gIAlJSU9fQ0hBTl9TT0ZUX1RJTUVTVEFNUCgxNiks
Cj4gIAlBRDc2MTZfQ0hBTk5FTCgwKSwKPiBAQCAtNTEsNiArNjUsMjIgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpaW9fY2hhbl9zcGVjIGFkNzYxNl9zd19jaGFubmVsc1tdID0gewo+ICAJQUQ3NjE2
X0NIQU5ORUwoMTUpLAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9fY2hhbl9z
cGVjIGFkNzYwNkJfc3dfY2hhbm5lbHNbXSA9IHsKPiArCUlJT19DSEFOX1NPRlRfVElNRVNUQU1Q
KDgpLAo+ICsJQUQ3NjE2X0NIQU5ORUwoMCksCj4gKwlBRDc2MTZfQ0hBTk5FTCgxKSwKPiArCUFE
NzYxNl9DSEFOTkVMKDIpLAo+ICsJQUQ3NjE2X0NIQU5ORUwoMyksCj4gKwlBRDc2MTZfQ0hBTk5F
TCg0KSwKPiArCUFENzYxNl9DSEFOTkVMKDUpLAo+ICsJQUQ3NjE2X0NIQU5ORUwoNiksCj4gKwlB
RDc2MTZfQ0hBTk5FTCg3KSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQg
YWQ3NjA2Ql9vdmVyc2FtcGxpbmdfYXZhaWxbOV0gPSB7Cj4gKwkxLCAyLCA0LCA4LCAxNiwgMzIs
IDY0LCAxMjgsIDI1Ngo+ICt9Owo+ICsKPiAgc3RhdGljIHUxNiBhZDc2MTZfc3BpX3JkX3dyX2Nt
ZChpbnQgYWRkciwgY2hhciBpc1dyaXRlT3ApCj4gIHsKPiAgCS8qCj4gQEAgLTYwLDYgKzkwLDE2
IEBAIHN0YXRpYyB1MTYgYWQ3NjE2X3NwaV9yZF93cl9jbWQoaW50IGFkZHIsIGNoYXIgaXNXcml0
ZU9wKQo+ICAJcmV0dXJuICgoYWRkciAmIDB4N0YpIDw8IDEpIHwgKChpc1dyaXRlT3AgJiAweDEp
IDw8IDcpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdTE2IGFkNzYwNkJfc3BpX3JkX3dyX2NtZChpbnQg
YWRkciwgY2hhciBpc1dyaXRlT3ApCj4gK3sKPiArCS8qCj4gKwkgKiBUaGUgYWRkcmVzcyBvZiBy
ZWdpc3RlciBjb25zaXN0cyBvZiBvbmUgYml0IHdoaWNoCj4gKwkgKiBzcGVjaWZpZXMgYSByZWFk
IGNvbW1hbmQgcGxhY2VkIGJpdCA2LCBmb2xsb3dlZCBieQo+ICsJICogNiBiaXRzIG9mIGFkZHJl
c3MuCj4gKwkgKi8KPiArCXJldHVybiAoYWRkciAmIDB4M0YpIHwgKCgofmlzV3JpdGVPcCkgJiAw
eDEpIDw8IDYpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IGFkNzYwNl9zcGlfcmVhZF9ibG9jayhz
dHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAkJCQkgaW50IGNvdW50LCB2b2lkICpidWYpCj4gIHsKPiBA
QCAtMTY5LDYgKzIwOSwyMyBAQCBzdGF0aWMgaW50IGFkNzYxNl93cml0ZV9vc19zdyhzdHJ1Y3Qg
aWlvX2RldiAqaW5kaW9fZGV2LCBpbnQgdmFsKQo+ICAJCQkJICAgICBBRDc2MTZfT1NfTUFTSywg
dmFsIDw8IDIpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGFkNzYwNl93cml0ZV9zY2FsZV9zdyhz
dHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LCBpbnQgY2gsIGludCB2YWwpCj4gK3sKPiArCXN0cnVj
dCBhZDc2MDZfc3RhdGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiArCj4gKwlyZXR1cm4g
YWQ3NjA2X3NwaV93cml0ZV9tYXNrKHN0LAo+ICsJCQkJICAgICBBRDc2MDZfUkFOR0VfQ0hfQURE
UihjaCksCj4gKwkJCQkgICAgIEFENzYwNl9SQU5HRV9DSF9NU0soY2gpLAo+ICsJCQkJICAgICBB
RDc2MDZfUkFOR0VfQ0hfTU9ERShjaCwgdmFsKSk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgYWQ3
NjA2X3dyaXRlX29zX3N3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsIGludCB2YWwpCj4gK3sK
PiArCXN0cnVjdCBhZDc2MDZfc3RhdGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiArCj4g
KwlyZXR1cm4gYWQ3NjA2X3NwaV9yZWdfd3JpdGUoc3QsIEFENzYwNl9PU19NT0RFLCB2YWwpOwo+
ICt9Cj4gKwo+ICBzdGF0aWMgaW50IGFkNzYxNl9zd19tb2RlX2NvbmZpZyhzdHJ1Y3QgaWlvX2Rl
diAqaW5kaW9fZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgYWQ3NjA2X3N0YXRlICpzdCA9IGlpb19wcml2
KGluZGlvX2Rldik7Cj4gQEAgLTE4OSw2ICsyNDYsNDIgQEAgc3RhdGljIGludCBhZDc2MTZfc3df
bW9kZV9jb25maWcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiAgCQkJICAgICAgQUQ3NjE2
X0JVUlNUX01PREUgfCBBRDc2MTZfU0VRRU5fTU9ERSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQg
YWQ3NjA2Ql9zd19tb2RlX2NvbmZpZyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQo+ICt7Cj4g
KwlzdHJ1Y3QgYWQ3NjA2X3N0YXRlICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4gKwl1bnNp
Z25lZCBsb25nIG9zWzNdID0gezF9Owo+ICsKPiArCS8qCj4gKwkgKiBTb2Z0d2FyZSBtb2RlIGlz
IGVuYWJsZWQgd2hlbiBhbGwgdGhyZWUgb3ZlcnNhbXBsaW5nCj4gKwkgKiBwaW5zIGFyZSBzZXQg
dG8gaGlnaC4gSWYgb3ZlcnNhbXBsaW5nIGdwaW9zIGFyZSBkZWZpbmVkCj4gKwkgKiBpbiB0aGUg
ZGV2aWNlIHRyZWUsIHRoZW4gdGhleSBuZWVkIHRvIGJlIHNldCB0byBoaWdoLAo+ICsJICogb3Ro
ZXJ3aXNlLCB0aGV5IG11c3QgYmUgaGFyZHdpcmVkIHRvIFZERAo+ICsJICovCj4gKwlpZiAoc3Qt
PmdwaW9fb3MpIHsKPiArCQlncGlvZF9zZXRfYXJyYXlfdmFsdWUoQVJSQVlfU0laRShvcyksCj4g
KwkJCQkgICAgICBzdC0+Z3Bpb19vcy0+ZGVzYywgc3QtPmdwaW9fb3MtPmluZm8sIG9zKTsKPiAr
CX0KPiArCS8qIE9TIG9mIDEyOCBhbmQgMjU2IGFyZSBhdmFpbGFibGUgb25seSBpbiBzb2Z0d2Fy
ZSBtb2RlICovCj4gKwlzdC0+b3ZlcnNhbXBsaW5nX2F2YWlsID0gYWQ3NjA2Ql9vdmVyc2FtcGxp
bmdfYXZhaWw7Cj4gKwlzdC0+bnVtX29zX3JhdGlvcyA9IEFSUkFZX1NJWkUoYWQ3NjA2Ql9vdmVy
c2FtcGxpbmdfYXZhaWwpOwo+ICsKPiArCXN0LT53cml0ZV9zY2FsZSA9IGFkNzYwNl93cml0ZV9z
Y2FsZV9zdzsKPiArCXN0LT53cml0ZV9vcyA9ICZhZDc2MDZfd3JpdGVfb3Nfc3c7Cj4gKwo+ICsJ
LyogQ29uZmlndXJlIGRldmljZSBzcGkgdG8gb3V0cHV0IG9uIGEgc2luZ2xlIGNoYW5uZWwgKi8K
PiArCXN0LT5ib3BzLT5yZWdfd3JpdGUoc3QsCj4gKwkJCSAgICBBRDc2MDZfQ09ORklHVVJBVElP
Tl9SRUdJU1RFUiwKPiArCQkJICAgIEFENzYwNl9TSU5HTEVfRE9VVCk7Cj4gKwo+ICsJLyoKPiAr
CSAqIFNjYWxlIGNhbiBiZSBjb25maWd1cmVkIGluZGl2aWR1YWxseSBmb3IgZWFjaCBjaGFubmVs
Cj4gKwkgKiBpbiBzb2Z0d2FyZSBtb2RlLgo+ICsJICovCj4gKwlpbmRpb19kZXYtPmNoYW5uZWxz
ID0gYWQ3NjA2Ql9zd19jaGFubmVsczsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBhZDc2MDZfYnVzX29wcyBhZDc2MDZfc3BpX2JvcHMgPSB7Cj4gIAku
cmVhZF9ibG9jayA9IGFkNzYwNl9zcGlfcmVhZF9ibG9jaywKPiAgfTsKPiBAQCAtMjAyLDYgKzI5
NSwxNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFkNzYwNl9idXNfb3BzIGFkNzYxNl9zcGlfYm9w
cyA9IHsKPiAgCS5zd19tb2RlX2NvbmZpZyA9IGFkNzYxNl9zd19tb2RlX2NvbmZpZywKPiAgfTsK
PiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYWQ3NjA2X2J1c19vcHMgYWQ3NjA2Ql9zcGlfYm9w
cyA9IHsKPiArCS5yZWFkX2Jsb2NrID0gYWQ3NjA2X3NwaV9yZWFkX2Jsb2NrLAo+ICsJLnJlZ19y
ZWFkID0gYWQ3NjA2X3NwaV9yZWdfcmVhZCwKPiArCS5yZWdfd3JpdGUgPSBhZDc2MDZfc3BpX3Jl
Z193cml0ZSwKPiArCS53cml0ZV9tYXNrID0gYWQ3NjA2X3NwaV93cml0ZV9tYXNrLAo+ICsJLnJk
X3dyX2NtZCA9IGFkNzYwNkJfc3BpX3JkX3dyX2NtZCwKPiArCS5zd19tb2RlX2NvbmZpZyA9IGFk
NzYwNkJfc3dfbW9kZV9jb25maWcsCj4gK307Cj4gKwo+ICBzdGF0aWMgaW50IGFkNzYwNl9zcGlf
cHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKPiAgewo+ICAJY29uc3Qgc3RydWN0IHNwaV9k
ZXZpY2VfaWQgKmlkID0gc3BpX2dldF9kZXZpY2VfaWQoc3BpKTsKPiBAQCAtMjExLDYgKzMxMyw5
IEBAIHN0YXRpYyBpbnQgYWQ3NjA2X3NwaV9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQo+
ICAJY2FzZSBJRF9BRDc2MTY6Cj4gIAkJYm9wcyA9ICZhZDc2MTZfc3BpX2JvcHM7Cj4gIAkJYnJl
YWs7Cj4gKwljYXNlIElEX0FENzYwNkI6Cj4gKwkJYm9wcyA9ICZhZDc2MDZCX3NwaV9ib3BzOwo+
ICsJCWJyZWFrOwo+ICAJZGVmYXVsdDoKPiAgCQlib3BzID0gJmFkNzYwNl9zcGlfYm9wczsKPiAg
CQlicmVhazsKPiBAQCAtMjI2LDYgKzMzMSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3BpX2Rl
dmljZV9pZCBhZDc2MDZfaWRfdGFibGVbXSA9IHsKPiAgCXsgImFkNzYwNi00IiwgSURfQUQ3NjA2
XzQgfSwKPiAgCXsgImFkNzYwNi02IiwgSURfQUQ3NjA2XzYgfSwKPiAgCXsgImFkNzYwNi04Iiwg
SURfQUQ3NjA2XzggfSwKPiArCXsgImFkNzYwNmIiLCAgSURfQUQ3NjA2QiB9LAo+ICAJeyAiYWQ3
NjE2IiwgICBJRF9BRDc2MTYgfSwKPiAgCXt9Cj4gIH07Cj4gQEAgLTIzNiw2ICszNDIsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBhZDc2MDZfb2ZfbWF0Y2hbXSA9IHsKPiAg
CXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzYwNi00IiB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJh
ZGksYWQ3NjA2LTYiIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gImFkaSxhZDc2MDYtOCIgfSwKPiAr
CXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzYwNmIiIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gImFk
aSxhZDc2MTYiIH0sCj4gIAl7IH0sCj4gIH07CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
