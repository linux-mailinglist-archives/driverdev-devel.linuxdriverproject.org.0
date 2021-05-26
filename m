Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E449391DAB
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 May 2021 19:15:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65ED140525;
	Wed, 26 May 2021 17:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njGJUA-tSaUl; Wed, 26 May 2021 17:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AECAD40510;
	Wed, 26 May 2021 17:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3E2D1BF2C3
 for <devel@linuxdriverproject.org>; Wed, 26 May 2021 17:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFF5C60595
 for <devel@linuxdriverproject.org>; Wed, 26 May 2021 17:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h_nLSB1Fz_Hs for <devel@linuxdriverproject.org>;
 Wed, 26 May 2021 17:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84F5D60008
 for <devel@driverdev.osuosl.org>; Wed, 26 May 2021 17:14:59 +0000 (UTC)
IronPort-SDR: qZIkfrxZnE6yhL4FZNZSl+17hvpbeXNvhgqn4VGUFd6wMUfbXNVSoLYTOmOanxS1RFbKgeBVPQ
 2mX/gW1HYYxw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="199469709"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="199469709"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 10:14:58 -0700
IronPort-SDR: rMn/9UR7w7MAQJDLp/3RxcLw2YnxpI1aQOCKUiXdtLLnZLpVLFCL3enkIKFrPeYR42YtUP0S89
 axXYofxh/3yQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="615036247"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 10:14:49 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with ESMTP id DB3CD2011E;
 Wed, 26 May 2021 20:14:47 +0300 (EEST)
Date: Wed, 26 May 2021 20:14:47 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v5 00/16] Allwinner MIPI CSI-2 support for A31/V3s/A83T
Message-ID: <20210526171447.GF3@paasikivi.fi.intel.com>
References: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
 <f92c0812-7e1c-74e4-602b-7a885ef31454@xs4all.nl>
 <YK5M9PyUB4IfuaNU@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YK5M9PyUB4IfuaNU@aptenodytes>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 kevin.lhopital@hotmail.com, devel@driverdev.osuosl.org,
 Jonathan Corbet <corbet@lwn.net>, Kishon Vijay Abraham I <kishon@ti.com>,
 Chen-Yu Tsai <wens@csie.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUGF1bCwKCk9uIFdlZCwgTWF5IDI2LCAyMDIxIGF0IDAzOjI4OjIwUE0gKzAyMDAsIFBhdWwg
