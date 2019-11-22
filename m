Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE9D107571
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Nov 2019 17:09:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 055F388307;
	Fri, 22 Nov 2019 16:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qv5jqxS7OKw9; Fri, 22 Nov 2019 16:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00AB4882F1;
	Fri, 22 Nov 2019 16:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4474A1BF311
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 16:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20079888B5
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 16:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZhGdFO5-c2Q for <devel@linuxdriverproject.org>;
 Fri, 22 Nov 2019 16:08:57 +0000 (UTC)
X-Greylist: delayed 00:08:34 by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFBC18887F
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 16:08:56 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id i7so2102460edt.1
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 08:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o/W4ayAOoACKQZVXBLP2Z/cgRT7wVm7u2PBZdtOrT5o=;
 b=jMlY2xqV1U4GP7NURAVPe7R9M0XRzk21qdvgXiCy5WaPBW/haBCpJXOt0hccpIbKpe
 yZOeBm+fYdAMGqoSFsMQGijq8Jpf5mgze83nD+dW4wrqmoE+DyRjZkonzlFprHEjuPen
 2eYXyMwCOyLUaqisdC/+8UftZHcskza9UjbXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o/W4ayAOoACKQZVXBLP2Z/cgRT7wVm7u2PBZdtOrT5o=;
 b=sFPzbj/68LKW4QMJ9GMv44rVya8Qo/5Rbi4tn6aEe4yGPuF9ToDAj2Yjk9AaPCIvM3
 0v7Q/q5bQ44DtSKTWB8h5Laz6xnwXwfeA7QSZkwj8cIbPrKF62FAPSfqWnGHc2+BhmIV
 HXcjvG/MqdNu439JOB4YVtoPhJtUEtUbFjNPFOWT3K4GnvhJ8Po8d4Xk7Bse2KxOLral
 km1UA/gKBxNd0TTyk0UnXD3GytwXuZGUcNKwFsfqs8nFpYeqkOPi/fT3+YO81Ninfp/+
 doyWtg9ys1PFGoZR1DqnMsrr8JJaGrzNHcJoDi2o2pu0tsyZ1QSeh8jXiqtewJyXegqn
 ReUw==
X-Gm-Message-State: APjAAAXXATWGf9H8eeV9mhpagoxv9pmicwwDqsn4aSJj1oMlG4dsRHs8
 MFi9zrosdtPoD/zBtebRKdqImiHzoZU=
X-Google-Smtp-Source: APXvYqwJsdjp7ZYpsORMjn0PAPZa7bEagCKSyEKOgyTgQ4dBj2R1jErJZUIwzOZFH96De0ofBbpJZA==
X-Received: by 2002:a17:906:751:: with SMTP id
 z17mr22598033ejb.313.1574438419823; 
 Fri, 22 Nov 2019 08:00:19 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id e16sm344762edu.31.2019.11.22.08.00.17
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Nov 2019 08:00:18 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id l17so7990163wmh.0
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 08:00:17 -0800 (PST)
X-Received: by 2002:a1c:40c1:: with SMTP id
 n184mr17914395wma.116.1574438417276; 
 Fri, 22 Nov 2019 08:00:17 -0800 (PST)
