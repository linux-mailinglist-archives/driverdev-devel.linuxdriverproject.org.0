Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F5B103DE6
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 16:04:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B79F5885CB;
	Wed, 20 Nov 2019 15:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gkOwJ6rNViP; Wed, 20 Nov 2019 15:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DE058854A;
	Wed, 20 Nov 2019 15:04:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAA0F1BF82F
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C58E28854A
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GIkEDu8O4dSR for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 15:04:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F275884C5
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201810;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1OVuAFWz7RQebHm+a+UrYAis22Cptt6u8aV1ZyfKVxE=; b=rQ2zotLhwLql8hnyr97jrbwvHH
 i6vSNykoscOUVtBgYvK9WLIEzaw4WcfZQzvDWwbhLJZ6Uv6IXKwq6Nl45U/9Z6JM5QyLsTo+9EzIo
 ad4OKx2zF8bzW+V2y+BjW4YsoxcXMgR2xL6+lCLKiplrSG7a3U9dhkStdHfl4C/5tcWvBMhdUJi1y
 LmgI5W8+30krKhEj3+6PKzSJVcfPkRtFrZhb36fe7kTR8Larcy9BVnc/G33jg6JXCDvqcBUUxTASy
 KvR4AgWXazFqdTpbC4YIGQ0bPgHDNSoCfv6jsdEvwXdWg5qGW+q9/vKbccNXZjbDqr3ed9kxzMof5
 qb/2GrHw==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:53521
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iXRWl-0003I3-P0; Wed, 20 Nov 2019 16:04:19 +0100
Subject: Re: [PATCH v1 3/5] fbtft: Drop useless #ifdef CONFIG_OF and dead code
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 Nishad Kamdar <nishadkamdar@gmail.com>, devel@driverdev.osuosl.org
References: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
 <20191120095716.26628-3-andriy.shevchenko@linux.intel.com>
 <37435de0-873d-d20c-ac66-420ba91356fd@tronnes.org>
