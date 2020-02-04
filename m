Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A42B151643
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 08:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 194F382468;
	Tue,  4 Feb 2020 07:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ObgXpjIYgnlb; Tue,  4 Feb 2020 07:09:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4302982123;
	Tue,  4 Feb 2020 07:09:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 440EE1BF2B4
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 07:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AC8F86DAC
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 07:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kr8AGL0k7olG for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 07:09:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 12D0B86DA5
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 07:09:30 +0000 (UTC)
Received: from localhost (unknown [167.98.85.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A28F2086A;
 Tue,  4 Feb 2020 07:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580800169;
 bh=scoweAY6anUw8k9z4VoD+ICWjo02gSzC10Rh6liDJfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hKO2dIXaArwgdWAM9HmMcFElchJGp6FfLH+JQv0mvebG6G1Tphb4/4ZEtaoWSpQzF
 0CRyYtTVRgCSwEONIxEVOpm9fBgkJY2kxsFNxloRwwRONUoDm15uVOAfDa0BMNM6z6
 N77RAxRplWp5eTl+PZCfy4C2JLSLK//B44vdO+4M=
Date: Tue, 4 Feb 2020 07:09:27 +0000
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20200204070927.GA966981@kroah.com>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>, "fw@strlen.de" <fw@strlen.de>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDQ6MDI6MTVBTSArMDAwMCwgQ2hyaXMgUGFja2hhbSB3
cm90ZToKPiBJJ2xsIHBpcGUgdXAgb24gdGhpcyB0aHJlYWQgdG9vCj4gCj4gT24gVHVlLCAyMDE5
LTEyLTEwIGF0IDAyOjQyIC0wODAwLCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+ID4gT24gMTIvMTAv
MTkgMToxNSBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4gPiBUaGlzIGRyaXZlciBo
YXMgYmVlbiBpbiB0aGUgdHJlZSBzaW5jZSAyMDA5IHdpdGggbm8gcmVhbCBtb3ZlbWVudCB0byBn
ZXQKPiA+ID4gaXQgb3V0LiAgTm93IGl0IGlzIHN0YXJ0aW5nIHRvIGNhdXNlIGJ1aWxkIGlzc3Vl
cyBhbmQgb3RoZXIgcHJvYmxlbXMgZm9yCj4gPiA+IHBlb3BsZSB3aG8gd2FudCB0byBmaXggY29k
aW5nIHN0eWxlIHByb2JsZW1zLCBidXQgY2FuIG5vdCBhY3R1YWxseSBidWlsZAo+ID4gPiBpdC4K
PiA+ID4gCj4gPiA+IEFzIG5vdGhpbmcgaXMgaGFwcGVuaW5nIGhlcmUsIGp1c3QgZGVsZXRlIHRo
ZSBtb2R1bGUgZW50aXJlbHkuCj4gPiA+IAo+ID4gPiBSZXBvcnRlZC1ieTogR3VlbnRlciBSb2Vj
ayA8bGludXhAcm9lY2stdXMubmV0Pgo+ID4gPiBDYzogRGF2aWQgRGFuZXkgPGRkYW5leUBjYXZp
dW1uZXR3b3Jrcy5jb20+Cj4gPiA+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1s
b2Z0Lm5ldD4KPiA+ID4gQ2M6ICJNYXR0aGV3IFdpbGNveCAoT3JhY2xlKSIgPHdpbGx5QGluZnJh
ZGVhZC5vcmc+Cj4gPiA+IENjOiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+Cj4g
PiA+IENjOiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4gPiA+IENjOiBBYXJv
IEtvc2tpbmVuIDxhYXJvLmtvc2tpbmVuQGlraS5maT4KPiA+ID4gQ2M6IFdhbWJ1aSBLYXJ1Z2Eg
PHdhbWJ1aS5rYXJ1Z2F4QGdtYWlsLmNvbT4KPiA+ID4gQ2M6IEp1bGlhIExhd2FsbCA8anVsaWEu
bGF3YWxsQGxpcDYuZnI+Cj4gPiA+IENjOiBGbG9yaWFuIFdlc3RwaGFsIDxmd0BzdHJsZW4uZGU+
Cj4gPiA+IENjOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPgo+ID4g
PiBDYzogQnJhbmRlbiBCb25hYnkgPGJyYW5kb25ib25hYnk5NEBnbWFpbC5jb20+Cj4gPiA+IENj
OiAiUGV0ciDFoHRldGlhciIgPHluZXp6QHRydWUuY3o+Cj4gPiA+IENjOiBTYW5kcm8gVm9sZXJ5
IDxzYW5kcm9Adm9sZXJ5LmNvbT4KPiA+ID4gQ2M6IFBhdWwgQnVydG9uIDxwYXVsYnVydG9uQGtl
cm5lbC5vcmc+Cj4gPiA+IENjOiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5j
b20+Cj4gPiA+IENjOiBHaW92YW5uaSBHaGVyZG92aWNoIDxib2JkYzk2NjRAc2V6bmFtLmN6Pgo+
ID4gPiBDYzogVmFsZXJ5IEl2YW5vdiA8aXZhbGVyeTExMUBnbWFpbC5jb20+Cj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
Cj4gPiAKPiA+IEFja2VkLWJ5OiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+Cj4g
Cj4gUGxlYXNlIGNhbiB3ZSBrZWVwIHRoaXMgZHJpdmVyLiBXZSBkbyBoYXZlIHBsYXRmb3JtcyB1
c2luZyBpdCBhbmQgd2UKPiB3b3VsZCBsaWtlIGl0IHRvIHN0YXkgYXJvdW5kLgo+IAo+IENsZWFy
bHkgd2UnbGwgbmVlZCB0byBzb3J0IHRoaW5ncyBvdXQgdG8gYSBwb2ludCB3aGVyZSB0aGV5IGJ1
aWxkCj4gc3VjY2Vzc2Z1bGx5LiBXZSd2ZSBiZWVuIGhvcGluZyB0byBzZWUgdGhpcyBtb3ZlIG91
dCBvZiBzdGFnaW5nIGV2ZXIKPiBzaW5jZSB3ZSBzZWxlY3RlZCBDYXZpdW0gYXMgYSB2ZW5kb3Iu
CgpHcmVhdCwgY2FuIHlvdSBzZW5kIG1lIGEgcGF0Y2hzZXQgdGhhdCByZXZlcnRzIHRoaXMgYW5k
IGZpeGVzIHRoZSBidWlsZAppc3N1ZXMgYW5kIGFjY2VwdCBtYWludGFpbmVyc2hpcCBvZiB0aGUg
Y29kZT8KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
