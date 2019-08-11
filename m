Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD05892AF
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Aug 2019 18:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFB5B879F0;
	Sun, 11 Aug 2019 16:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sr1sPUNMdZKv; Sun, 11 Aug 2019 16:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4208386C0A;
	Sun, 11 Aug 2019 16:47:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 238691BF337
 for <devel@linuxdriverproject.org>; Sun, 11 Aug 2019 16:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 202ED86C0A
 for <devel@linuxdriverproject.org>; Sun, 11 Aug 2019 16:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8cZH2qZlfNo for <devel@linuxdriverproject.org>;
 Sun, 11 Aug 2019 16:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B48D85DB5
 for <devel@driverdev.osuosl.org>; Sun, 11 Aug 2019 16:47:18 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id g17so4661770qkk.8
 for <devel@driverdev.osuosl.org>; Sun, 11 Aug 2019 09:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sIscX+Dcb2K+j96+0aYkQgwjXzBYA4SGfe0HBSClU4U=;
 b=SmkBsObXwZBpsPIYRRG4Q0lF0YbM1tGZFXc6N0THDDVD6q4q6tYkrmX3Tum674bCu8
 tXMpSPRgFTv2asOGQmoQ7C+m2zMPCDZG/x/gqMGBFb+ZBwkBO9CikjAzNUS3t+yTVQFI
 8LrWIaBsePJsfUok3y6ir2jnJJZ4/u7IExKvGdA0zj6y39YkUjJbC/zWadOIlRcglBvj
 vgwocUPPYrAmzXWYFWBOf/mRFNL3aRIrKx5GBs19/qYmYGnEYo0e8XohoBO6fKB0hpjJ
 PqVRYXLL+eGJy3FEz8D8OyrLOoRZtk70UsmMfgqXLweWZAkZnZ8bqrc6D5AAyJtLKfyj
 1s2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sIscX+Dcb2K+j96+0aYkQgwjXzBYA4SGfe0HBSClU4U=;
 b=Cp2QkLLaXxZwvyRFrlVsPiHnD82Qc5uhJ8sHdFLMXRu5nZZKG6AdXogHLg1d3Tz5wr
 /sgkndQk0x+obKy3rKA/r9snDIaP51cuYY+5vMbJB4IGY8VPv9mliEU1z56LwX6HUOhp
 T2LtjCyPmbVKF8aNkuMIRGEHRL7Me1e+x10ovnEGtbxDSb4gRg3vuYrrAL0zl78Yw7c5
 VDpCb16Rl75TbowmmjDLNkG3J9d3bS6ht+6MS3/UlmU8WmqIR/MG/YL3Zle7yMisQgYq
 nU7FcJHR1TxRGT96mzWLcUwk9k36mjPqC5rND93ruQXLSWy5jMMUWX7iyBnR2Z6zlHHM
 3UZQ==
X-Gm-Message-State: APjAAAX0Ib/yQzKKZFc9tcSgc3aRf8e/gyTRO5apuGuEEnWI0hMtj4l9
 lXI2DPNbQsnBqN9bfak4yzNw1PKB5K+rXeuT1M0=
X-Google-Smtp-Source: APXvYqwxmAL/qjnGtvMpV9nddlEzX8tmgNVKlSc+PW1N3fJXh+ML2UvGuETAMWpg0bQOMt/6QSDARANlAm14W+Kd8nM=
X-Received: by 2002:a37:a484:: with SMTP id n126mr27060726qke.73.1565542037020; 
 Sun, 11 Aug 2019 09:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190810150058.3509-1-rodrigorsdc@gmail.com>
 <20190811094322.063ad682@archlinux>
In-Reply-To: <20190811094322.063ad682@archlinux>
From: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
Date: Sun, 11 Aug 2019 13:47:04 -0300
Message-ID: <CAOeBkLqGe-5LwBq1yrX_F8kNn2UK-7+7H+AOZPAqKS5OKHuYkA@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: accel: adis16240: Improve readability on
 write_raw function
