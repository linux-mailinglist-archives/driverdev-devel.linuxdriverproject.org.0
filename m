Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFBA362394
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Apr 2021 17:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85183418D5;
	Fri, 16 Apr 2021 15:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dBxDf8rRsXsI; Fri, 16 Apr 2021 15:14:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B44EB41895;
	Fri, 16 Apr 2021 15:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82CA61BF2CC
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 15:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EE844039C
 for <devel@linuxdriverproject.org>; Fri, 16 Apr 2021 15:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JxUqVBCjU6ih for <devel@linuxdriverproject.org>;
 Fri, 16 Apr 2021 15:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82A70400C5
 for <devel@driverdev.osuosl.org>; Fri, 16 Apr 2021 15:14:39 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lXQAo-0001kj-On; Fri, 16 Apr 2021 17:14:22 +0200
Message-ID: <529b61b1b1e6030c92a7944c4864246521b2ccdd.camel@pengutronix.de>
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
From: Lucas Stach <l.stach@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org, 
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com,  "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Jacky
 Bai <ping.bai@nxp.com>
Date: Fri, 16 Apr 2021 17:14:18 +0200
In-Reply-To: <ffe9b3f5-94f5-453e-73f0-4b42d0454b63@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <ffe9b3f5-94f5-453e-73f0-4b42d0454b63@collabora.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, cphealy@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QW0gRnJlaXRhZywgZGVtIDE2LjA0LjIwMjEgdW0gMTU6MDggKzAyMDAgc2NocmllYiBCZW5qYW1p
biBHYWlnbmFyZDoKPiBMZSAxNi8wNC8yMDIxIMOgIDEyOjU0LCBMdWNhcyBTdGFjaCBhIMOpY3Jp
dMKgOgo+ID4gQW0gTWl0dHdvY2gsIGRlbSAwNy4wNC4yMDIxIHVtIDA5OjM1ICswMjAwIHNjaHJp
ZWIgQmVuamFtaW4gR2FpZ25hcmQ6Cj4gPiA+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gc2hhcmUg
dGhlIGNvbnRyb2wgaGFyZHdhcmUgYmxvY2sgYmV0d2Vlbgo+ID4gPiBWUFVzIHVzZSBhIHN5c2Nv
biBpbnN0ZWFkIGEgaW9yZW1hcCBpdCBpbiB0aGUgZHJpdmVyLgo+ID4gPiBUbyBrZWVwIHRoZSBj
b21wYXRpYmlsaXR5IHdpdGggb2xkZXIgRFQgaWYgJ254cCxpbXg4bXEtdnB1LWN0cmwnCj4gPiA+
IHBoYW5kbGUgaXMgbm90IGZvdW5kIGxvb2sgYXQgJ2N0cmwnIHJlZy1uYW1lLgo+ID4gPiBXaXRo
IHRoZSBtZXRob2QgaXQgYmVjb21lcyB1c2VsZXNzIHRvIHByb3ZpZGUgYSBsaXN0IG9mIHJlZ2lz
dGVyCj4gPiA+IG5hbWVzIHNvIHJlbW92ZSBpdC4KPiA+IFNvcnJ5IGZvciBwdXR0aW5nIGEgc3Bv
a2UgaW4gdGhlIHdoZWVsIGFmdGVyIG1hbnkgaXRlcmF0aW9ucyBvZiB0aGUKPiA+IHNlcmllcy4K
PiA+IAo+ID4gV2UganVzdCBkaXNjdXNzZWQgYSB3YXkgZm9yd2FyZCBvbiBob3cgdG8gaGFuZGxl
IHRoZSBjbG9ja3MgYW5kIHJlc2V0cwo+ID4gcHJvdmlkZWQgYnkgdGhlIGJsa2N0bCBibG9jayBv
biBpLk1YOE1NIGFuZCBsYXRlciBhbmQgaXQgc2VlbXMgdGhlcmUgaXMKPiA+IGEgY29uc2Vuc3Vz
IG9uIHRyeWluZyB0byBwcm92aWRlIHZpcnR1YWwgcG93ZXIgZG9tYWlucyBmcm9tIGEgYmxrY3Rs
Cj4gPiBkcml2ZXIsIGNvbnRyb2xsaW5nIGNsb2NrcyBhbmQgcmVzZXRzIGZvciB0aGUgZGV2aWNl
cyBpbiB0aGUgcG93ZXIKPiA+IGRvbWFpbi4gSSB3b3VsZCBsaWtlIHRvIGF2b2lkIGludHJvZHVj
aW5nIHlldCBhbm90aGVyIHdheSBvZiBoYW5kbGluZwo+ID4gdGhlIGJsa2N0bCBhbmQgdGh1cyB3
b3VsZCBsaWtlIHRvIGFsaWduIHRoZSBpLk1YOE1RIFZQVSBibGtjdGwgd2l0aAo+ID4gd2hhdCB3
ZSBhcmUgcGxhbm5pbmcgdG8gZG8gb24gdGhlIGxhdGVyIGNoaXAgZ2VuZXJhdGlvbnMuCj4gPiAK
PiA+IENDJ2luZyBKYWNreSBCYWkgYW5kIFBlbmcgRmFuIGZyb20gTlhQLCBhcyB0aGV5IHdlcmUg
Z29pbmcgdG8gZ2l2ZSB0aGlzCj4gPiB2aXJ0dWFsIHBvd2VyIGRvbWFpbiB0aGluZyBhIHNob3Qu
Cj4gCj4gVGhhdCBjb3VsZCByZXBsYWNlIHRoZSAzIGZpcnN0IHBhdGNoZXMgYW5kIER0IHBhdGNo
ZSBvZiB0aGlzIHNlcmllcwo+IGJ1dCB0aGF0IHdpbGwgbm90IGltcGFjdCB0aGUgaGV2YyBwYXJ0
LCBzbyBJIHdvbmRlciBpZiBwdXJlIGhldmMgcGF0Y2hlcwo+IGNvdWxkIGJlIG1lcmdlZCBhbnl3
YXkgPwo+IFRoZXkgYXJlIHJldmlld2VkIGFuZCBkb24ndCBkZXBlbmQgb2YgaG93IHRoZSBjdHJs
IGJsb2NrIGlzIG1hbmFnZWQuCgpJJ20gbm90IHJlYWxseSBpbiBhIHBvc2l0aW9uIHRvIGdpdmUg
YW55IGluZm9ybWVkIG9waW5pb24gYWJvdXQgdGhhdApodmVjIHBhdGNoZXMsIGFzIEkgb25seSBz
a2ltbWVkIHRoZW0sIGJ1dCBJIGRvbid0IHNlZSBhbnkgcmVhc29uIHRvCmRlbGF5IHBhdGNoZXMg
MDQtMTEgZnJvbSB0aGlzIHNlcmllcyB1bnRpbCB0aGUgaS5NWDhNIHBsYXRmb3JtIGlzc3Vlcwph
cmUgc29ydGVkLiBBRkFJQ1MgdGhvc2UgdGhpbmdzIGFyZSB0b3RhbGx5IG9ydGhvZ29uYWwuCgpS
ZWdhcmRzLApMdWNhcwoKPiA+IAo+ID4gUmVnYXJkcywKPiA+IEx1Y2FzCj4gPiAKPiA+ID4gU2ln
bmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9y
YS5jb20+Cj4gPiA+IFJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJv
bml4LmRlPgo+ID4gPiAtLS0KPiA+ID4gdmVyc2lvbiA5Ogo+ID4gPiDCoMKgLSBDb3JyZWN0aW9u
cyBpbiBjb21taXQgbWVzc2FnZQo+ID4gPiAKPiA+ID4gdmVyc2lvbiA3Ogo+ID4gPiDCoMKgLSBB
ZGQgUGhpbGlwcCByZXZpZXdlZC1ieSB0YWcuCj4gPiA+IMKgwqAtIENoYW5nZSBzeXNjb24gcGhh
bmRsZSBuYW1lLgo+ID4gPiDCoMKgCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAK
PiA+ID4gCj4gPiA+IHZlcnNpb24gNToKPiA+ID4gwqDCoC0gdXNlIHN5c2NvbiBpbnN0ZWFkIG9m
IFZQVSByZXNldCBkcml2ZXIuCj4gPiA+IMKgwqAtIGlmIERUIGRvZXNuJ3QgcHJvdmlkZSBzeXNj
b24ga2VlcCBiYWNrd2FyZCBjb21wYXRpYmlsdHkgYnkgdXNpbmcKPiA+ID4gwqDCoMKgwqAnY3Ry
bCcgcmVnLW5hbWUuCj4gPiA+IAo+ID4gPiDCoMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm8uaCAgICAgICB8ICA1ICstCj4gPiA+IMKgwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2lteDhtX3ZwdV9ody5jIHwgNTIgKysrKysrKysrKysrLS0tLS0tLS0tCj4gPiA+IMKg
wqAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
LmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4gPiA+IGluZGV4IDZj
MWI4ODhhYmU3NS4uMzdiOWNlMDRiZDRlIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9oYW50cm8vaGFudHJvLmgKPiA+ID4gQEAgLTEzLDYgKzEzLDcgQEAKPiA+ID4gwqDCoCNkZWZp
bmUgSEFOVFJPX0hfCj4gPiA+IMKgwqAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+
IAo+ID4gPiAKPiA+ID4gwqDCoCNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+
ID4gKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPiA+ID4gwqDCoCNpbmNsdWRlIDxsaW51eC92
aWRlb2RldjIuaD4KPiA+ID4gwqDCoCNpbmNsdWRlIDxsaW51eC93YWl0Lmg+Cj4gPiA+IMKgwqAj
aW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiA+IEBAIC0xNjcsNyArMTY4LDcgQEAgaGFudHJvX3Zk
ZXZfdG9fZnVuYyhzdHJ1Y3QgdmlkZW9fZGV2aWNlICp2ZGV2KQo+ID4gPiDCoMKgwqAqIEByZWdf
YmFzZXM6CQlNYXBwZWQgYWRkcmVzc2VzIG9mIFZQVSByZWdpc3RlcnMuCj4gPiA+IMKgwqDCoCog
QGVuY19iYXNlOgkJTWFwcGVkIGFkZHJlc3Mgb2YgVlBVIGVuY29kZXIgcmVnaXN0ZXIgZm9yIGNv
bnZlbmllbmNlLgo+ID4gPiDCoMKgwqAqIEBkZWNfYmFzZToJCU1hcHBlZCBhZGRyZXNzIG9mIFZQ
VSBkZWNvZGVyIHJlZ2lzdGVyIGZvciBjb252ZW5pZW5jZS4KPiA+ID4gLSAqIEBjdHJsX2Jhc2U6
CQlNYXBwZWQgYWRkcmVzcyBvZiBWUFUgY29udHJvbCBibG9jay4KPiA+ID4gKyAqIEBjdHJsX2Jh
c2U6CQlSZWdtYXAgb2YgVlBVIGNvbnRyb2wgYmxvY2suCj4gPiA+IMKgwqDCoCogQHZwdV9tdXRl
eDoJCU11dGV4IHRvIHN5bmNocm9uaXplIFY0TDIgY2FsbHMuCj4gPiA+IMKgwqDCoCogQGlycWxv
Y2s6CQlTcGlubG9jayB0byBzeW5jaHJvbml6ZSBhY2Nlc3MgdG8gZGF0YSBzdHJ1Y3R1cmVzCj4g
PiA+IMKgwqDCoCoJCQlzaGFyZWQgd2l0aCBpbnRlcnJ1cHQgaGFuZGxlcnMuCj4gPiA+IEBAIC0x
ODYsNyArMTg3LDcgQEAgc3RydWN0IGhhbnRyb19kZXYgewo+ID4gPiDCoMKgCXZvaWQgX19pb21l
bSAqKnJlZ19iYXNlczsKPiA+ID4gwqDCoAl2b2lkIF9faW9tZW0gKmVuY19iYXNlOwo+ID4gPiDC
oMKgCXZvaWQgX19pb21lbSAqZGVjX2Jhc2U7Cj4gPiA+IC0Jdm9pZCBfX2lvbWVtICpjdHJsX2Jh
c2U7Cj4gPiA+ICsJc3RydWN0IHJlZ21hcCAqY3RybF9iYXNlOwo+ID4gPiDCoMKgCj4gPiA+IAo+
ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IMKgwqAJc3RydWN0IG11dGV4
IHZwdV9tdXRleDsJLyogdmlkZW9fZGV2aWNlIGxvY2sgKi8KPiA+ID4gwqDCoAlzcGlubG9ja190
IGlycWxvY2s7Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2lteDhtX3ZwdV9ody5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVf
aHcuYwo+ID4gPiBpbmRleCBjMjIyZGUwNzVlZjQuLjhkMGMzNDI1MjM0YiAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jCj4gPiA+IEBA
IC03LDYgKzcsNyBAQAo+ID4gPiDCoMKgCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4g
PiAKPiA+ID4gCj4gPiA+IMKgwqAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiA+IMKgwqAjaW5j
bHVkZSA8bGludXgvZGVsYXkuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+
Cj4gPiA+IMKgwqAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+
ID4gwqDCoCNpbmNsdWRlICJoYW50cm8uaCIKPiA+ID4gwqDCoCNpbmNsdWRlICJoYW50cm9fanBl
Zy5oIgo+ID4gPiBAQCAtMjQsMzAgKzI1LDI4IEBACj4gPiA+IMKgwqAjZGVmaW5lIENUUkxfRzFf
UFBfRlVTRQkJMHgwYwo+ID4gPiDCoMKgI2RlZmluZSBDVFJMX0cyX0RFQ19GVVNFCTB4MTAKPiA+
ID4gwqDCoAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfY29uZmlnIGN0cmxfcmVnbWFwX2N0cmwgPSB7Cj4g
PiA+ICsJLnJlZ19iaXRzID0gMzIsCj4gPiA+ICsJLnZhbF9iaXRzID0gMzIsCj4gPiA+ICsJLnJl
Z19zdHJpZGUgPSAweDE0LAo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiDCoMKgc3RhdGljIHZvaWQg
aW14OG1fc29mdF9yZXNldChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LCB1MzIgcmVzZXRfYml0cykK
PiA+ID4gwqDCoHsKPiA+ID4gLQl1MzIgdmFsOwo+ID4gPiAtCj4gPiA+IMKgwqAJLyogQXNzZXJ0
ICovCj4gPiA+IC0JdmFsID0gcmVhZGwodnB1LT5jdHJsX2Jhc2UgKyBDVFJMX1NPRlRfUkVTRVQp
Owo+ID4gPiAtCXZhbCAmPSB+cmVzZXRfYml0czsKPiA+ID4gLQl3cml0ZWwodmFsLCB2cHUtPmN0
cmxfYmFzZSArIENUUkxfU09GVF9SRVNFVCk7Cj4gPiA+ICsJcmVnbWFwX3VwZGF0ZV9iaXRzKHZw
dS0+Y3RybF9iYXNlLCBDVFJMX1NPRlRfUkVTRVQsIHJlc2V0X2JpdHMsIDApOwo+ID4gPiDCoMKg
Cj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IMKgwqAJdWRl
bGF5KDIpOwo+ID4gPiDCoMKgCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+
ID4gCj4gPiA+IMKgwqAJLyogUmVsZWFzZSAqLwo+ID4gPiAtCXZhbCA9IHJlYWRsKHZwdS0+Y3Ry
bF9iYXNlICsgQ1RSTF9TT0ZUX1JFU0VUKTsKPiA+ID4gLQl2YWwgfD0gcmVzZXRfYml0czsKPiA+
ID4gLQl3cml0ZWwodmFsLCB2cHUtPmN0cmxfYmFzZSArIENUUkxfU09GVF9SRVNFVCk7Cj4gPiA+
ICsJcmVnbWFwX3VwZGF0ZV9iaXRzKHZwdS0+Y3RybF9iYXNlLCBDVFJMX1NPRlRfUkVTRVQsCj4g
PiA+ICsJCQkgICByZXNldF9iaXRzLCByZXNldF9iaXRzKTsKPiA+ID4gwqDCoH0KPiA+ID4gwqDC
oAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiDCoMKgc3Rh
dGljIHZvaWQgaW14OG1fY2xrX2VuYWJsZShzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LCB1MzIgY2xv
Y2tfYml0cykKPiA+ID4gwqDCoHsKPiA+ID4gLQl1MzIgdmFsOwo+ID4gPiAtCj4gPiA+IC0JdmFs
ID0gcmVhZGwodnB1LT5jdHJsX2Jhc2UgKyBDVFJMX0NMT0NLX0VOQUJMRSk7Cj4gPiA+IC0JdmFs
IHw9IGNsb2NrX2JpdHM7Cj4gPiA+IC0Jd3JpdGVsKHZhbCwgdnB1LT5jdHJsX2Jhc2UgKyBDVFJM
X0NMT0NLX0VOQUJMRSk7Cj4gPiA+ICsJcmVnbWFwX3VwZGF0ZV9iaXRzKHZwdS0+Y3RybF9iYXNl
LCBDVFJMX0NMT0NLX0VOQUJMRSwKPiA+ID4gKwkJCSAgIGNsb2NrX2JpdHMsIGNsb2NrX2JpdHMp
Owo+ID4gPiDCoMKgfQo+ID4gPiDCoMKgCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4g
PiAKPiA+ID4gCj4gPiA+IMKgwqBzdGF0aWMgaW50IGlteDhtcV9ydW50aW1lX3Jlc3VtZShzdHJ1
Y3QgaGFudHJvX2RldiAqdnB1KQo+ID4gPiBAQCAtNjQsOSArNjMsOSBAQCBzdGF0aWMgaW50IGlt
eDhtcV9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgaGFudHJvX2RldiAqdnB1KQo+ID4gPiDCoMKgCWlt
eDhtX2Nsa19lbmFibGUodnB1LCBDTE9DS19HMSB8IENMT0NLX0cyKTsKPiA+ID4gwqDCoAo+ID4g
PiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiDCoMKgCS8qIFNldCB2
YWx1ZXMgb2YgdGhlIGZ1c2UgcmVnaXN0ZXJzICovCj4gPiA+IC0Jd3JpdGVsKDB4ZmZmZmZmZmYs
IHZwdS0+Y3RybF9iYXNlICsgQ1RSTF9HMV9ERUNfRlVTRSk7Cj4gPiA+IC0Jd3JpdGVsKDB4ZmZm
ZmZmZmYsIHZwdS0+Y3RybF9iYXNlICsgQ1RSTF9HMV9QUF9GVVNFKTsKPiA+ID4gLQl3cml0ZWwo
MHhmZmZmZmZmZiwgdnB1LT5jdHJsX2Jhc2UgKyBDVFJMX0cyX0RFQ19GVVNFKTsKPiA+ID4gKwly
ZWdtYXBfd3JpdGUodnB1LT5jdHJsX2Jhc2UsIENUUkxfRzFfREVDX0ZVU0UsIDB4ZmZmZmZmZmYp
Owo+ID4gPiArCXJlZ21hcF93cml0ZSh2cHUtPmN0cmxfYmFzZSwgQ1RSTF9HMV9QUF9GVVNFLCAw
eGZmZmZmZmZmKTsKPiA+ID4gKwlyZWdtYXBfd3JpdGUodnB1LT5jdHJsX2Jhc2UsIENUUkxfRzJf
REVDX0ZVU0UsIDB4ZmZmZmZmZmYpOwo+ID4gPiDCoMKgCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4g
PiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IMKgwqAJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUo
dnB1LT52YXJpYW50LT5udW1fY2xvY2tzLCB2cHUtPmNsb2Nrcyk7Cj4gPiA+IMKgwqAKPiA+ID4g
Cj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gQEAgLTE1MCw4ICsxNDks
MjIgQEAgc3RhdGljIGlycXJldHVybl90IGlteDhtX3ZwdV9nMV9pcnEoaW50IGlycSwgdm9pZCAq
ZGV2X2lkKQo+ID4gPiDCoMKgCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+
ID4gCj4gPiA+IMKgwqBzdGF0aWMgaW50IGlteDhtcV92cHVfaHdfaW5pdChzdHJ1Y3QgaGFudHJv
X2RldiAqdnB1KQo+ID4gPiDCoMKgewo+ID4gPiAtCXZwdS0+ZGVjX2Jhc2UgPSB2cHUtPnJlZ19i
YXNlc1swXTsKPiA+ID4gLQl2cHUtPmN0cmxfYmFzZSA9IHZwdS0+cmVnX2Jhc2VzW3ZwdS0+dmFy
aWFudC0+bnVtX3JlZ3MgLSAxXTsKPiA+ID4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gdnB1
LT5kZXYtPm9mX25vZGU7Cj4gPiA+ICsKPiA+ID4gKwl2cHUtPmN0cmxfYmFzZSA9IHN5c2Nvbl9y
ZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUobnAsICJueHAsaW14OG0tdnB1LWN0cmwiKTsKPiA+ID4g
KwlpZiAoSVNfRVJSKHZwdS0+Y3RybF9iYXNlKSkgewo+ID4gPiArCQlzdHJ1Y3QgcmVzb3VyY2Ug
KnJlczsKPiA+ID4gKwkJdm9pZCBfX2lvbWVtICpjdHJsOwo+ID4gPiArCj4gPiA+ICsJCXJlcyA9
IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUodnB1LT5wZGV2LCBJT1JFU09VUkNFX01FTSwg
ImN0cmwiKTsKPiA+ID4gKwkJY3RybCA9IGRldm1faW9yZW1hcF9yZXNvdXJjZSh2cHUtPmRldiwg
cmVzKTsKPiA+ID4gKwkJaWYgKElTX0VSUihjdHJsKSkKPiA+ID4gKwkJCXJldHVybiBQVFJfRVJS
KGN0cmwpOwo+ID4gPiArCj4gPiA+ICsJCXZwdS0+Y3RybF9iYXNlID0gZGV2bV9yZWdtYXBfaW5p
dF9tbWlvKHZwdS0+ZGV2LCBjdHJsLCAmY3RybF9yZWdtYXBfY3RybCk7Cj4gPiA+ICsJCWlmIChJ
U19FUlIodnB1LT5jdHJsX2Jhc2UpKQo+ID4gPiArCQkJcmV0dXJuIFBUUl9FUlIodnB1LT5jdHJs
X2Jhc2UpOwo+ID4gPiArCX0KPiA+ID4gwqDCoAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAK
PiA+ID4gCj4gPiA+IAo+ID4gPiDCoMKgCXJldHVybiAwOwo+ID4gPiDCoMKgfQo+ID4gPiBAQCAt
MTk4LDcgKzIxMSw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2lycSBpbXg4bXFfaXJx
c1tdID0gewo+ID4gPiDCoMKgfTsKPiA+ID4gwqDCoAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4g
PiAKPiA+ID4gCj4gPiA+IAo+ID4gPiDCoMKgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBpbXg4
bXFfY2xrX25hbWVzW10gPSB7ICJnMSIsICJnMiIsICJidXMiIH07Cj4gPiA+IC1zdGF0aWMgY29u
c3QgY2hhciAqIGNvbnN0IGlteDhtcV9yZWdfbmFtZXNbXSA9IHsgImcxIiwgImcyIiwgImN0cmwi
IH07Cj4gPiA+IMKgwqAKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4gPiAK
PiA+ID4gwqDCoGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBpbXg4bXFfdnB1X3ZhcmlhbnQg
PSB7Cj4gPiA+IMKgwqAJLmRlY19mbXRzID0gaW14OG1fdnB1X2RlY19mbXRzLAo+ID4gPiBAQCAt
MjE1LDYgKzIyNyw0IEBAIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBpbXg4bXFfdnB1X3Zh
cmlhbnQgPSB7Cj4gPiA+IMKgwqAJLm51bV9pcnFzID0gQVJSQVlfU0laRShpbXg4bXFfaXJxcyks
Cj4gPiA+IMKgwqAJLmNsa19uYW1lcyA9IGlteDhtcV9jbGtfbmFtZXMsCj4gPiA+IMKgwqAJLm51
bV9jbG9ja3MgPSBBUlJBWV9TSVpFKGlteDhtcV9jbGtfbmFtZXMpLAo+ID4gPiAtCS5yZWdfbmFt
ZXMgPSBpbXg4bXFfcmVnX25hbWVzLAo+ID4gPiAtCS5udW1fcmVncyA9IEFSUkFZX1NJWkUoaW14
OG1xX3JlZ19uYW1lcykKPiA+ID4gwqDCoH07Cj4gPiAKPiA+IAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
