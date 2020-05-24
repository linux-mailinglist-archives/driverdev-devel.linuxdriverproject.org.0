Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F311DFF22
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 15:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8AD47221A9;
	Sun, 24 May 2020 13:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xqP+Z8l9u9+b; Sun, 24 May 2020 13:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C8E521FAC;
	Sun, 24 May 2020 13:32:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 270C71BF379
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 13:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14F7487E9B
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 13:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0zmiac6wEUvh for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 13:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8562987E75
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 13:32:27 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id z26so7644937pfk.12
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 06:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8P08CbbNlN5WCUXv/BNCisqhSof+4zFGpgMMgUbe9tk=;
 b=uoGMH3vBZ3swLnuwlu3/5/GyoIknUx5d+ckVHEY3ko2ITGEnYhSadgqrIsBZxW4L6G
 IYE5PaIeqfA6x5OrGMRwSUGrYk9WZ0giut/IaFPU5lW400L0v+greFtRajf3miCsAHAy
 pdgTcwOueZFN3p01ysE+YtJlNy/30kBUUeWM0TAIzEn4R0bNvk4rqsDKXRXdKedRTj3V
 bDrbroQfnmQEPNuA6qIfE0W6TPSgimKAd7fGfFqLQn5CbrSxX/9RGtUPNc/3Wa7B9sLE
 zCEmnI4U/w9pwvty2SRoojomqBJBcRJ4xgkyQ4AqJ5EJHc2xOJ4KqOxxCHZ3HaUeJN7j
 d1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8P08CbbNlN5WCUXv/BNCisqhSof+4zFGpgMMgUbe9tk=;
 b=a/i7o9giavZS2vjIomC2csFwOKcjwtBrjnqtn4HJnAzFafZHR6HAB/b6uXVMWRkUaT
 3mTAgZZwMjcnRP8RkF9Jl+ruOsNAtKDocraSX7ZoyANKQqJMR3M/PCWPLZNziCyWmWdC
 PgdFiEHY02/yrx7CN9XtmYDzQR0D8rdGuFmYUZhosF/2XmpHQFaJ9UUFeLRm4Y35pImK
 PckA9QhRNmgqsQmcbSgHKdpSJiyXtBS5y71C5SNBzNIl+pov916oeSHXt55hSVB9X6k4
 Y85ysMmzrcP+sIILhFYzAcCdlSPKpzKj1Ikq+lPatqpxqrmOkoU7UXjp0bqAZW9YnST3
 Qt7g==
X-Gm-Message-State: AOAM530kg8qmgxFmY+8mzLseQWsRbbcL3v7Y3VhBFB1yxjT9ks21n7EK
 aJVvt0KDF2zR+dqAOARYXmM=
X-Google-Smtp-Source: ABdhPJwpQGJWBf/p9NEJobAQPYUJvU5mJ6qqZMBpqRI+5DZyR4qrOIz0gc7juI3mglQYcN1dj/V4yQ==
X-Received: by 2002:a63:4c1f:: with SMTP id z31mr21909272pga.143.1590327147004; 
 Sun, 24 May 2020 06:32:27 -0700 (PDT)
Received: from xebrium.com ([182.70.106.85])
 by smtp.gmail.com with ESMTPSA id k2sm11305483pfd.108.2020.05.24.06.32.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 24 May 2020 06:32:26 -0700 (PDT)
Date: Sun, 24 May 2020 19:02:20 +0530
From: GAURAV PATHAK <gauravpathak129@gmail.com>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200524133218.GA1391@xebrium.com>
References: <20200524113613.GA19734@xebrium.com>
 <20200524121044.fzpm6hkqrrpa2yhc@ltop.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200524121044.fzpm6hkqrrpa2yhc@ltop.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TmV2ZXJtaW5kLCBteSBzcGFyc2UgdmVyc2lvbiB3YXMgYnJva2VuLiBJbnN0YWxsZWQgc3BhcnNl
