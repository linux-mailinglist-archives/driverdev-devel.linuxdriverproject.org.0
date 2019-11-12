Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EAAF9E3C
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 00:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD0F18589C;
	Tue, 12 Nov 2019 23:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWvPeg2iIgLm; Tue, 12 Nov 2019 23:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2633F854AD;
	Tue, 12 Nov 2019 23:36:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F1B51BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 297E887812
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4qc+aD4+G4C for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 23:36:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9BE75877E1
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 23:36:04 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id x28so220630pfo.6
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 15:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pVNrZKD9Z8WWf0+1ftmtKGoQQYjS4HXbdTudx8esSYQ=;
 b=aICqopTn7AxyggP0Zdm18mPxH22cTRgVrLrBGzv4X8tDBMqEqobBn6KRnC0ON7IyUW
 JgimYS71loa5PUZ6VW1tVpAN5N9b/JDlLaHqrzqm8R55tmpveasU15IKbl1stIO0Jvio
 jhSror101VFuhVeS7KDTYF+QW3j9KE34GaIL71cRX8lc4dwKC5tmbPuQCsFJNSZgKeyy
 AVVx6AsungaD4G3Q+37yckq+9PJvVaqsQgQ+oGfu1TtA+jgl2HsUjHKGM2F6E2OnnJhx
 bW006EPSQr8NmiYbR3pVCjdnCAijNs/WWtKIeqbgL2E/QlnDKgOk+Rtp3tALX/xVFfme
 YfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pVNrZKD9Z8WWf0+1ftmtKGoQQYjS4HXbdTudx8esSYQ=;
 b=Me4UrZOYRcrPzJwikB+mMua8+wvQPUcbF4tjBC3BkWUBkB++I7SMO8ScCQ1pZGxUAr
 7YTt2Srl7nN2DNeL/QZaqnY5L3fhXS8SK6/o2akhKANxbTbitkjziv9FHFbHU/Q+agZi
 4142+D2ilk7CUZRCnUyLeR+vzg0wQupgydbYqfwkzvsEeZ9itbKFSPj4yRjNO40VXmsr
 khbyqXgACsRefECw9FEMMw2C380dm3Zfb8bibWricCVuYN06y3zdP/RBGDZS+O8xu2i0
 4H4UP5RL2xLFm2cbA/zFyx0Nna63wAY8I5pGJKuTU9zPtz4u375C5vj17i1x/QDEOTX0
 fwkA==
X-Gm-Message-State: APjAAAVukTZ+dQBy65Il+Mb0zP5yvPN7Pypjg363Cg8pRxJWOD5o8UhN
 QiHS7/qfIS8LIfwlAGPeBvK0kMY0K+9sgfMN4qrAGJaJ
X-Google-Smtp-Source: APXvYqyJstxvO1R8RnLJJvsyWRzYsu4AfCEKenLKtChVknS6nFmoP/ZL31Uq4If2/SX52CXlqaTqyiG+E1UqfR5sdiQ=
X-Received: by 2002:a63:395:: with SMTP id 143mr94796pgd.93.1573601406044;
 Tue, 12 Nov 2019 15:30:06 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
In-Reply-To: <20191112230915.GA1931478@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Tue, 12 Nov 2019 18:29:55 -0500
Message-ID: <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net,
 Stefan Wahren <wahrenst@gmx.net>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgNjowOSBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCAxMjoxNDoyM1BN
IC0wNTAwLCBNYXJjZWxvIERpb3AtR29uemFsZXogd3JvdGU6Cj4gPiBUaGlzIGFsbG93cyB0aGUg
cmVtb3ZhbCBvZiB0aGUgc3RydWN0IHJwaV9maXJtd2FyZSogbWVtYmVyCj4gPiBmcm9tIHN0cnVj
dCB2Y2hpcV9kcnZkYXRhLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNlbG8gRGlvcC1Hb256
YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vaW50ZXJmYWNl
L3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKyst
Cj4gPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYyAg
fCAxNCAtLS0tLS0tLS0tLS0tLQo+ID4gIC4uLi92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hp
cV9hcm0vdmNoaXFfYXJtLmggIHwgIDEgLQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4KPiBUaGlzIGNvbW1pdCBicmVha3MgdGhlIGJ1aWxk
Ogo+Cj4gSW4gZnVuY3Rpb24g4oCYZnJlZV9wYWdlbGlzdOKAmSwKPiAgICAgaW5saW5lZCBmcm9t
IOKAmHZjaGlxX2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2Vydmlj
ZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgo+IGRyaXZlcnMv
c3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfMjgzNV9hcm0u
Yzo1ODg6NDogd2FybmluZzogYXJndW1lbnQgMiBudWxsIHdoZXJlIG5vbi1udWxsIGV4cGVjdGVk
IFstV25vbm51bGxdCj4gICA1ODggfCAgICBtZW1jcHkoKGNoYXIgKilrbWFwKHBhZ2VzWzBdKSAr
Cj4gICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICA1ODkgfCAg
ICAgcGFnZWxpc3QtPm9mZnNldCwKPiAgICAgICB8ICAgICB+fn5+fn5+fn5+fn5+fn5+fgo+ICAg
NTkwIHwgICAgIGZyYWdtZW50cywKPiAgICAgICB8ICAgICB+fn5+fn5+fn5+Cj4gICA1OTEgfCAg
ICAgaGVhZF9ieXRlcyk7Cj4gICAgICAgfCAgICAgfn5+fn5+fn5+fn4KPgo+IFBsZWFzZSBiZSBt
b3JlIGNhcmVmdWwgYW5kIGF0IGxlYXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5n
Cj4gdGhlbSBvdXQgOigKCkFoIHNvcnJ5IDooKCguIENvdWxkIHlvdSBsZXQgbWUga25vdyB3aGF0
IGNvbmZpZyB5b3Ugc2F3IHRoYXQgZXJyb3IKd2l0aD8gSSBzZWUgbm8gd2FybmluZ3MvZXJyb3Jz
IHdpdGggYmNtMjgzNV9kZWZjb25maWcuCj4KPiBncmVnIGstaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
