Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D8A59830
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95C38875C7;
	Fri, 28 Jun 2019 10:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ybnhO+k0myu; Fri, 28 Jun 2019 10:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 541DC8701E;
	Fri, 28 Jun 2019 10:10:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2AEAF1BF407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2184585BC4
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wT-hVPiU86wU for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:10:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx08-00252a01.pphosted.com (mx08-00252a01.pphosted.com
 [91.207.212.211])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6918F85BB8
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:10:31 +0000 (UTC)
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x5SA7n83015956
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 11:10:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type : content-transfer-encoding; s=pp;
 bh=TDIgDFZYckSDRxESTmMyi7W5fZyMRfxZe7Gx+vhjabg=;
 b=IQo53t+yjWUCv3doZWHJZCeK3izg0lwHGOlK8P33mQRL8s+q/ny/2UEh1D9woQw6Yvr5
 tt1SEfnhypFuAtrsMZ6lzb4xLHqHLJxl6kPh0PhHmJoRJ1MICezIQl6p7x4jSD8FIEH0
 KLYX+emoKcpJJB0uIVKzfUybu95zhnyWEuV2hpKjOkp5CTOnlv1Hyr/zaGuOzIwGjDsJ
 pW24zLIxamcqCgbQy92oE9AmQXIuv+bHxqc8VAHUfQHH6ysi61/fSvBpY48p7Oy0JdEK
 4SV7K+W/tJZDuwStTr+0Lc15t8NxPeohbW01fthgDwU0aUuM6zL1IfNEyPj+sOOH+t3R rw== 
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197])
 by mx08-00252a01.pphosted.com with ESMTP id 2t9exhk1rc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 11:10:29 +0100
Received: by mail-pg1-f197.google.com with SMTP id a13so2951393pgw.19
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TDIgDFZYckSDRxESTmMyi7W5fZyMRfxZe7Gx+vhjabg=;
 b=HudN4HAHZcs4n+TjXAVpvaFmaWUaeWvgdeEaD5uPP2pctk8+jyvr9RzUT29zh1gaXe
 UOF4fmSp795KpnHjMUQnzhG0Re2Ji1DcaVfWw2kYfnoEROQ0vzXytKKmaJOkGv8//6sX
 1MAyofMKiUctDEYamTmlO9kVUEkRf6BuB42bKrHxRm3m3GgN72NOusNMroRISHbl0ESQ
 UTa58slZscEURFsRjzYrzLtbr9CT6204iqCYyMuDGuFUtjSBMKKmpqn38ptKhm9r0nhw
 5p6j99Ta4NSMegugPG7vDfZQW4ZEfPkjioSg/l075jTUAuw8d242bXWK19HhlOwWeSmC
 MQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TDIgDFZYckSDRxESTmMyi7W5fZyMRfxZe7Gx+vhjabg=;
 b=huvnFmUcc3fhdQgu6fpHndI1EYo709zQcX33UU9VifCh2BdIwNu4kNohVDO8Uz/IKh
 bcXZ+6ZzWyK9lt0ev+qvFomCpHaHZFL8w0cBqGsa+r+Z3+kbNebrouhdkcZIMy4RBAI9
 TaPA7YbutK8PQp7UQTTllaRw4FICXn19Ky1u89DoeRvUyKb2txZOVPZS7qdtQKrRbYvR
 Hkm7K1HUoQ0PVelvs3aLRF70+BFubpIhWhS5RNIhAmf4tpYBa+4vtfpTT4CeIpKa1RoH
 aozmLF0ox7dHZfoo6Y6LV7ldd/38QO23kJ7MeGAgerXUNquDDT3dsefuooLqa0v9VlZc
 VfKQ==
X-Gm-Message-State: APjAAAUfwgB9gybhDsc+z0AS3tEJuz+TXWVxaQDS7SgxsyC9Zws8qLPq
 sPr/nXZMpNVpLeQfJTkFAidnnpim1B7iNYW8dBWBTIhpf0gGWvqZ8DzgfNRTWJLKraer2umeOq2
 eVIXaZu7qP8NQU/+yQzX8h64EnvYCk5naMk6l
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr12393444pja.104.1561716627075; 
 Fri, 28 Jun 2019 03:10:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwEreDZiFkAwV+0cUZgFrczBqG3Z5CPzr28vUCwFKMAVXeCeEB1P8eVW2rvYmKKjCeaDkR2QMfiT3p9cEbAMu8=
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr12393404pja.104.1561716626804; 
 Fri, 28 Jun 2019 03:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
 <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
