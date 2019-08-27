Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8FC9EF3B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 17:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 27F08875BD;
	Tue, 27 Aug 2019 15:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jDhbVSGaUYi; Tue, 27 Aug 2019 15:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0B6D875A0;
	Tue, 27 Aug 2019 15:43:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D9DA1BF576
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 15:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99A4123067
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 15:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pIj-s3ovSmAJ for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:43:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0CB212305A
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 15:43:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60B8720578;
 Tue, 27 Aug 2019 15:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566920625;
 bh=5CBLLXyz5mH+6UkaFr1muXce8BcgOenSUC9ZoiZKHZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VUm+QyTCs6wjxwUWE7sioTbZaEwQ24NoCiZ9H40FcsXD4YpEsZMBaQQpYy2d/jdco
 OZ2ZSNWbTkMetqN+IkRVEJZLoRE3dfsctPnJCv+TZXbMOTMwPhxntk83s5GYV87oMx
 nA38C4c6HALcWBvw0G8xraMd62aKyt175ppzSym8=
Date: Tue, 27 Aug 2019 17:43:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 1/9] staging: greybus: fix up SPDX comment in .h files
Message-ID: <20190827154343.GE534@kroah.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-2-gregkh@linuxfoundation.org>
 <20190826055119.4pbmf5ape224giwz@vireshk-i7>
 <20190827075802.GA29204@kroah.com>
 <20190827092036.GA138083@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827092036.GA138083@architecture4>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, yuchao0@huawei.com, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Viresh Kumar <vireshk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBdWcgMjcsIDIwMTkgYXQgMDU6MjA6MzZQTSArMDgwMCwgR2FvIFhpYW5nIHdyb3Rl
