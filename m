Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A010BFB237
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 15:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26E7686E82;
	Wed, 13 Nov 2019 14:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0eieizNEYEn; Wed, 13 Nov 2019 14:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6802B8695C;
	Wed, 13 Nov 2019 14:08:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4119D1BF304
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 14:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3738B220EC
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 14:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWXrdYN16Oud for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 14:08:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 472DF20784
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 14:08:48 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c184so1761581pfb.0
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 06:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dNZaaSn6X7mo6e817hfGQHfO+XXp7FF6FSyhzWZwtV8=;
 b=hhlYmKkJW0yhCxUyfUXfYsAJjHwDoIxtAnaMxjFFEIU6bywhUr03A5jZ+X6zF4ToAR
 Mesz825iTzjajGpFK2R8OEXpiYSobeDqCjCKv3kNmdVJW/TRJ3A+v7oHwLQHAP0xy0Hb
 wlLJix90nYNMrfvpO1m+SZ2riGZ7wQc7nt/aq8vZvkxS4mwbI0cQeF1bpiWXNHxgDbhR
 2wY4JEBTVKIlYF1ktNDZweFr0JCKo8pVogkW6pS1mionwO9lAWYkEk6udbignv9JbUB1
 BqtciSEHW5J4s1zkigTY1UkaOD4UoZ1U5pUjXvrliPAjUZO0Fs6uKS5WHcbtYovJ8J5C
 hCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dNZaaSn6X7mo6e817hfGQHfO+XXp7FF6FSyhzWZwtV8=;
 b=i/+kH1OiaPrGHRwHVg7vz7KHc11dcS29aeFhxxpiRa8b5WDbjfpi4KhxIBgskHnu9e
 n2WfgFfH2BGt3BlCyrQvzS64xWmTbAcwzd+F6IQ0PYLkt/gjy8bVukYn+wpB+435z9Gl
 iS9ZNd8+kcSahbkwzF+8cPK6veujveTTZjL9e16sFADo05V8GpEPVKKUAqIaxrQpMFA7
 LPtyVClNW0AFlh30JGSvGIa0xr/OBJ6jouLYDt/onggM0xioeOELWlIA4zz/kZxOY5xM
 Z+wDTzWb/oyEHG8fV2+z5+RvPMGmdOZ6sl59k99tD9xoA/uRDh65a7kpWbN0e9e+eUgX
 3rGg==
X-Gm-Message-State: APjAAAXrTP/ekrkbs8P0THtQls3v38/n1V63viWbJuNLvXp/E6r/pJVZ
 nl5SLgPOWukGjcu77Mmq94fM4twl/RWWA2CRFDFbqw==
X-Google-Smtp-Source: APXvYqxtpZ5veONp3+7eBYfcFSrOmpgN6Io0pjFSQP8EO8XhmVbKbDFqCWNh3DZdP1wiE1W0lUQdOBrFByQPDaQP0eE=
X-Received: by 2002:a17:90a:1b4d:: with SMTP id
 q71mr5224798pjq.120.1573654127473; 
 Wed, 13 Nov 2019 06:08:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
 <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
 <20191113053232.GA2036664@kroah.com>
In-Reply-To: <20191113053232.GA2036664@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 09:08:37 -0500
Message-ID: <CAKvFj6qoumyWy_ineP7ms+QuhK=euTRCt0Vo60_wUp_+OTCicg@mail.gmail.com>
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

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMTI6MzIgQU0gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDY6Mjk6NTVQ
TSAtMDUwMCwgTWFyY2VsbyBEaW9wLUdvbnphbGV6IHdyb3RlOgo+ID4gT24gVHVlLCBOb3YgMTIs
IDIwMTkgYXQgNjowOSBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3Jv
dGU6Cj4gPiA+Cj4gPiA+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDEyOjE0OjIzUE0gLTA1MDAs
IE1hcmNlbG8gRGlvcC1Hb256YWxleiB3cm90ZToKPiA+ID4gPiBUaGlzIGFsbG93cyB0aGUgcmVt
b3ZhbCBvZiB0aGUgc3RydWN0IHJwaV9maXJtd2FyZSogbWVtYmVyCj4gPiA+ID4gZnJvbSBzdHJ1
Y3QgdmNoaXFfZHJ2ZGF0YS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNlbG8g
RGlvcC1Hb256YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+
ID4gIC4uLi9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4MzVfYXJtLmMgICAgICAgICAgIHwg
MTQgKysrKysrKysrKysrKy0KPiA+ID4gPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3Zj
aGlxX2FybS92Y2hpcV9hcm0uYyAgfCAxNCAtLS0tLS0tLS0tLS0tLQo+ID4gPiA+ICAuLi4vdmMw
NF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5oICB8ICAxIC0KPiA+ID4g
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+
ID4KPiA+ID4gVGhpcyBjb21taXQgYnJlYWtzIHRoZSBidWlsZDoKPiA+ID4KPiA+ID4gSW4gZnVu
Y3Rpb24g4oCYZnJlZV9wYWdlbGlzdOKAmSwKPiA+ID4gICAgIGlubGluZWQgZnJvbSDigJh2Y2hp
cV9jb21wbGV0ZV9idWxr4oCZIGF0IGRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVy
ZmFjZS92Y2hpcV9hcm0vdmNoaXFfMjgzNV9hcm0uYzoyNTg6MzoKPiA+ID4gZHJpdmVycy9zdGFn
aW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjU4
ODo0OiB3YXJuaW5nOiBhcmd1bWVudCAyIG51bGwgd2hlcmUgbm9uLW51bGwgZXhwZWN0ZWQgWy1X
bm9ubnVsbF0KPiA+ID4gICA1ODggfCAgICBtZW1jcHkoKGNoYXIgKilrbWFwKHBhZ2VzWzBdKSAr
Cj4gPiA+ICAgICAgIHwgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gPiAg
IDU4OSB8ICAgICBwYWdlbGlzdC0+b2Zmc2V0LAo+ID4gPiAgICAgICB8ICAgICB+fn5+fn5+fn5+
fn5+fn5+fgo+ID4gPiAgIDU5MCB8ICAgICBmcmFnbWVudHMsCj4gPiA+ICAgICAgIHwgICAgIH5+
fn5+fn5+fn4KPiA+ID4gICA1OTEgfCAgICAgaGVhZF9ieXRlcyk7Cj4gPiA+ICAgICAgIHwgICAg
IH5+fn5+fn5+fn5+Cj4gPiA+Cj4gPiA+IFBsZWFzZSBiZSBtb3JlIGNhcmVmdWwgYW5kIGF0IGxl
YXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5nCj4gPiA+IHRoZW0gb3V0IDooCj4g
Pgo+ID4gQWggc29ycnkgOigoKC4gQ291bGQgeW91IGxldCBtZSBrbm93IHdoYXQgY29uZmlnIHlv
dSBzYXcgdGhhdCBlcnJvcgo+ID4gd2l0aD8gSSBzZWUgbm8gd2FybmluZ3MvZXJyb3JzIHdpdGgg
YmNtMjgzNV9kZWZjb25maWcuCj4KPiBJJ20ganVzdCBidWlsZGluZyBvbiB4ODYtNjQsIHRyeSAn
YWxsbW9kY29uZmlnJyBvbiB5b3VyIGRlc2t0b3AgYW5kIHNlZQo+IHdoYXQgaGFwcGVucy4KPgo+
IGdyZWcgay1oCgpBaCB5ZWFoIEkgc2VlIG5vdywgd2lsbCBmaXguCgotTWFyY2VsbwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