Message-ID: <676c3f0e-81b7-d9be-8b37-a38eb3d762fb@tronnes.org>
Date: Wed, 20 Nov 2019 16:04:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <37435de0-873d-d20c-ac66-420ba91356fd@tronnes.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpEZW4gMjAuMTEuMjAxOSAxNS40Mywgc2tyZXYgTm9yYWxmIFRyw7hubmVzOgo+IAo+IAo+IERl
biAyMC4xMS4yMDE5IDEwLjU3LCBza3JldiBBbmR5IFNoZXZjaGVua286Cj4+IEZpcnN0IG9mIGFs
bCB0aGVyZSBpcyBubyBuZWVkIHRvIGd1YXJkIEdQSU8gcmVxdWVzdCBieSBDT05GSUdfT0YuCj4+
IEl0IHdvcmtzIGZvciBldmVyeWJvZHkgaW5kZXBlbmRlbnRseSBvbiByZXNvdXJjZSBwcm92aWRl
ci4gV2hpbGUgaGVyZSwKPj4gcmVuYW1lIHRoZSBmdW5jdGlvbiB0byByZWZsZWN0IHRoZSBhYm92
ZS4KPj4KPj4gTW9yZW92ZXIsIHNpbmNlIHdlIGhhdmUgYSBnbG9iYWwgZGVwZW5kZW5jeSB0byBP
RiwgdGhlIHJlc3Qgb2YKPj4gY29uZGl0aW9uYWwgY29tcGlsYXRpb24gaXMgbm8tb3AsIGkuZS4g
aXQncyBhbHdheXMgYmUgdHJ1ZS4KPj4KPj4gRHVlIHRvIGFib3ZlIGRyb3AgdXNlbGVzcyAjaWZk
ZWYgQ09ORklHX09GIGFuZCB0aGVyZWZvcmUgZGVhZCBjb2RlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4KPj4g
LS0tCj4+ICBkcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jIHwgMTkgKystLS0tLS0t
LS0tLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29y
ZS5jIGIvZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYwo+IAo+IDxzbmlwPgo+IAo+
PiBAQCAtMTE4NCwxNyArMTE3NiwxMCBAQCBzdGF0aWMgc3RydWN0IGZidGZ0X3BsYXRmb3JtX2Rh
dGEgKmZidGZ0X3Byb2JlX2R0KHN0cnVjdCBkZXZpY2UgKmRldikKPj4gIAkJcGRhdGEtPmRpc3Bs
YXkuYmFja2xpZ2h0ID0gMTsKPj4gIAlpZiAob2ZfZmluZF9wcm9wZXJ0eShub2RlLCAiaW5pdCIs
IE5VTEwpKQo+PiAgCQlwZGF0YS0+ZGlzcGxheS5mYnRmdG9wcy5pbml0X2Rpc3BsYXkgPSBmYnRm
dF9pbml0X2Rpc3BsYXlfZHQ7Cj4+IC0JcGRhdGEtPmRpc3BsYXkuZmJ0ZnRvcHMucmVxdWVzdF9n
cGlvcyA9IGZidGZ0X3JlcXVlc3RfZ3Bpb3NfZHQ7Cj4+ICsJcGRhdGEtPmRpc3BsYXkuZmJ0ZnRv
cHMucmVxdWVzdF9ncGlvcyA9IGZidGZ0X3JlcXVlc3RfZ3Bpb3M7Cj4gCj4gWW91IGNhbiBkaXRj
aCB0aGUgLnJlcXVlc3RfZ3Bpb3MgY2FsbGJhY2sgYW5kIGNhbGwgZmJ0ZnRfcmVxdWVzdF9ncGlv
cygpCj4gZGlyZWN0bHkgaW4gZmJ0ZnRfcmVnaXN0ZXJfZnJhbWVidWZmZXIoKS4gVGhhdCB3aWxs
IG1ha2UgaXQgc2FmZSB0byBkcm9wCj4gdGhlIE9GIGRlcGVuZGVuY3ksIG90aGVyd2lzZSAucmVx
dWVzdF9ncGlvcyB3aWxsIGJlIE5VTEwgaW4gdGhlIG5vbi1EVAo+IGNhc2UuIFRoaXMgaXMgb25l
IG9mIHRoZSBidWdzIHRoYXQgZm9sbHdlZCB0aGUgZ3BpbyByZWZhY3RvcmluZy4KClJlYWxseSBk
aWZmaWN1bHQgdG8gcmVhZCB0aGlzIGZidGZ0IGNvZGUgKHRoYXQgSSB3cm90ZS4uLikuClRoZSBO
VUxMIGRlcmVmIGNhbiBvbmx5IGhhcHBlbiB3aGVuIGRldi0+cGxhdGZvcm1fZGF0YSBpcyBzZXQu
IFRoYXQKY2FuJ3QgaGFwcGVuLCBpbiBtYWlubGluZSBhdCBsZWFzdCwgbm93IHRoYXQgZmJ0ZnRf
ZGV2aWNlIGlzIGdvbmUuCgo+IAo+IFlvdSBjYW4gYWxzbyBkaXRjaCB0aGUgLnJlcXVlc3RfZ3Bp
b3NfbWF0Y2ggY2FsbGJhY2sgaWYgeW91IHdhbnQsIGl0Cj4gaXNuJ3QgY2FsbGVkIGFueW1vcmUg
KGl0IGlzIHNldCBpbiBmYl9hZ20xMjY0ay1mbCkuCj4gCj4gTm9yYWxmLgo+IAo+PiAgCj4+ICAJ
cmV0dXJuIHBkYXRhOwo+PiAgfQo+PiAtI2Vsc2UKPj4gLXN0YXRpYyBzdHJ1Y3QgZmJ0ZnRfcGxh
dGZvcm1fZGF0YSAqZmJ0ZnRfcHJvYmVfZHQoc3RydWN0IGRldmljZSAqZGV2KQo+PiAtewo+PiAt
CWRldl9lcnIoZGV2LCAiTWlzc2luZyBwbGF0Zm9ybSBkYXRhXG4iKTsKPj4gLQlyZXR1cm4gRVJS
X1BUUigtRUlOVkFMKTsKPj4gLX0KPj4gLSNlbmRpZgo+PiAgCj4+ICAvKioKPj4gICAqIGZidGZ0
X3Byb2JlX2NvbW1vbigpIC0gR2VuZXJpYyBkZXZpY2UgcHJvYmUoKSBoZWxwZXIgZnVuY3Rpb24K
Pj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRy
aS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