MIME-Version: 1.0
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
In-Reply-To: <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 23 Nov 2019 01:00:06 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
Message-ID: <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Support H264 profile control
To: Nicolas Dufresne <nicolas@ndufresne.ca>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hirokazu Honda <hiroh@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBOb3YgMjMsIDIwMTkgYXQgMTI6MDkgQU0gTmljb2xhcyBEdWZyZXNuZSA8bmljb2xh
c0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+Cj4gTGUgdmVuZHJlZGkgMjIgbm92ZW1icmUgMjAxOSDD
oCAxNDoxNiArMDkwMCwgSGlyb2thenUgSG9uZGEgYSDDqWNyaXQgOgo+ID4gVGhlIEhhbnRybyBH
MSBkZWNvZGVyIHN1cHBvcnRzIEguMjY0IHByb2ZpbGVzIGZyb20gQmFzZWxpbmUgdG8gSGlnaCwg
d2l0aAo+ID4gdGhlIGV4Y2VwdGlvbiBvZiB0aGUgRXh0ZW5kZWQgcHJvZmlsZS4KPiA+Cj4gPiBF
eHBvc2UgdGhlIFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9QUk9GSUxFIGNvbnRyb2wsIHNvIHRo
YXQgdGhlCj4gPiBhcHBsaWNhdGlvbnMgY2FuIHF1ZXJ5IHRoZSBkcml2ZXIgZm9yIHRoZSBsaXN0
IG9mIHN1cHBvcnRlZCBwcm9maWxlcy4KPgo+IFRoYW5rcyBmb3IgdGhpcyBwYXRjaC4gRG8geW91
IHRoaW5rIHdlIGNvdWxkIGFsc28gYWRkIHRoZSBMRVZFTCBjb250cm9sCj4gc28gdGhlIHByb2Zp
bGUvbGV2ZWwgZW51bWVyYXRpb24gYmVjb21lcyBjb21wbGV0ZSA/Cj4KPiBJJ20gdGhpbmtpbmcg
aXQgd291bGQgYmUgbmljZSBpZiB0aGUgdjRsMiBjb21wbGlhbmNlIHRlc3QgbWFrZSBzdXJlCj4g
dGhhdCBjb2RlY3MgZG8gaW1wbGVtZW50IHRoZXNlIGNvbnRyb2xzIChib3RoIHN0YXRlZnVsIGFu
ZCBzdGF0ZWxlc3MpLAo+IGl0J3MgZXNzZW50aWFsIGZvciBzdGFjayB3aXRoIHNvZnR3YXJlIGZh
bGxiYWNrLCBvciBtdWx0aXBsZSBjYXBhYmxlCj4gY29kZWMgaGFyZHdhcmUgYnV0IHdpdGggZGlm
ZmVyZW50IGNhcGFiaWxpdGllcy4KPgoKTGV2ZWwgaXMgYSBkaWZmaWN1bHQgc3RvcnksIGJlY2F1
c2UgaXQgYWxzbyBzcGVjaWZpZXMgdGhlIG51bWJlciBvZgptYWNyb2Jsb2NrcyBwZXIgc2Vjb25k
LCBidXQgZm9yIGRlY29kZXJzIGxpa2UgdGhpcyB0aGUgbnVtYmVyIG9mCm1hY3JvYmxvY2tzIHBl
ciBzZWNvbmQgaXQgY2FuIGhhbmRsZSBkZXBlbmRzIG9uIHRoaW5ncyB0aGUgZHJpdmVyCm1pZ2h0
IGJlIG5vdCBhd2FyZSBvZiAtIGNsb2NrIGZyZXF1ZW5jaWVzLCBERFIgdGhyb3VnaHB1dCwgc3lz
dGVtCmxvYWQsIGV0Yy4KCk15IHRha2Ugb24gdGhpcyBpcyB0aGF0IHRoZSBkZWNvZGVyIGRyaXZl
ciBzaG91bGQgYWR2ZXJ0aXNlIHRoZQpoaWdoZXN0IHJlc29sdXRpb24gdGhlIGRlY29kZXIgY2Fu
IGhhbmRsZSBkdWUgdG8gaGFyZHdhcmUgY29uc3RyYWludHMuClBlcmZvcm1hbmNlIHJlbGF0ZWQg
dGhpbmdzIGRlcGVuZCBvbiB0aGUgaW50ZWdyYXRpb24gZGV0YWlscyBhbmQKc2hvdWxkIGJlIG1h
bmFnZWQgZWxzZXdoZXJlLiBGb3IgZXhhbXBsZSBBbmRyb2lkIGFuZCBDaHJvbWUgT1MgbWFuYWdl
CmV4cGVjdGVkIGRlY29kaW5nIHBlcmZvcm1hbmNlIGluIHBlci1ib2FyZCBjb25maWd1cmF0aW9u
IGZpbGVzLgoKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBIaXJva2F6dSBIb25kYSA8aGlyb2hAY2hy
b21pdW0ub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50
cm9fZHJ2LmMgfCAxMCArKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+
ID4gaW5kZXggNmQ5ZDQxMTcwODMyLi45Mzg3NjE5MjM1ZDggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+IEBAIC0zNTUsNiArMzU1LDE2IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2N0cmwgY29udHJvbHNbXSA9IHsKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAuZGVmID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfU1RBUlRfQ09ERV9B
Tk5FWF9CLAo+ID4gICAgICAgICAgICAgICAgICAgICAgIC5tYXggPSBWNEwyX01QRUdfVklERU9f
SDI2NF9TVEFSVF9DT0RFX0FOTkVYX0IsCj4gPiAgICAgICAgICAgICAgIH0sCj4gPiArICAgICB9
LCB7Cj4gPiArICAgICAgICAgICAgIC5jb2RlYyA9IEhBTlRST19IMjY0X0RFQ09ERVIsCj4gPiAr
ICAgICAgICAgICAgIC5jZmcgPSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgLmlkID0gVjRM
Ml9DSURfTVBFR19WSURFT19IMjY0X1BST0ZJTEUsCj4gPiArICAgICAgICAgICAgICAgICAgICAg
Lm1pbiA9IFY0TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfQkFTRUxJTkUsCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgLm1heCA9IFY0TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfSElHSCwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAubWVudV9za2lwX21hc2sgPQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIEJJVChWNEwyX01QRUdfVklERU9fSDI2NF9QUk9GSUxFX0VYVEVOREVEKSwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAuZGVmID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJP
RklMRV9NQUlOLAo+ID4gKyAgICAgICAgICAgICB9Cj4gPiAgICAgICB9LCB7Cj4gPiAgICAgICB9
LAo+ID4gIH07Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
