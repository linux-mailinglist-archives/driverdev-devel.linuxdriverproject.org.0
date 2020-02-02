Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7626E14FDEC
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 16:48:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 211A487327;
	Sun,  2 Feb 2020 15:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HeLcYlvxF1BK; Sun,  2 Feb 2020 15:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 645318733B;
	Sun,  2 Feb 2020 15:48:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31C671BF3BF
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 15:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27E672033D
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 15:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P-pfvp94fm7P for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 15:48:07 +0000 (UTC)
X-Greylist: delayed 00:06:06 by SQLgrey-1.7.6
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 079CD20337
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 15:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8atPoxc/23YsyjIeJ25uVEXGuVq1GzjxYUCHOEU8uZQ=; b=S1SZWzqHtAsDKjBRxrYRLU5bUG
 XimT0bGxP3S53oioRHW9pFqTdfY8DfEb1l0PqKrAnoARRcqg85ZG67///8iX1AtstK9T71M1AJ/D3
 lLcUNyVTecgMNQ41uk2hf5WobtujpzQEHZ5aPIzxr/UQE/1jw0xWmPdAN6QvsWwSAYIuaUUuZKYP0
 8Va7nALIyeVYyib27XeGz02+CKWPcaomVTJQmcVJ9QIlpgKkxRbTsVL8H+KaMV5ti/C+1R67qxNRJ
 0O/YkwFGP3Ly8+TDDwQ7PLxaVdtm9+7DSqhPCudfRGIF/akE/lL0HZ5jLStrpxKvVOkKbq4ovTJuX
 YFFj9bGQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:51619
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iyHTh-0000Yv-1X; Sun, 02 Feb 2020 16:48:05 +0100
Subject: Re: fbtft: 5 years in staging
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
To: OSUOSL Drivers <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
Message-ID: <402be329-9af7-affb-7519-9d507cb19326@tronnes.org>
Date: Sun, 2 Feb 2020 16:48:03 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpEZW4gMDIuMDIuMjAyMCAxNi40MSwgc2tyZXYgTm9yYWxmIFRyw7hubmVzOgo+IEhpLAo+IAo+
IFNpbmNlIEknbSB0aGUgb3JpZ2luYWwgYXV0aG9yIG9mIGZidGZ0IEkgdGhvdWdodCBJJ2QgaGln
aGxpZ2h0IGEgY291cGxlCj4gb2YgaXNzdWVzIHRoYXQncyBwcm9iYWJseSBub3Qgd2VsbCBrbm93
bi4KPiAKPiBSaWdodCBhZnRlciBmYnRmdCB3YXMgYWRkZWQsIGZiZGV2IHdhcyBjbG9zZWQgZm9y
IG5ldyBkcml2ZXJzWzFdIGFuZAo+IHRoZSBmYmRldiBtYWludGFpbmVyIHdhbnRlZCB0byByZW1v
dmUgZmJ0ZnQgYXMgYSBjb25zZXF1ZW5jZSBvZiB0aGF0Cj4gZGVjaXNpb24sIGJ1dCBHcmVnIEtI
IHNhaWQgaGUnZCBrZWVwIGZidGZ0IGRyaXZlcnMgaW4gc3RhZ2luZwo+ICJ1bnRpbCBhIG1hdGNo
aW5nIERSTSBkcml2ZXIgaXMgcHJlc2VudCBpbiB0aGUgdHJlZSJbMl0uCj4gCj4gVGhlcmUgYXJl
IDIgaXNzdWVzIHdydCB0aGUgZ29hbCBvZiBtYWtpbmcgYSBtYXRjaGluZyBEUk0gZHJpdmVyCj4g
KHN0cmljdGx5IHNwZWFraW5nKS4gT25lIGlzIGltcG9zc2libGUgdG8gZG8gKHBvbGljeSksIHRo
ZSBvdGhlciBpcwo+IHVubGlrZWx5IHRvIGhhcHBlbjoKPiAKPiAxLiBEZXZpY2UgVHJlZSAnaW5p
dCcgcHJvcGVydHkKPiAKPiBBbGwgZmJ0ZnQgZHJpdmVycyBoYXZlIGNvbnRyb2xsZXIgc2V0dXAg
Y29kZSB0aGF0IG1hdGNoZXMgb25lCj4gcGFydGljdWxhciBkaXNwbGF5IHBhbmVsLiBGcm9tIHRo
ZSBzdGFydCBvZiBmYnRmdCBpdCB3YXMgcG9zc2libGUgdG8KPiBvdmVycmlkZSB0aGlzIHVzaW5n
IHBsYXRmb3JtIGRhdGEuIExhdGVyIHdoZW4gRGV2aWNlIFRyZWUgc3VwcG9ydCB3YXMKPiBhZGRl
ZCwgYW4gJ2luaXQ9JyBwcm9wZXJ0eSB0byBkbyB0aGUgc2FtZSB3YXMgYWRkZWQuCj4gCj4gRXhh
bXBsZToKPiAJaW5pdCA9IDwweDEwMDAwZTUgMHg3OEYwCj4gCQkweDEwMDAwMDEgMHgwMTAwCj4g
CQkweDIwMDAwMzIKPiAJCTB4MTAwMDAwNyAweDAxMzM+Owo+IAo+IFRoaXMgdHJhbnNsYXRlcyB0
bzoKPiAJcmVnaXN0ZXJfd3JpdGUoMHgwMGU1LCAweDc4RjApOwo+IAlyZWdpc3Rlcl93cml0ZSgw
eDAwMDEsIDB4MDEwMCk7Cj4gCW1kZWxheSgzMik7Cj4gCXJlZ2lzdGVyX3dyaXRlKDB4MDAwNywg
MHgwMTMzKTsKPiAKPiBBRkFJVSBzZXR0aW5nIHJlZ2lzdGVyIHZhbHVlcyBmcm9tIERUIGlzIGEg
bm8tZ28sIHNvIHRoaXMgZnVuY3Rpb25hbGl0eQo+IGNhbid0IGJlIHJlcGxpY2F0ZWQgaW4gYSBE
Uk0gZHJpdmVyLiBNYW55IGRpc3BsYXlzIGFyZSBtYWRlIHRvIHdvcmsKPiB1c2luZyB0aGlzIG1l
Y2hhbmlzbSwgaW4gcGFydGljdWxhciBpbGk5MzQxIGJhc2VkIG9uZXMuCj4gCj4gMi4gUGFyYWxs
ZWwgYnVzIGludGVyZmFjZQo+IAo+IEFsbCBmYnRmdCBkcml2ZXJzIHN1cHBvcnQgYm90aCBhIFNQ
SSBhbmQgYSBwYXJhbGxlbCBidXMgaW50ZXJmYWNlCj4gdGhyb3VnaCB0aGUgZmJ0ZnQgaGVscGVy
IG1vZHVsZS4gTWFueSAobm90IGFsbCkgY29udHJvbGxlcnMgc3VwcG9ydCBtb3JlCj4gdGhhbiBv
bmUgaW50ZXJmYWNlLiBUaGUgcGFyYWxsZWwgYnVzIHN1cHBvcnQgd2FzIGFkZGVkIHRvIGZidGZ0
IGluIGl0cwo+IGVhcmx5IGRheXMgd2hlbiBub3QgbWFueSBTUEkgZGlzcGxheXMgd2VyZSBhdmFp
bGFibGUgKG5vd2FkYXlzIHRoZXJlJ3MKPiBsb3RzIHRvIGNob29zZSBmcm9tKS4gZmJ0ZnQgdXNl
cyBiaXRiYW5naW5nIHRvIGRyaXZlIHRoZSBwYXJhbGxlbAo+IGludGVyZmFjZSBzbyBpdCdzIHJl
YWxseSBzbG93LCBldmVuIG1vcmUgc2xvdyB0aGFuIFNQSSBhbmQgU1BJIHdpdGggRE1BCj4gYmVh
dHMgaXQgdGhvcm91Z2hseS4gSSBrbm93IHRoZXJlIGFyZSBwZW9wbGUgdGhhdCB1c2UgdGhlIHBh
cmFsZWxsIGJ1cwo+IHN1cHBvcnQsIGJ1dCBJIGRvbid0IHNlZSBtdWNoIHBvaW50IGluIGl0IHVu
bGVzcyB3ZSBnZXQgYSBwYXJhbGxlbCBidXMKPiBzdWJzeXN0ZW0gdGhhdCBjYW4gdXNlIHRoZSBk
ZWRpY2F0ZWQgaHcgb24gY2VydGFpbiBTb0MncyAoQmVhZ2xlYm9uZSwKPiBQaSkuIEFuZCB0aG9z
ZSBTT0MncyBtb3N0IGxpa2VseSBoYXZlIGEgcGFyYWxsZWwgdmlkZW8vUkdCIGJ1cyBhcyB3ZWxs
LAo+IHdoaWNoIElNTyBpcyBhIG11Y2ggYmV0dGVyIG9wdGlvbiBmb3IgYSBwYW5lbC4KPiAKPiAK
PiBUaGUgZm9sbG93aW5nIGRyaXZlcnMgaGF2ZSBEUk0gY291bnRlcnBhcnRzIHRoYXQgaGF2ZSB0
aGUgc2FtZSBwYW5lbAo+IHNldHVwIGNvZGU6Cj4gCj4gLSBmYl9oeDgzNTdkLmM6IGRyaXZlcnMv
Z3B1L2RybS90aW55L2h4ODM1N2QuYwo+IC0gZmJfaWxpOTM0MS5jOiBkcml2ZXJzL2dwdS9kcm0v
dGlueS9taTAyODNxdC5jCj4gLSBmYl9zdDc3MzVyLmM6IGRyaXZlcnMvZ3B1L2RybS90aW55L3N0
NzczNXIuYwo+IC0gZmJfaWxpOTQ4Ni5jOiBQYXRjaGVzIGFyZSBwb3N0ZWQgb24gZHJpLWRldmVs
WzNdCj4gCj4gQnV0IHRoZXkgZG9uJ3Qgc3VwcG9ydCBhbGwgcGFuZWxzIGJhc2VkIG9uIHRoYXQg
Y29udHJvbGxlciBhbmQgdGhleQo+IGRvbid0IGhhdmUgcGFyYWxsZWwgYnVzIHN1cHBvcnQuCj4g
Cj4gVGhlcmUgaXMgYWN0dWFsbHkgYWxzbyBhbm90aGVyIG9ic3RhY2xlIGZvciBjb252ZXJzaW9u
IGFuZCB0aGF0IGlzLCBzb21lCj4gb2YgdGhlIGRpc3BsYXlzIChmb3Igd2hpY2ggdGhlcmUgaXMg
YnVpbHRpbiBkcml2ZXIgc3VwcG9ydCkgbWlnaHQgYmUKPiBpbXBvc3NpYmxlIHRvIHNvdXJjZSBl
eGNlcHQgYXMgc2Vjb25kIGhhbmQuIEFuZCBpdCdzIG5vdCBhbHdheXMgb2J2aW91cwo+IHdoaWNo
IHBhbmVsIGlzIHN1cHBvcnRlZCBieSBhIGNlcnRhaW4gZHJpdmVyLgo+IEF0IGxlYXN0IHRoZSBk
aXNwbGF5cyBzdXBwb3J0ZWQgYnkgdGhlc2UgZHJpdmVycyBhcmUgbGlzdGVkIGFzCj4gZGlzY29u
dGludWVkIG9uIHRoZSBmYnRmdCB3aWtpWzRdOgo+IC0gZmJfaHg4MzQwYm4uYwo+IC0gZmJfaHg4
MzQ3ZC5jCj4gLSBmYl9pbGk5MzIwCj4gCj4gVGhpcyBvbmUgbmV2ZXIgbWFkZSBpdCBmcm9tIGEg
cHJvdG90eXBlIHRvIGFuIGFjdHVhbCBwcm9kdWN0LCBiZWNhdXNlCj4gaXQgd2FzIHRvbyBzbG93
Ogo+IC0gZmJfd2F0dGVyb3R0LmMKPiAKPiBJIGhhdmUgbm8gcGxhbnMgdG8gY29udmVydCBmYnRm
dCBkcml2ZXJzIG15c2VsZiwgYnV0IEkgZmlndXJlZCBhIDUgeWVhcgo+IGFubml2ZXJzYXJ5IHdh
cyBhIGdvb2QgZXhjdXNlIGZvciBhIHN0YXR1cyB1cGRhdGUuCgpTb21lIGluZm8gZm9yIGFueW9u
ZSB3YW50aW5nIHRvIGNvbnZlcnQgZmJ0ZnQgZHJpdmVyczoKClRoZSBmb2xsb3dpbmcgZHJpdmVy
cyBhcmUgTUlQSSBEQkkgY29tcGF0aWJsZSAobGlrZSB0aGUgb25lcyBhbHJlYWR5CmNvbnZlcnRl
ZCkgd2hpY2ggbWVhbnMgdGhleSBoYXZlIHRoZSBzYW1lIHByb3RvY29sIGFuZCBzaGFyZSBjZXJ0
YWluCmNvbW1hbmRzLiBUaGV5IGFyZSB2ZXJ5IGVhc3kgdG8gcG9ydCBvdmVyIGZvciBhbnlvbmUg
d2l0aCBhY2Nlc3MgdG8Kc3VjaCBhIGRpc3BsYXkuCgotIGZiX2h4ODM0MGJuLmMKLSBmYl9oeDgz
NTNkLmMKLSBmYl9pbGk5MzQwLmMKLSBmYl9pbGk5NDgxLmMKLSBmYl9zNmQwMmExLmMKLSBmYl9z
dDc3ODl2LmMKLSBmYl90aW55bGNkLmMgKHByb2JhYmx5IGhhcyBhbiBpbGk5NDg2IGNoaXApCi0g
ZmJfaWxpOTE2My5jCgoobGlicmFyeTogZHJpdmVycy9ncHUvZHJtL2RybV9taXBpX2RiaS5jKQoK
VGhlcmUgaXMgYWxzbyBhbiBvdXQtb2YtdHJlZSBpbGk5MzI1IGRyaXZlciB0aGF0IHN1cHBvcnRz
IHRoZSBwcm90b2NvbAp1c2VkIGJ5IGZiX2lsaTkzMjAgYW5kIGZiX2lsaTkzMjUsIGJ1dCBpdCBk
b2Vzbid0IHN1cHBvcnQgdGhlaXIgcGFuZWxzCihhdCBsZWFzdCB0aGUgcmVnaXN0ZXIgdmFsdWVz
IGRpZmZlcik6Cmh0dHBzOi8vZ2l0aHViLmNvbS9ub3Ryby90aW55ZHJtL2Jsb2IvbWFzdGVyL2ls
aTkzMjUuYwoKPiAKPiBOb3JhbGYuCj4gCj4gWzFdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE1
LzkvMjQvMjUzCj4gWzJdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE2LzExLzIzLzE0Ngo+IFsz
XSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcyNjQ1Lwo+IFs0XSBo
dHRwczovL2dpdGh1Yi5jb20vbm90cm8vZmJ0ZnQvd2lraS9MQ0QtTW9kdWxlcyNkaXNjb250aW51
ZWQtcHJvZHVjdHMKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