IDAuNi4xLCBidXQKc3RpbGwgbm8gd2FybmluZ3MgZnJvbSBzcGFyc2UgaW4gYW55IG9mIHRoZSBk
aXJlY3RvcmllcyBpbiBkcml2ZXJzIHN0YWdpbmcuCgpFLmcuOgoKbWFrZSBDPTIgTT1kcml2ZXJz
L3N0YWdpbmcvc203NTBmYgogIENIRUNLICAgZHJpdmVycy9zdGFnaW5nL3NtNzUwZmIvc203NTAu
YwogIENIRUNLICAgZHJpdmVycy9zdGFnaW5nL3NtNzUwZmIvc203NTBfaHcuYwogIENIRUNLICAg
ZHJpdmVycy9zdGFnaW5nL3NtNzUwZmIvc203NTBfYWNjZWwuYwogIENIRUNLICAgZHJpdmVycy9z
dGFnaW5nL3NtNzUwZmIvc203NTBfY3Vyc29yLmMKICBDSEVDSyAgIGRyaXZlcnMvc3RhZ2luZy9z
bTc1MGZiL2Rkazc1MF9jaGlwLmMKICBDSEVDSyAgIGRyaXZlcnMvc3RhZ2luZy9zbTc1MGZiL2Rk
azc1MF9wb3dlci5jCiAgQ0hFQ0sgICBkcml2ZXJzL3N0YWdpbmcvc203NTBmYi9kZGs3NTBfbW9k
ZS5jCiAgQ0hFQ0sgICBkcml2ZXJzL3N0YWdpbmcvc203NTBmYi9kZGs3NTBfZGlzcGxheS5jCiAg
Q0hFQ0sgICBkcml2ZXJzL3N0YWdpbmcvc203NTBmYi9kZGs3NTBfc3dpMmMuYwogIENIRUNLICAg
ZHJpdmVycy9zdGFnaW5nL3NtNzUwZmIvZGRrNzUwX3NpaTE2NC5jCiAgQ0hFQ0sgICBkcml2ZXJz
L3N0YWdpbmcvc203NTBmYi9kZGs3NTBfZHZpLmMKICBDSEVDSyAgIGRyaXZlcnMvc3RhZ2luZy9z
bTc1MGZiL2Rkazc1MF9od2kyYy5jCiAgTU9EUE9TVCAxIG1vZHVsZXMKCgpGb3IgZmV3IGRyaXZl
cnMsIEkgYW0gZ2V0dGluZzoKCkNDIFtNXSAgZHJpdmVycy9zdGFnaW5nL3Z0NjY1Ni9rZXkubwog
IENIRUNLICAgZHJpdmVycy9zdGFnaW5nL3Z0NjY1Ni9yZi5jCi91c3IvbGliL2djYy94ODZfNjQt
bGludXgtZ251LzcvaW5jbHVkZS9zdGRkZWYuaDo0MTc6OTogd2FybmluZzogcHJlcHJvY2Vzc29y
IHRva2VuIG9mZnNldG9mIHJlZGVmaW5lZAouL2luY2x1ZGUvbGludXgvc3RkZGVmLmg6MTc6OTog
dGhpcyB3YXMgdGhlIG9yaWdpbmFsIGRlZmluaXRpb24KCmJ1dCBJIGd1ZXNzIHRoZXNlIGFyZSBm
YWxzZSBwb3NpdGl2ZSwgYXMgI3VuZGVmIG9mZnNldG9mIGlzIGFscmVhZHkgcHJlc2VudCBpbiAu
L2luY2x1ZGUvbGludXgvc3RkZGVmLmguCgpPbiBTdW4sIE1heSAyNCwgMjAyMCBhdCAwMjoxMDo0
NFBNICswMjAwLCBMdWMgVmFuIE9vc3RlbnJ5Y2sgd3JvdGU6Cj4gSGksCj4gCj4gT24gU3VuLCBN
YXkgMjQsIDIwMjAgYXQgMDU6MDY6MThQTSArMDUzMCwgR2F1cmF2IFBhdGhhayB3cm90ZToKPiA+
IFNpbGVuY2UgZm9sbG93aW5nIHNwYXJzZSB3YXJuaW5nOgo+ID4gZHJpdmVycy9zdGFnaW5nL2Nv
bWVkaS9kcml2ZXJzL2R0MjgxNC5jOiBJbiBmdW5jdGlvbiDigJhkdDI4MTRfaW50ZXJydXB04oCZ
Ogo+ID4gZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jOjE5Mzo2OiB3YXJu
aW5nOiB2YXJpYWJsZSDigJhkYXRh4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1z
ZXQtdmFyaWFibGVdCj4gPiAgIGludCBkYXRhOwo+ID4gICAgICAgXn5+fgo+ID4gZHJpdmVycy9z
dGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jOiBJbiBmdW5jdGlvbiDigJhkdDI4MTRfYXR0
YWNo4oCZOgo+ID4gZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jOjIzMjo2
OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhp4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1
dC1zZXQtdmFyaWFibGVdCj4gPiAgIGludCBpOwo+ID4gICAgICAgXgo+IAo+IFRoZXNlIHdhcm5p
bmdzIGFyZSBub3QgZnJvbSBzcGFyc2UgYnV0IHNpbXBseSBmcm9tIHRoZSBjb21waWxlci4KPiAg
Cj4gPiAgc3RhdGljIGlycXJldHVybl90IGR0MjgxNF9pbnRlcnJ1cHQoaW50IGlycSwgdm9pZCAq
ZCkKPiA+ICB7Cj4gPiAtCWludCBsbywgaGk7Cj4gPiAgCXN0cnVjdCBjb21lZGlfZGV2aWNlICpk
ZXYgPSBkOwo+ID4gIAlzdHJ1Y3QgZHQyODE0X3ByaXZhdGUgKmRldnByaXYgPSBkZXYtPnByaXZh
dGU7Cj4gPiAgCXN0cnVjdCBjb21lZGlfc3ViZGV2aWNlICpzID0gZGV2LT5yZWFkX3N1YmRldjsK
PiA+IC0JaW50IGRhdGE7Cj4gPiAgCj4gPiAgCWlmICghZGV2LT5hdHRhY2hlZCkgewo+ID4gIAkJ
ZGV2X2VycihkZXYtPmNsYXNzX2RldiwgInNwdXJpb3VzIGludGVycnVwdFxuIik7Cj4gPiAgCQly
ZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gPiAgCX0KPiA+ICAKPiA+IC0JaGkgPSBpbmIoZGV2LT5pb2Jh
c2UgKyBEVDI4MTRfREFUQSk7Cj4gPiAtCWxvID0gaW5iKGRldi0+aW9iYXNlICsgRFQyODE0X0RB
VEEpOwo+ID4gLQo+ID4gLQlkYXRhID0gKGhpIDw8IDQpIHwgKGxvID4+IDQpOwo+IAo+IE9LLCAn
ZGF0YScgaXMgdW51c2VkIGJ1dCBhcmUgdGhlc2UgMiAnaW5iKGRldi0+aW9iYXNlICsgRFQyODE0
X0RBVEEpJwo+IG5lZWRlZCBvciBub3Q/IEkgd291bGQgZ3Vlc3MgdGhhdCB0aGV5J3JlIG5lZWRl
ZCBidXQgSSBkb24ndCBrbm93Cj4gdGhpcyBoYXJkd2FyZS4KPiAKPiA+IEBAIC0yNDEsOCArMjMz
LDYgQEAgc3RhdGljIGludCBkdDI4MTRfYXR0YWNoKHN0cnVjdCBjb21lZGlfZGV2aWNlICpkZXYs
IHN0cnVjdCBjb21lZGlfZGV2Y29uZmlnICppdCkKPiA+ICAJCWRldl9lcnIoZGV2LT5jbGFzc19k
ZXYsICJyZXNldCBlcnJvciAoZmF0YWwpXG4iKTsKPiA+ICAJCXJldHVybiAtRUlPOwo+ID4gIAl9
Cj4gPiAtCWkgPSBpbmIoZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7Cj4gPiAtCWkgPSBpbmIo
ZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7Cj4gCj4gU2FtZSBoZXJlLgo+IAo+IC0tIEx1Ywpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