To: Jonathan Cameron <jic23@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RW0gZG9tLCAxMSBkZSBhZ28gZGUgMjAxOSDDoHMgMDU6NDMsIEpvbmF0aGFuIENhbWVyb24KPGpp
YzIzQGtlcm5lbC5vcmc+IGVzY3JldmV1Ogo+Cj4gT24gU2F0LCAxMCBBdWcgMjAxOSAxMjowMDo1
OCAtMDMwMAo+IFJvZHJpZ28gPHJvZHJpZ29yc2RjQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IEZy
b206IFJvZHJpZ28gQ2FydmFsaG8gPHJvZHJpZ29yc2RjQGdtYWlsLmNvbT4KPiA+Cj4gPiBJbXBy
b3ZlIHJlYWRhYmlsaXR5IGJ5IHVzaW5nIEdFTk1BU0sgbWFjcm8sIGNoYW5naW5nIHN3aXRjaCBz
dGF0ZW1lbnQKPiA+IGJ5IGlmIHN0YXRlbWVudCBhbmQgcmVtb3ZpbmcgdW5uZWNlc3NhcnkgbG9j
YWwgdmFyaWFibGVzLgo+CgpIaSBKb25hdGhhbi4gVGhhbmtzIGZvciByZXZpZXdpbmchCgo+IEZy
b20geW91ciBkZXNjcmlwdGlvbiBpdCBzb3VuZHMgbGlrZSBtdWx0aXBsZSBjaGFuZ2VzIGluIG9u
ZSBwYXRjaC4KPiBBbHdheXMgcHJlZmVyYWJsZSB0byBoYXZlIG9uZSB0eXBlIG9mIGNoYW5nZSBp
biBhIHBhdGNoIGFuZCBtb3JlCj4gc21hbGwgcGF0Y2hlcy4KPgo+IEJhc2VkIG9uIGNvbW1lbnRz
IGJlbG93LCBJIHdvdWxkIGxlYXZlIHRoZSBzd2l0Y2ggc3RhdGVtZW50IGFsb25lLAo+IGJ1dCBw
dXQgaW4geW91ciBHRU5NQVNLIGNoYW5nZSBhcyB0aGF0IG9uZSBpcyBnb29kIGFuZCBnZXRzCj4g
cmlkIG9mIHRoZSBvZGQgbG9jYWwgdmFyaWFibGUgJ2JpdHMnIGFzIHdlbGwgOikKPgo+IFRoYW5r
cywKPgo+IEpvbmF0aGFuCj4KPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gUmliZWly
byBDYXJ2YWxobyA8cm9kcmlnb3JzZGNAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9z
dGFnaW5nL2lpby9hY2NlbC9hZGlzMTYyNDAuYyB8IDE2ICsrKysrKystLS0tLS0tLS0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjI0MC5jIGIvZHJpdmVy
cy9zdGFnaW5nL2lpby9hY2NlbC9hZGlzMTYyNDAuYwo+ID4gaW5kZXggNjJmNGIzYjFiNDU3Li42
OGYxNjU1MDEzODkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2Fk
aXMxNjI0MC5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjI0MC5j
Cj4gPiBAQCAtMzA5LDE3ICszMDksMTUgQEAgc3RhdGljIGludCBhZGlzMTYyNDBfd3JpdGVfcmF3
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGxvbmcgbWFzaykKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3QgYWRpcyAqc3QgPSBpaW9fcHJp
dihpbmRpb19kZXYpOwo+ID4gLSAgICAgaW50IGJpdHMgPSAxMDsKPiA+IC0gICAgIHMxNiB2YWwx
NjsKPiA+ICsgICAgIGludCBtOwo+ID4gICAgICAgdTggYWRkcjsKPiA+Cj4gPiAtICAgICBzd2l0
Y2ggKG1hc2spIHsKPiA+IC0gICAgIGNhc2UgSUlPX0NIQU5fSU5GT19DQUxJQkJJQVM6Cj4gPiAt
ICAgICAgICAgICAgIHZhbDE2ID0gdmFsICYgKCgxIDw8IGJpdHMpIC0gMSk7Cj4gPiAtICAgICAg
ICAgICAgIGFkZHIgPSBhZGlzMTYyNDBfYWRkcmVzc2VzW2NoYW4tPnNjYW5faW5kZXhdWzBdOwo+
ID4gLSAgICAgICAgICAgICByZXR1cm4gYWRpc193cml0ZV9yZWdfMTYoc3QsIGFkZHIsIHZhbDE2
KTsKPiA+IC0gICAgIH0KPiA+IC0gICAgIHJldHVybiAtRUlOVkFMOwo+ID4gKyAgICAgaWYgKG1h
c2sgIT0gSUlPX0NIQU5fSU5GT19DQUxJQkJJQVMpCj4gPiArICAgICAgICAgICAgIHJldHVybiAt
RUlOVkFMOwo+Cj4gSG1tLiBXZSBnZW5lcmFsbHkgZW5jb3VyYWdlIHRoZSB1c2Ugb2Ygc3dpdGNo
IHN0YXRlbWVudHMgaW4gdGhlc2UKPiBjYXNlcyBiZWNhdXNlIHRoZXkgcmVkdWNlIGNodXJuIGFz
IG5ldyBmZWF0dXJlcyBhcmUgYWRkZWQuCj4KPiBJbiB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgd2Ug
ZG9uJ3QgaGF2ZSBhbnkgY29udHJvbCBvZiBzYW1wbGluZyBmcmVxdWVuY3kKPiBpbiB0aGUgZHJp
dmVyLCBidXQgdGhlIGhhcmR3YXJlIGFwcGVhcnMgdG8gc3VwcG9ydCBpdCAodGFibGUgMjMgb24g
dGhlCj4gZGF0YXNoZWV0KS4KCk9uIGRyaXZlcnMgb2Ygc2FtZSBraW5kIG91dCBvZiBzdGFnaW5n
IChhZGlzMTYyMDkgYW5kIGFkaXMxNjIwMSksIHNhbXBsaW5nCmZyZXF1ZW5jeSB3cml0aW5nIGFy
ZSBub3QgaW1wbGVtZW50ZWQsIGV2ZW4gdGhvdWdoIGRhdGFzaGVldHMgc3VnZ2VzdCBhIHJlZ2lz
dGVyCndyaXRpbmcgZm9yIHRoaXMuIEkgY2FuIHRyeSB0byBpbXBsZW1lbnQgaWYgaXQgaXMgYSBn
b29kIG9uZS4KCj4gPiArCj4gPiArICAgICBtID0gR0VOTUFTSyg5LCAwKTsKPiA+ICsgICAgIGFk
ZHIgPSBhZGlzMTYyNDBfYWRkcmVzc2VzW2NoYW4tPnNjYW5faW5kZXhdWzBdOwo+ID4gKyAgICAg
cmV0dXJuIGFkaXNfd3JpdGVfcmVnXzE2KHN0LCBhZGRyLCB2YWwgJiBtKTsKPiBXaHkgdGhlIGxv
Y2FsIHZhcmlhYmxlIG0/ICBDYW4gd2Ugbm90IGp1c3QgZG8KPgo+ICAgICAgICAgcmV0dXJuIGFk
aXNfd3JpdGVfcmVnXzE2KHN0LCBhZGRyLCB2YWwgJiBHRU5NQVNLKDksIDApKTsKPgo+IElmIGFu
eXRoaW5nIEkgdGhpbmsgdGhhdCBpcyBhIGxpdHRsZSBtb3JlIHJlYWRhYmxlIHRoYW4geW91cgo+
IHZlcnNpb24uICBUaGVyZSBpcyBhIHJlYXNvbmFibGUgYXJndW1lbnQgZm9yIGp1c3QgaGF2aW5n
Cj4gYWRkciBpbmxpbmUgYXMgd2VsbC4KPgo+ICAgICAgICAgcmV0dXJuIGFkaXNfd3JpdGVfcmVn
XzE2KHN0LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFkaXMxNjI0MF9hZGRy
ZXNzZXNbY2hhbi0+c2Nhbl9pbmRleF1bMF0sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdmFsICYgR0VOTUFTSyg5LCAwKSk7Cj4KPiBIb3dldmVyLCBnaXZlbiBJJ20gc3VnZ2Vz
dGluZyB5b3UgbGVhdmUgaXQgYXMgYSBzd2l0Y2ggc3RhdGVtZW50LCBpdAo+IHdpbGwgYmUgdG9v
IGxvbmcgd2l0aCBhZGRyIGlubGluZS4KPgo+ID4gIH0KPiA+Cj4gPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpaW9fY2hhbl9zcGVjIGFkaXMxNjI0MF9jaGFubmVsc1tdID0gewo+CgpSZWdhcmRzLApS
b2RyaWdvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