S29jaWFsa293c2tpIHdyb3RlOgo+IEhpLAo+IAo+IE9uIFdlZCAyNiBNYXkgMjEsIDE0OjAwLCBI
YW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiBIaSBQYXVsLAo+ID4gCj4gPiBPbiAxNS8wMS8yMDIxIDIx
OjAxLCBQYXVsIEtvY2lhbGtvd3NraSB3cm90ZToKPiA+ID4gVGhpcyBzZXJpZXMgaW50cm9kdWNl
cyBzdXBwb3J0IGZvciBNSVBJIENTSS0yLCB3aXRoIHRoZSBBMzEgY29udHJvbGxlciB0aGF0IGlz
Cj4gPiA+IGZvdW5kIG9uIG1vc3QgU29DcyAoQTMxLCBWM3MgYW5kIHByb2JhYmx5IFY1KSBhcyB3
ZWxsIGFzIHRoZSBBODNULXNwZWNpZmljCj4gPiA+IGNvbnRyb2xsZXIuIFdoaWxlIHRoZSBmb3Jt
ZXIgdXNlcyB0aGUgc2FtZSBNSVBJIEQtUEhZIHRoYXQgaXMgYWxyZWFkeSBzdXBwb3J0ZWQKPiA+
ID4gZm9yIERTSSwgdGhlIGxhdHRlciBlbWJlZHMgaXRzIG93biBELVBIWS4KPiA+ID4gCj4gPiA+
IEluIG9yZGVyIHRvIGRpc3Rpbmd1aXNoIHRoZSB1c2Ugb2YgdGhlIEQtUEhZIGJldHdlZW4gUngg
bW9kZSAoZm9yIE1JUEkgQ1NJLTIpCj4gPiA+IGFuZCBUeCBtb2RlIChmb3IgTUlQSSBEU0kpLCBh
IHN1Ym1vZGUgaXMgaW50cm9kdWNlZCBmb3IgRC1QSFkgaW4gdGhlIFBIWSBBUEkuCj4gPiA+IFRo
aXMgYWxsb3dzIGFkZGluZyBSeCBzdXBwb3J0IGluIHRoZSBBMzEgRC1QSFkgZHJpdmVyLgo+ID4g
PiAKPiA+ID4gQSBmZXcgY2hhbmdlcyBhbmQgZml4ZXMgYXJlIGFwcGxpZWQgdG8gdGhlIEEzMSBD
U0kgY29udHJvbGxlciBkcml2ZXIsIGluIG9yZGVyCj4gPiA+IHRvIHN1cHBvcnQgdGhlIE1JUEkg
Q1NJLTIgdXNlLWNhc2UuCj4gPiAKPiA+IEJlc2lkZXMgdGhlIGNvbXBpbGUgZXJyb3IgZm9yIHBh
dGNoIDIvMTYsIEkgYWxzbyBnZXQgc2V2ZXJhbCBvdGhlciBjb21waWxlIGVycm9yczoKPiA+IAo+
ID4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmM6IElu
IGZ1bmN0aW9uIOKAmHN1bjZpX2NzaV92NGwyX2Z3bm9kZV9pbml04oCZOgo+ID4gLi9pbmNsdWRl
L21lZGlhL3Y0bDItYXN5bmMuaDoyMDc6MTA6IGVycm9yOiBleHBlY3RlZCBleHByZXNzaW9uIGJl
Zm9yZSDigJgp4oCZIHRva2VuCj4gPiAgIDIwNyB8ICAoKHR5cGUgKikgICAgICAgXAo+ID4gICAg
ICAgfCAgICAgICAgICBeCj4gPiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNz
aS9zdW42aV9jc2kuYzo3OTA6ODogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHY0bDJf
YXN5bmNfbm90aWZpZXJfYWRkX2Z3bm9kZV9yZW1vdGVfc3ViZGV24oCZCj4gPiAgIDc5MCB8ICBy
ZXQgPSB2NGwyX2FzeW5jX25vdGlmaWVyX2FkZF9md25vZGVfcmVtb3RlX3N1YmRldigmY3NpLT5u
b3RpZmllciwKPiA+ICAgICAgIHwgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4gPiAuL2luY2x1ZGUvbWVkaWEvdjRsMi1hc3luYy5oOjIwNzoxMDog
ZXJyb3I6IGV4cGVjdGVkIGV4cHJlc3Npb24gYmVmb3JlIOKAmCnigJkgdG9rZW4KPiA+ICAgMjA3
IHwgICgodHlwZSAqKSAgICAgICBcCj4gPiAgICAgICB8ICAgICAgICAgIF4KPiA+IGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jOjgxMTo4OiBub3RlOiBp
biBleHBhbnNpb24gb2YgbWFjcm8g4oCYdjRsMl9hc3luY19ub3RpZmllcl9hZGRfZndub2RlX3Jl
bW90ZV9zdWJkZXbigJkKPiA+ICAgODExIHwgIHJldCA9IHY0bDJfYXN5bmNfbm90aWZpZXJfYWRk
X2Z3bm9kZV9yZW1vdGVfc3ViZGV2KCZjc2ktPm5vdGlmaWVyLAo+ID4gICAgICAgfCAgICAgICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+IG1ha2VbNV06
ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzI6IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
c3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5vXSBFcnJvciAxCj4gPiBtYWtlWzVdOiAqKiogV2Fp
dGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+ID4gbWFrZVs0XTogKioqIFtzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjI3MjogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEv
cmtpc3AxLWlzcC5vXSBFcnJvciAxCj4gPiBtYWtlWzNdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUu
YnVpbGQ6NTE1OiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMV0gRXJyb3Ig
Mgo+ID4gbWFrZVszXTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KPiA+IElu
IGZpbGUgaW5jbHVkZWQgZnJvbSAuL2luY2x1ZGUvbWVkaWEvdjRsMi1zdWJkZXYuaDoxNCwKPiA+
ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbWVkaWEvdjRsMi1kZXZpY2UuaDoxMywK
PiA+ICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1
bjhpLWE4M3QtbWlwaS1jc2kyL3N1bjhpX2E4M3RfbWlwaV9jc2kyLmM6MTk6Cj4gPiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWE4M3QtbWlwaS1jc2kyL3N1bjhpX2E4M3RfbWlw
aV9jc2kyLmM6IEluIGZ1bmN0aW9uIOKAmHN1bjhpX2E4M3RfbWlwaV9jc2kyX3Y0bDJfc2V0dXDi
gJk6Cj4gPiAuL2luY2x1ZGUvbWVkaWEvdjRsMi1hc3luYy5oOjIwNzoxMDogZXJyb3I6IGV4cGVj
dGVkIGV4cHJlc3Npb24gYmVmb3JlIOKAmCnigJkgdG9rZW4KPiA+ICAgMjA3IHwgICgodHlwZSAq
KSAgICAgICBcCj4gPiAgICAgICB8ICAgICAgICAgIF4KPiA+IGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vc3VueGkvc3VuOGktYTgzdC1taXBpLWNzaTIvc3VuOGlfYTgzdF9taXBpX2NzaTIuYzo0OTU6
ODogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gPiDigJh2NGwyX2FzeW5jX25vdGlmaWVy
X2FkZF9md25vZGVfcmVtb3RlX3N1YmRlduKAmQo+ID4gICA0OTUgfCAgcmV0ID0gdjRsMl9hc3lu
Y19ub3RpZmllcl9hZGRfZndub2RlX3JlbW90ZV9zdWJkZXYobm90aWZpZXIsIGhhbmRsZSwKPiA+
ICAgICAgIHwgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+Cj4gPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL21lZGlhL3Y0bDItc3ViZGV2
Lmg6MTQsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL21lZGlhL3Y0bDItZGV2
aWNlLmg6MTMsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9zdW54aS9zdW42aS1taXBpLWNzaTIvc3VuNmlfbWlwaV9jc2kyLmM6MTg6Cj4gPiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLW1pcGktY3NpMi9zdW42aV9taXBpX2NzaTIuYzog
SW4gZnVuY3Rpb24g4oCYc3VuNmlfbWlwaV9jc2kyX3Y0bDJfc2V0dXDigJk6Cj4gPiAuL2luY2x1
ZGUvbWVkaWEvdjRsMi1hc3luYy5oOjIwNzoxMDogZXJyb3I6IGV4cGVjdGVkIGV4cHJlc3Npb24g
YmVmb3JlIOKAmCnigJkgdG9rZW4KPiA+ICAgMjA3IHwgICgodHlwZSAqKSAgICAgICBcCj4gPiAg
ICAgICB8ICAgICAgICAgIF4KPiA+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmkt
bWlwaS1jc2kyL3N1bjZpX21pcGlfY3NpMi5jOjQzNzo4OiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8g4oCYdjRsMl9hc3luY19ub3RpZmllcl9hZGRfZndub2RlX3JlbW90ZV9zdWJkZXbigJkK
PiA+ICAgNDM3IHwgIHJldCA9IHY0bDJfYXN5bmNfbm90aWZpZXJfYWRkX2Z3bm9kZV9yZW1vdGVf
c3ViZGV2KG5vdGlmaWVyLCBoYW5kbGUsCj4gPiAgICAgICB8ICAgICAgICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gCj4gPiBDYW4geW91IHJlYmFzZSB0
aGlzIHNlcmllcz8KPiAKPiBUaGFua3MgZm9yIGxldHRpbmcgbWUga25vdywgSSdsbCBsb29rIGlu
dG8gdGhpcyBmb3IgdGhlIG5leHQgaXRlcmF0aW9uLgo+IAo+ID4gSSBhbHNvIG5lZWQgQWNrZWQt
YnkncyBmb3IgcGF0Y2hlcyAxLTMgZnJvbSBvbmUgb2YgdGhlIFBIWSBtYWludGFpbmVycywgYnV0
IGFzCj4gPiB5b3UgbWVudGlvbmVkIHRoaXMgbWlnaHQgbmVlZCB0byBjaGFuZ2UgYXMgd2VsbC4K
PiA+IAo+ID4gV2FzIHRoZXJlIGEgcmVhc29uIHdoeSBJIGhhdmVuJ3QgbG9va2VkIGF0IHRoaXMg
YmVmb3JlPyBJdCdzIHF1aXRlIGFuIG9sZCBzZXJpZXMsCj4gPiB1c3VhbGx5IEkgZG9uJ3Qgd2Fp
dCBmb3Igc28gbG9uZy4gSWYgaXQgd2FzIGJlY2F1c2UgSSB3YXMgcmVhbGx5IHNsb3csIHRoZW4g
SQo+ID4gYXBvbG9naXplIGFuZCBwbGVhc2Uga2ljayBtZSBzb29uZXIgaWYgeW91IHNlZSBhIHJl
dmlldyBsaWtlIHRoaXMgdGFrZSBzbyBsb25nLgo+IAo+IEknbSBub3Qgc3VyZSwgYnV0IFNha2Fy
aSBkZWZpbml0ZWx5IHdlbnQgb3ZlciBwcmV2aW91cyBpbnRlcmF0aW9ucyBhbmQgbWFkZQo+IHZh
cmlvdXMgY29tbWVudHMsc28gdGhlIHNlcmllcyBkZWZpbml0ZWx5IGhhc24ndCBnb25lIHVucmV2
aWV3ZWQhCgpNeSBhY2tzIHNlZW0gdG8gYmUgbWlzc2luZy4gTGV0IG1lIGdvIHRocm91Z2ggaXQu
IEFzIGZvciBIYW5zOiBwbGVhc2UgcGluZwppZiB5b3UgZG9uJ3QgZ2V0IHJldmlld3MuCgotLSAK
S2luZCByZWdhcmRzLAoKU2FrYXJpIEFpbHVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
