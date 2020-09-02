Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4198625B2C6
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 19:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8ACB86AC9;
	Wed,  2 Sep 2020 17:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rxneRGz4PzfE; Wed,  2 Sep 2020 17:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C71285593;
	Wed,  2 Sep 2020 17:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 505041BF847
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 17:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 47D39871B3
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 17:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UXW2MO4MhsdW for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 17:14:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4EF0A86F7D
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 17:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=AVRtAc+RwJraZsE01wT7p+JsR1tlFhWCbVeaGOLOdfU=; b=UngeA/+KKa/hS0qCycBAlxlKwV
 Ap9XtqQs3YHki9Vc/x7yUPVgNcDf7RyXdSuJW+Ezv0U/Y8PV2WO4fw9OXCSmSxsNdMYYTNeDm+3yY
 DzS0pQkNhTGcogCGQYLk6BM8YT+BE5y5G2Js/6bQLNGuXXP6VZu4rhZIoxBLd0Jo2Rs61LzBwG3Gj
 MYl13j4a+9H9SlO23+XH/TyWrHaQQLmEo8GRdMm/wShYYuyrOJcML/7eOwOH/eOw2XXy9NN4hTelz
 R4i9p11bwbnN++klbtZwjJ2Rpsaztr31GuFAVdqX/u3Beu6j3GSa0TQbVyyODqdmsiVyF73dsjEO4
 3zMv1QIA==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDWLD-00024w-Nd; Wed, 02 Sep 2020 17:14:36 +0000
Subject: Re: [PATCH v2 2/2] staging: gdm724x: gdm_tty: replaced macro with a
 function
To: "antoni.przybylik@wp.pl" <antoni.przybylik@wp.pl>
References: <20200902161627.64686-1-antoni.przybylik@wp.pl>
 <14c3b5c1-a5d8-3843-6538-5f76c4b8d6df@infradead.org>
 <eb24f7d2-0460-dd3b-1ab3-a9748fa193fe@wp.pl>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <bb3cabad-f3ea-dcaa-9993-119099038281@infradead.org>
Date: Wed, 2 Sep 2020 10:14:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <eb24f7d2-0460-dd3b-1ab3-a9748fa193fe@wp.pl>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOS8yLzIwIDEwOjA3IEFNLCBhbnRvbmkucHJ6eWJ5bGlrQHdwLnBsIHdyb3RlOgo+IE9uIDAy
LjA5LjIwMjAgMTg6MjEsIFJhbmR5IER1bmxhcCB3cm90ZToKPj4gT24gOS8yLzIwIDk6MTYgQU0s
IEFudG9uaSBQcnp5YnlsaWsgd3JvdGU6Cj4+PiBDaGFuZ2VkIHJldHVybiB0eXBlIHRvIGJvb2wg
YW5kIHJlbW92ZWQgaW5saW5lIHNwZWNpZmllci4gQWxzbyBhZGRlZAo+Pj4gwqAgc3RhdGljIHNw
ZWNpZmllci4KPj4gd2h5IHJlbW92ZSB0aGUgaW5saW5lIHNwZWNpZmllcj8KPiAKPiBHcmVnIEtI
IHdyb3RlIHRvIG1lOgo+IAo+IEFuZCByZWFsbHksIG5vIG5lZWQgdG8gbWFrZSBpdCBpbmxpbmUs
IGp1c3QgbWFrZSBpdCBhIG5vcm1hbCBmdW5jdGlvbgo+IGFuZCB0aGUgY29tcGlsZXIgd2lsbCBp
bmxpbmUgaXQgaWYgbmVlZGVkLgo+IAo+PiB0aGFua3MuCgpPSywgdGhhbmtzLgpTb21ldGltZXMg
dGhlIGNvbXBpbGVyIHdpbGwgYWxzbyBpZ25vcmUgaW5saW5lIGlmIGl0IHdhbnRzIHRvLgpUaGF0
J3Mgd2h5IHdlIGhhdmUgdG8gdXNlIF9fYWx3YXlzX2lubGluZS4KCj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBBbnRvbmkgUHJ6eWJ5bGlrIDxhbnRvbmkucHJ6eWJ5bGlrQHdwLnBsPgo+Pj4gLS0tCj4+
PiDCoCBkcml2ZXJzL3N0YWdpbmcvZ2RtNzI0eC9nZG1fdHR5LmMgfCAyICstCj4+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2dkbTcyNHgvZ2RtX3R0eS5jIGIvZHJpdmVycy9zdGFnaW5n
L2dkbTcyNHgvZ2RtX3R0eS5jCj4+PiBpbmRleCAzNGExM2Q5OGMwMjkuLjE3OWZjOWI5NDAwYiAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9nZG03MjR4L2dkbV90dHkuYwo+Pj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL2dkbTcyNHgvZ2RtX3R0eS5jCj4+PiBAQCAtMzQsNyArMzQsNyBA
QCBzdGF0aWMgREVGSU5FX01VVEVYKGdkbV90YWJsZV9sb2NrKTsKPj4+IMKgIHN0YXRpYyBjb25z
dCBjaGFyICpEUklWRVJfU1RSSU5HW1RUWV9NQVhfQ09VTlRdID0geyJHQ1RBVEMiLCAiR0NURE0i
fTsKPj4+IMKgIHN0YXRpYyBjaGFyICpERVZJQ0VfU1RSSU5HW1RUWV9NQVhfQ09VTlRdID0geyJH
Q1QtQVRDIiwgIkdDVC1ETSJ9Owo+Pj4gwqAgLWlubGluZSBpbnQgZ2RtX3R0eV9yZWFkeShzdHJ1
Y3QgZ2RtICpnZG0pCj4+PiArc3RhdGljIGJvb2wgZ2RtX3R0eV9yZWFkeShzdHJ1Y3QgZ2RtICpn
ZG0pCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHJldHVybiAoZ2RtICYmIGdkbS0+dHR5X2RldiAm
JiBnZG0tPnBvcnQuY291bnQpOwo+Pj4gwqAgfQo+Pj4KPj4KPiBBbnRvbmkgUHJ6eWJ5bGlrCgoK
LS0gCn5SYW5keQpSZXBvcnRlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5v
cmc+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