Ogo+IEhpIEdyZWcsCj4gCj4gT24gVHVlLCBBdWcgMjcsIDIwMTkgYXQgMDk6NTg6MDJBTSArMDIw
MCwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4gT24gTW9uLCBBdWcgMjYsIDIwMTkgYXQg
MTE6MjE6MTlBTSArMDUzMCwgVmlyZXNoIEt1bWFyIHdyb3RlOgo+ID4gPiBPbiAyNS0wOC0xOSwg
MDc6NTQsIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPiA+ID4gPiBXaGVuIHRoZXNlIGZpbGVz
IG9yaWdpbmFsbHkgZ290IGFuIFNQRFggdGFnLCBJIHVzZWQgLy8gaW5zdGVhZCBvZiAvKiAqLwo+
ID4gPiA+IGZvciB0aGUgLmggZmlsZXMuICBGaXggdGhpcyB1cCB0byB1c2UgLy8gcHJvcGVybHku
Cj4gPiA+ID4gCj4gPiA+ID4gQ2M6IFZpcmVzaCBLdW1hciA8dmlyZXNoa0BrZXJuZWwub3JnPgo+
ID4gPiA+IENjOiBKb2hhbiBIb3ZvbGQgPGpvaGFuQGtlcm5lbC5vcmc+Cj4gPiA+ID4gQ2M6IEFs
ZXggRWxkZXIgPGVsZGVyQGtlcm5lbC5vcmc+Cj4gPiA+ID4gQ2M6IGdyZXlidXMtZGV2QGxpc3Rz
LmxpbmFyby5vcmcKPiA+ID4gPiBDYzogZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcKPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9maXJt
d2FyZS5oICAgICAgICAgICAgICAgfCAyICstCj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5
YnVzL2diLWNhbWVyYS5oICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4gPiAgZHJpdmVycy9zdGFn
aW5nL2dyZXlidXMvZ2JwaHkuaCAgICAgICAgICAgICAgICAgIHwgMiArLQo+ID4gPiA+ICBkcml2
ZXJzL3N0YWdpbmcvZ3JleWJ1cy9ncmV5YnVzLmggICAgICAgICAgICAgICAgfCAyICstCj4gPiA+
ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dyZXlidXNfYXV0aGVudGljYXRpb24uaCB8IDIg
Ky0KPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvZ3JleWJ1c19maXJtd2FyZS5oICAg
ICAgIHwgMiArLQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9ncmV5YnVzX21hbmlm
ZXN0LmggICAgICAgfCAyICstCj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL2dyZXli
dXNfcHJvdG9jb2xzLmggICAgICB8IDIgKy0KPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5nL2dyZXli
dXMvZ3JleWJ1c190cmFjZS5oICAgICAgICAgIHwgMiArLQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdp
bmcvZ3JleWJ1cy9oZC5oICAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gPiA+ID4gIGRyaXZl
cnMvc3RhZ2luZy9ncmV5YnVzL2ludGVyZmFjZS5oICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4g
PiAgZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvbWFuaWZlc3QuaCAgICAgICAgICAgICAgIHwgMiAr
LQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9tb2R1bGUuaCAgICAgICAgICAgICAg
ICAgfCAyICstCj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9ncmV5YnVzL29wZXJhdGlvbi5oICAg
ICAgICAgICAgICB8IDIgKy0KPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvc3BpbGli
LmggICAgICAgICAgICAgICAgIHwgMiArLQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvZ3JleWJ1
cy9zdmMuaCAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gPiA+ID4gIDE2IGZpbGVzIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gQWNrZWQt
Ynk6IFZpcmVzaCBLdW1hciA8dmlyZXNoLmt1bWFyQGxpbmFyby5vcmc+Cj4gPiAKPiA+IFRoYW5r
cyBmb3IgYWxsIG9mIHRoZSBhY2tzIQo+ID4gCj4gPiBncmVnIGstaAo+IAo+IEkgZm91bmQgc2lt
aWxhciBpc3N1ZXMgb2YgZ3JheWJ1cyB3aGVuIEkgdGVzdGVkIHRoZSBsYXRlc3Qgc3RhZ2luZy10
ZXN0aW5nCj4gCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5kLWxpbmU+OjA6MDoKPiAu
L2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjQ1OjI6IGVycm9yOiB1
bmtub3duIHR5cGUgbmFtZSDigJhfX2xlMTbigJkKPiAgIF9fbGUxNiBzaXplOyAgLyogU2l6ZSBp
biBieXRlcyBvZiBoZWFkZXIgKyBwYXlsb2FkICovCj4gICBefn5+fn4KPiAuL2luY2x1ZGUvbGlu
dXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjQ2OjI6IGVycm9yOiB1bmtub3duIHR5cGUg
bmFtZSDigJhfX2xlMTbigJkKPiAgIF9fbGUxNiBvcGVyYXRpb25faWQ7IC8qIE9wZXJhdGlvbiB1
bmlxdWUgaWQgKi8KPiAgIF5+fn5+fgo+IC4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNf
cHJvdG9jb2xzLmg6NDc6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIOKAmF9fdTjigJkKPiAg
IF9fdTggdHlwZTsgIC8qIEUuZyBHQl9JMkNfVFlQRV8qIG9yIEdCX0dQSU9fVFlQRV8qICovCj4g
ICBefn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2dyZXlidXMvZ3JleWJ1c19wcm90b2NvbHMuaDo0ODoy
OiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYX191OOKAmQo+ICAgX191OCByZXN1bHQ7ICAv
KiBSZXN1bHQgb2YgcmVxdWVzdCAoaW4gcmVzcG9uc2VzIG9ubHkpICovCj4gICBefn5+Cj4gLi9p
bmNsdWRlL2xpbnV4L2dyZXlidXMvZ3JleWJ1c19wcm90b2NvbHMuaDo0OToyOiBlcnJvcjogdW5r
bm93biB0eXBlIG5hbWUg4oCYX191OOKAmQo+ICAgX191OCBwYWRbMl07ICAvKiBtdXN0IGJlIHpl
cm8gKGlnbm9yZSB3aGVuIHJlYWQpICovCj4gICBefn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2dyZXli
dXMvZ3JleWJ1c19wcm90b2NvbHMuaDo1ODoyOiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCY
X191OOKAmQo+ICAgX191OCBwaGFzZTsKPiAgIF5+fn4KPiAuL2luY2x1ZGUvbGludXgvZ3JleWJ1
cy9ncmV5YnVzX3Byb3RvY29scy5oOjg4OjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSDigJhf
X3U44oCZCj4gICBfX3U4IG1ham9yOwo+ICAgXn5+fgo+IC4vaW5jbHVkZS9saW51eC9ncmV5YnVz
L2dyZXlidXNfcHJvdG9jb2xzLmg6ODk6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIOKAmF9f
dTjigJkKPiAgIF9fdTggbWlub3I7Cj4gICBefn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2dyZXlidXMv
Z3JleWJ1c19wcm90b2NvbHMuaDo5MzoyOiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYX191
OOKAmQo+ICAgX191OCBtYWpvcjsKPiAgIF5+fn4KPiAuL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9n
cmV5YnVzX3Byb3RvY29scy5oOjk0OjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSDigJhfX3U4
4oCZCj4gICBfX3U4IG1pbm9yOwo+ICAgXn5+fgo+IC4vaW5jbHVkZS9saW51eC9ncmV5YnVzL2dy
ZXlidXNfcHJvdG9jb2xzLmg6OTg6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIOKAmF9fdTji
gJkKPiAgIF9fdTggYnVuZGxlX2lkOwo+ICAgXn5+fgo+IC4vaW5jbHVkZS9saW51eC9ncmV5YnVz
L2dyZXlidXNfcHJvdG9jb2xzLmg6MTAyOjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSDigJhf
X3U44oCZCj4gICBfX3U4IG1ham9yOwo+ICAgXn5+fgo+IC4vaW5jbHVkZS9saW51eC9ncmV5YnVz
L2dyZXlidXNfcHJvdG9jb2xzLmg6MTAzOjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSDigJhf
X3U44oCZCj4gICBfX3U4IG1pbm9yOwo+ICAgXn5+fgo+IC4vaW5jbHVkZS9saW51eC9ncmV5YnVz
L2dyZXlidXNfcHJvdG9jb2xzLmg6MTA4OjI6IGVycm9yOiB1bmtub3duIHR5cGUgbmFtZSDigJhf
X2xlMTbigJkKPiAgIF9fbGUxNiAgIHNpemU7Cj4gICBefn5+fn4KPiAuL2luY2x1ZGUvbGludXgv
Z3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjExMzoyOiBlcnJvcjogdW5rbm93biB0eXBlIG5h
bWUg4oCYX191OOKAmQo+ICAgX191OCAgIGRhdGFbMF07Cj4gICBefn5+Cj4gLi9pbmNsdWRlL2xp
bnV4L2dyZXlidXMvZ3JleWJ1c19wcm90b2NvbHMuaDoxMTg6MjogZXJyb3I6IHVua25vd24gdHlw
ZSBuYW1lIOKAmF9fbGUxNuKAmQo+ICAgX19sZTE2ICAgY3BvcnRfaWQ7Cj4gICBefn5+fn4KPiAu
L2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVzX3Byb3RvY29scy5oOjEyMjoyOiBlcnJvcjog
dW5rbm93biB0eXBlIG5hbWUg4oCYX19sZTE24oCZCj4gICBfX2xlMTYgICBjcG9ydF9pZDsKPiAK
PiAuLiBhbmQgb3RoZXIgZmlsZXMuLi4KPiAKPiBOb3QgdmVyeSBzdXJlLi4uIGJ1dCBpdCBzZWVt
cyBpdCBjYW4gYmUgb2JzZXJ2ZWQgd2l0aCBhbGxtb2Rjb25maWcgb3IKPiBDT05GSUdfS0VSTkVM
X0hFQURFUl9URVNUPXkgYW5kIGZhaWwgbXkgY29tcGlsYXRpb24uLi4KPiBIb3BlIHRoYXQgb2Yg
c29tZSBoZWxwIChraW5kIHJlbWluZGVyLi4uKQoKQWgsIHRoYW5rIHlvdSBzbyBtdWNoIGZvciB0
aGlzLCBOT1cgdGhhdCBtYWtlcyBzZW5zZSB3aHkgSSBnb3QgdGhhdCBvZGQKa2J1aWxkIHdhcm5p
bmcgdGhhdCBJIGNvdWxkIG5vdCBmaWd1cmUgb3V0LgoKTGV0IG1lIGdvIGZpeCB0aGlzIHVwLCB0
aGFuayB5b3Ugc28gbXVjaC4KCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