In-Reply-To: <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
From: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Fri, 28 Jun 2019 11:10:13 +0100
Message-ID: <CAAoAYcOvnF55U0kPMFE4cOd=nUqjoidirbGP6AWN=5Rqp0RhbQ@mail.gmail.com>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-06-28_04:2019-06-25,2019-06-28 signatures=0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LMML <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgTmljb2xhcwoKT24gVGh1LCAyNyBKdW4gMjAxOSBhdCAyMDo1NSwgTmljb2xhcyBEdWZyZXNu
ZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+Cj4gSGkgRGF2ZSwKPgo+IExlIGpldWRp
IDI3IGp1aW4gMjAxOSDDoCAyMDo1NSArMDIwMCwgU3RlZmFuIFdhaHJlbiBhIMOpY3JpdCA6Cj4g
PiBGcm9tOiBEYXZlIFN0ZXZlbnNvbiA8ZGF2ZS5zdGV2ZW5zb25AcmFzcGJlcnJ5cGkub3JnPgo+
ID4KPiA+IEgyNjQgaGVhZGVyIGNvbWUgZnJvbSBWQyB3aXRoIDAgdGltZXN0YW1wcywgd2hpY2gg
bWVhbnMgdGhleSBnZXQgYQo+ID4gc3RyYW5nZSB0aW1lc3RhbXAgd2hlbiBwcm9jZXNzZWQgd2l0
aCBWQy9rZXJuZWwgc3RhcnQgdGltZXMsCj4gPiBwYXJ0aWN1bGFybHkgaWYgdXNlZCB3aXRoIHRo
ZSBpbmxpbmUgaGVhZGVyIG9wdGlvbi4KPiA+IFJlbWVtYmVyIHRoZSBsYXN0IGZyYW1lIHRpbWVz
dGFtcCBhbmQgdXNlIHRoYXQgaWYgc2V0LCBvciBvdGhlcndpc2UKPiA+IHVzZSB0aGUga2VybmVs
IHN0YXJ0IHRpbWUuCj4KPiBOb3JtYWxseSBIMjY0IGhlYWRlcnMgYXJlIGNvbnNpZGVyZWQgdG8g
YmUgcGFydCBvZiB0aGUgZm9sbG93aW5nIGZyYW1lLgo+IEdpdmluZyBpdCB0aGUgdGltZXN0YW1w
IG9mIHRoZSBwcmV2aW91cyBmcmFtZSB3aWxsIGxpa2VseSBjb25mdXNlIHNvbWUKPiB1c2Vyc3Bh
Y2UgYW5kIGNhdXNlIGFuIG9mZi1ieS1vbmUgaW4gdGltZXN0YW1wLiBJIHVuZGVyc3RhbmQgdGhp
cyBpcyBhCj4gd29ya2Fyb3VuZCwgYnV0IGFtIHdvbmRlcmluZyBpZiB0aGlzIGNhbiBiZSBpbXBy
b3ZlZC4KClNvcnJ5LCBzbGlnaHQgYW1iaWd1aXR5IGluIGhvdyBJJ20gcmVhZGluZyB5b3VyIGNv
bW1lbnQuCgpBcmUgeW91IHNheWluZyB0aGF0IHRoZSBoZWFkZXIgYnl0ZXMgd2FudCB0byBiZSBp
biB0aGUgc2FtZSBidWZmZXIgYXMKdGhlIGZvbGxvd2luZyBmcmFtZT8KSSB0aG91Z2h0IHRoaXMg
aGFkIGFsc28gYmVlbiBkaXNjdXNzZWQgaW4gdGhlIFY0TDIgc3RhdGVmdWwgY29kZWMgQVBJCnRo
cmVhZHMgYWxvbmcgd2l0aCBob3cgbWFueSBlbmNvZGVkIGZyYW1lcyB3ZXJlIGFsbG93ZWQgaW4g
YSBzaW5nbGUKVjRMMiBidWZmZXIuIEkgY2VydGFpbmx5IGhhZG4ndCBzZWVuIGEgc3RhdGVtZW50
IGFib3V0IHRoZSBoZWFkZXIKYnl0ZXMgYmVpbmcgY29tYmluZWQgd2l0aCB0aGUgbmV4dCBmcmFt
ZS4KSWYgdGhlIGJlaGF2aW91ciByZXF1aXJlZCBieSBWNEwyIGlzIHRoYXQgaGVhZGVyIGJ5dGVz
IGFuZCBmb2xsb3dpbmcKZnJhbWUgYXJlIGluIHRoZSBzYW1lIGJ1ZmZlciwgdGhlbiB0aGF0IGlz
IHJlbGF0aXZlbHkgZWFzeSB0byBhY2hpZXZlCmluIHRoZSBmaXJtd2FyZS4gVGhpcyB3b3JrYXJv
dW5kIGNhbiByZW1haW4gZm9yIG9sZGVyIGZpcm13YXJlIGFzIGl0CndpbGwgbmV2ZXIgdHJpZ2dl
ciBpZiB0aGUgZmlybXdhcmUgaGFzIGNvbWJpbmVkIHRoZSBmcmFtZXMuCgoKT3IgYXJlIHlvdSBz
YXlpbmcgdGhhdCB0aGUgaGVhZGVyIGJ5dGVzIHJlbWFpbiBpbiB0aGVpciBvd24gYnVmZmVyLApi
dXQgdGhlIHRpbWVzdGFtcCB3YW50cyB0byBiZSB0aGUgc2FtZSBhcyB0aGUgbmV4dCBmcmFtZT8g
VGhhdCBpcwpoYXJkZXIgdG8gYWNoaWV2ZSBpbiB0aGUgZmlybXdhcmUsIGJ1dCBjb3VsZCBwcm9i
YWJseSBiZSBkb25lIGluIHRoZQprZXJuZWwgZHJpdmVyIGJ5IGhvbGRpbmcgb24gdG8gdGhlIGhl
YWRlciBieXRlcyBmcmFtZSB1bnRpbCB0aGUgbmV4dApidWZmZXIgaGFkIGJlZW4gcmVjZWl2ZWQs
IGF0IHdoaWNoIHBvaW50IHRoZSB0aW1lc3RhbXAgY2FuIGJlIGNvcGllZAphY3Jvc3MuIFBvc3Np
YmxlLCBidXQganVzdCBuZWVkcyBzbGlnaHRseSBjYXJlZnVsIGhhbmRsaW5nIHRvIGVuc3VyZQp3
ZSBkb24ndCBsb3NlIGJ1ZmZlcnMgYWNjaWRlbnRhbGx5LgoKICBEYXZlCgo+ID4KPiA+IExpbms6
IGh0dHBzOi8vZ2l0aHViLmNvbS9yYXNwYmVycnlwaS9saW51eC9pc3N1ZXMvMTgzNgo+ID4gU2ln
bmVkLW9mZi1ieTogRGF2ZSBTdGV2ZW5zb24gPGRhdmUuc3RldmVuc29uQHJhc3BiZXJyeXBpLm9y
Zz4KPiA+IC0tLQo+ID4gIC4uLi9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEv
YmNtMjgzNS1jYW1lcmEuYyAgfCAxNCArKysrKysrKysrKystLQo+ID4gIC4uLi9zdGFnaW5nL3Zj
MDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEvYmNtMjgzNS1jYW1lcmEuaCAgfCAgMiArKwo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1l
cmEvYmNtMjgzNS1jYW1lcmEuYyBiL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4
MzUtY2FtZXJhL2JjbTI4MzUtY2FtZXJhLmMKPiA+IGluZGV4IGRjZTZlNmQuLjBjMDQ4MTUgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9iY20yODM1LWNhbWVy
YS9iY20yODM1LWNhbWVyYS5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNl
cy9iY20yODM1LWNhbWVyYS9iY20yODM1LWNhbWVyYS5jCj4gPiBAQCAtMzU5LDcgKzM1OSw5IEBA
IHN0YXRpYyB2b2lkIGJ1ZmZlcl9jYihzdHJ1Y3QgdmNoaXFfbW1hbF9pbnN0YW5jZSAqaW5zdGFu
Y2UsCj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAgIH0gZWxzZSB7Cj4gPiAgICAgICAgICAg
ICAgIGlmIChkZXYtPmNhcHR1cmUuZnJhbWVfY291bnQpIHsKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICBpZiAoZGV2LT5jYXB0dXJlLnZjX3N0YXJ0X3RpbWVzdGFtcCAhPSAtMSAmJiBwdHMpIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoZGV2LT5jYXB0dXJlLnZjX3N0YXJ0X3RpbWVz
dGFtcCAhPSAtMSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmLT52Yi52
YjJfYnVmLnRpbWVzdGFtcCA9IGt0aW1lX2dldF9ucygpOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIH0gZWxzZSBpZiAocHRzKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBr
dGltZV90IHRpbWVzdGFtcDsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHM2NCBy
dW50aW1lX3VzID0gcHRzIC0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBk
ZXYtPmNhcHR1cmUudmNfc3RhcnRfdGltZXN0YW1wOwo+ID4gQEAgLTM3Miw4ICszNzQsMTUgQEAg
c3RhdGljIHZvaWQgYnVmZmVyX2NiKHN0cnVjdCB2Y2hpcV9tbWFsX2luc3RhbmNlICppbnN0YW5j
ZSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGt0aW1lX3RvX25z
KHRpbWVzdGFtcCkpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmLT52Yi52
YjJfYnVmLnRpbWVzdGFtcCA9IGt0aW1lX3RvX25zKHRpbWVzdGFtcCk7Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1
Zi0+dmIudmIyX2J1Zi50aW1lc3RhbXAgPSBrdGltZV9nZXRfbnMoKTsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGlmIChkZXYtPmNhcHR1cmUubGFzdF90aW1lc3RhbXApIHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmLT52Yi52YjJfYnVmLnRp
bWVzdGFtcCA9Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZGV2LT5jYXB0dXJlLmxhc3RfdGltZXN0YW1wOwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfSBlbHNlIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYnVmLT52Yi52YjJfYnVmLnRpbWVzdGFtcCA9Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAga3RpbWVfdG9fbnMoZGV2LT5jYXB0dXJlLmtlcm5lbF9z
dGFydF90cyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgfQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldi0+Y2FwdHVyZS5s
YXN0X3RpbWVzdGFtcCA9IGJ1Zi0+dmIudmIyX2J1Zi50aW1lc3RhbXA7Cj4gPgo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIHZiMl9zZXRfcGxhbmVfcGF5bG9hZCgmYnVmLT52Yi52YjJfYnVmLCAw
LCBsZW5ndGgpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIHZiMl9idWZmZXJfZG9uZSgmYnVm
LT52Yi52YjJfYnVmLCBWQjJfQlVGX1NUQVRFX0RPTkUpOwo+ID4gQEAgLTU0MSw2ICs1NTAsNyBA
QCBzdGF0aWMgaW50IHN0YXJ0X3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwgdW5zaWdu
ZWQgaW50IGNvdW50KQo+ID4gICAgICAgICAgICAgICAgICAgICAgICBkZXYtPmNhcHR1cmUudmNf
c3RhcnRfdGltZXN0YW1wLCBwYXJhbWV0ZXJfc2l6ZSk7Cj4gPgo+ID4gICAgICAgZGV2LT5jYXB0
dXJlLmtlcm5lbF9zdGFydF90cyA9IGt0aW1lX2dldCgpOwo+ID4gKyAgICAgZGV2LT5jYXB0dXJl
Lmxhc3RfdGltZXN0YW1wID0gMDsKPiA+Cj4gPiAgICAgICAvKiBlbmFibGUgdGhlIGNhbWVyYSBw
b3J0ICovCj4gPiAgICAgICBkZXYtPmNhcHR1cmUucG9ydC0+Y2JfY3R4ID0gZGV2Owo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4MzUtY2FtZXJhL2Jj
bTI4MzUtY2FtZXJhLmggYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9iY20yODM1LWNh
bWVyYS9iY20yODM1LWNhbWVyYS5oCj4gPiBpbmRleCAyYjU2NzllLi4wOTI3M2IwIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEvYmNt
MjgzNS1jYW1lcmEuaAo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNt
MjgzNS1jYW1lcmEvYmNtMjgzNS1jYW1lcmEuaAo+ID4gQEAgLTkwLDYgKzkwLDggQEAgc3RydWN0
IGJtMjgzNV9tbWFsX2RldiB7Cj4gPiAgICAgICAgICAgICAgIHM2NCAgICAgICAgIHZjX3N0YXJ0
X3RpbWVzdGFtcDsKPiA+ICAgICAgICAgICAgICAgLyogS2VybmVsIHN0YXJ0IHRpbWVzdGFtcCBm
b3Igc3RyZWFtaW5nICovCj4gPiAgICAgICAgICAgICAgIGt0aW1lX3Qga2VybmVsX3N0YXJ0X3Rz
Owo+ID4gKyAgICAgICAgICAgICAvKiBUaW1lc3RhbXAgb2YgbGFzdCBmcmFtZSAqLwo+ID4gKyAg
ICAgICAgICAgICB1NjQgICAgICAgICAgICAgbGFzdF90aW1lc3RhbXA7Cj4gPgo+ID4gICAgICAg
ICAgICAgICBzdHJ1Y3QgdmNoaXFfbW1hbF9wb3J0ICAqcG9ydDsgLyogcG9ydCBiZWluZyB1c2Vk
IGZvciBjYXB0dXJlICovCj4gPiAgICAgICAgICAgICAgIC8qIGNhbWVyYSBwb3J0IGJlaW5nIHVz
ZWQgZm9yIGNhcHR1cmUgKi8KPiA+IC0tCj4gPiAyLjcuNAo+ID4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
