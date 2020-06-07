Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3611F0F7F
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jun 2020 22:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F1AE204EF;
	Sun,  7 Jun 2020 20:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EL7KdPHHzZ8R; Sun,  7 Jun 2020 20:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E9A22047A;
	Sun,  7 Jun 2020 20:21:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 050AA1BF422
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 20:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0150A858A6
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 20:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2mEIyM3ruPnH for <devel@linuxdriverproject.org>;
 Sun,  7 Jun 2020 20:21:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E0DB85888
 for <devel@driverdev.osuosl.org>; Sun,  7 Jun 2020 20:21:13 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id g62so9601410qtd.5
 for <devel@driverdev.osuosl.org>; Sun, 07 Jun 2020 13:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=9LawDuy/RIabvhu0uplVQvfkvDtwIE3mp3pxEyl0OCo=;
 b=xyg7NNw/6CFp+2prS3ZmKEc7KRZ4wF4LfFYUxmwtbWO2fPGtzUPYWot2jCEfSM8GL+
 vYu5mYUFBJROpZNlw1T8eezV+kJcsuplAIPX8kf2s3JOhMlQ+eRAh8yfyvwXx2hspAID
 ajbPtT1rvA8wAcQ/mvWr9l71Jmhuo2nD76GoGPBBxcuvmNcD13LZzVZSb6p8alA5LyO/
 sRhlPURTUNMCmBFQeXy0g2dNZAAC/1WIPzwDK1+gywjOIoESQLDBDp8caH/VgrkmAiw1
 UIm+tY45PrYEVtCGI2SpoqtZ8M/CDq9U0E+07+OpUw1anRWAij1ATw+g2gTXUQYGdLgc
 LlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9LawDuy/RIabvhu0uplVQvfkvDtwIE3mp3pxEyl0OCo=;
 b=J7a+hsNm0r5rtoQRh3zI4BtjwnxNmy58Bg35IeJSuHzEataT2uUDl3HDAHqi9C3wpk
 +UPtHImRSAivm6CECOsqsvGcVQuoOy6CXVqnAdYQRp+sAb6Pymo+E1C53zA2Kc1xKqJg
 CMvHj+oS8mdEjbFboppZZyZymx21adahQmAWWVCOam5Iw2DaqyxAhP3wizcBRMB8nSzO
 WJRJ8m8B+COQbLLAfXk2VzPbuORfJPO6CuJfTsivYqXKdVyqBlXPM3TjeEuRNF6rm6Un
 yPDNpA3GkiSXA3xGMlTiAsFWa/6w43pD0ZAoSwUue1h/7hER23fItrPkN+9VeuuMElZk
 HS5A==
X-Gm-Message-State: AOAM533+V8JkXVRfmhr56ydysH/iQ6c13WsLr4O/vbuUYm/P4nyWkq2U
 3GO4cFXRF6cnLBL+ztKsZxAJzg==
X-Google-Smtp-Source: ABdhPJyLwaCF3KfXtIkP4NWNySYcM34mEzgKXXQ6Qtd+nViXMM87OeQnxkJT1kGrsLiQODYghGvCOQ==
X-Received: by 2002:ac8:7296:: with SMTP id v22mr20359236qto.239.1591561272023; 
 Sun, 07 Jun 2020 13:21:12 -0700 (PDT)
Received: from skullcanyon
 (marriott-chateau-champlain-montreal.sites.intello.com. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id h77sm5633202qke.37.2020.06.07.13.21.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 13:21:11 -0700 (PDT)
Message-ID: <572f23d1945a685bf899e96de147454f31674ae1.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264
 content
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Jernej Skrabec
 <jernej.skrabec@siol.net>
Date: Sun, 07 Jun 2020 16:21:10 -0400
In-Reply-To: <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgc2FtZWRpIDA2IGp1aW4gMjAyMCDDoCAwOTo0NiAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIGEg
w6ljcml0IDoKPiBIaSBKZXJuZWosCj4gCj4gT24gVGh1LCA0IEp1biAyMDIwIGF0IDE1OjU1LCBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+IHdyb3RlOgo+ID4gQ3VycmVu
dGx5IEgyNjQgaW50ZXJsYWNlZCBjb250ZW50IGl0J3Mgbm90IHByb3Blcmx5IGRlY29kZWQgb24g
Q2VkcnVzLgo+ID4gVGhlcmUgYXJlIHR3byByZWFzb25zIGZvciB0aGlzOgo+ID4gMS4gc2xpY2Ug
cGFyYW1ldGVycyBjb250cm9sIGRvZXNuJ3QgcHJvdmlkZSBlbm91Z2ggaW5mb3JtYXRpb24KPiA+
IDIuIGJ1ZyBpbiBmcmFtZSBsaXN0IGNvbnN0cnVjdGlvbiBpbiBDZWRydXMgZHJpdmVyCj4gPiAK
PiA+IEFzIGRlc2NyaWJlZCBpbiBjb21taXQgbWVzc2FnZSBpbiBwYXRjaCAxLCByZWZlcmVuY2Vz
IHN0b3JlZCBpbgo+ID4gcmVmZXJlbmNlIGxpc3RzIHNob3VsZCB0ZWxsIGlmIHJlZmVyZW5jZSB0
YXJnZXRzIHRvcCBvciBib3R0b20gZmllbGQuCj4gPiBIb3dldmVyLCB0aGlzIGluZm9ybWF0aW9u
IGlzIGN1cnJlbnRseSBub3QgcHJvdmlkZWQuIFBhdGNoIDEgYWRkcwo+ID4gaXQgaW4gZm9ybSBv
ZiBmbGFncyB3aGljaCBhcmUgc2V0IGZvciBlYWNoIHJlZmVyZW5jZS4gUGF0Y2ggMiB0aGVuCj4g
PiB1c2VzIHRob3NlIGZsYWdzIGluIENlZHJ1cyBkcml2ZXIuCj4gPiAKPiA+IEZyYW1lIGxpc3Qg
Y29uc3RydWN0aW9uIGlzIGZpeGVkIGluIHBhdGNoIDMuCj4gPiAKPiA+IFRoaXMgc29sdXRpb24g
d2FzIGV4dGVuc2l2ZWx5IHRlc3RlZCB1c2luZyBLb2RpIG9uIExpYnJlRUxFQyB3aXRoIEE2NCwK
PiA+IEgzLCBINSBhbmQgSDYgU29DcyBpbiBzbGlnaHRseSBkaWZmZXJlbnQgZm9ybSAoZmxhZ3Mg
d2VyZSB0cmFuc21pdHRlZAo+ID4gaW4gTVNCIGJpdHMgaW4gaW5kZXgpLgo+ID4gCj4gCj4gU28s
IGlmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHkgdGhlIGZpZWxkIG5lZWRzIHRvIGJlIHBhc3NlZCBw
ZXItcmVmZXJlbmNlLAo+IGFuZCB0aGUgY3VycmVudCBwZXItRFBCIGVudHJ5IGlzIG5vdCBnb29k
PwoKRm9yIGludGVybGFjZWQgY29udGVudCB3ZSByZWZlcmVuY2UgZmllbGRzIHNlcGFyYXRlbHku
IFRoYXQncyB0aGUKcmVhc29uIHRoZXJlIGlzIDMyIGVudHJpZXMgaW4gbDAvbDEuIFRob3VnaCwg
YXMgd2UgZGVjb2RlIGJvdGggZmllbGRzCmluIHRoZSBzYW1lIGJ1ZmZlciAoaW50ZXJsZWF2ZWQp
LCB0aGUgRFBCIGluZGljZSBpcyBub3Qgc3VmZmljaWVudCB0bwppbmZvcm0gdGhlIGRlY29kZXIg
d2hhdCB3ZSBhcmUgcmVmZXJlbmNpbmcuIFVuZGVyc3RhbmQgdGhhdCBhIHRvcCBmaWVsZApjYW4g
YmUgdXNlZCB0byBkZWNvZGUgdGhlIG5leHQgYm90dG9tIGZpZWxkLiBUaGlzIGV2ZW4gbWFrZSBz
ZW5zZSBhcwp0aGV5IGFyZSBjbG9zZXIgb24gdGhlIGNhcHR1cmUgdGltZWxpbmUuIFRoaXMgY292
ZXJzIHNsaWNlIGJhc2VkCmRlY29kZXJzLgoKVGhlIGZsYWdzIHRvIGluZGljYXRlIHByZXNlbmNl
IG9mIHRvcC9ib3R0b20gZmllbGRzIGluIERQQiBhcnJheSBzZWVtcwpvbmx5IHVzZWZ1bCB0byBm
cmFtZSBiYXNlIGRlY29kZXJzLiBUaGlzIGlzIHNvIHRoYXQgZGVjb2RlciBjYW4gYXZvaWQKdXNp
bmcgbG9zdCBmaWVsZHMgd2hlbiBjb25zdHJ1Y3RpbmcgaXQncyBvd24gbDAvbDEgaW50ZXJuYWxs
eS4KCj4gCj4gSWYgeW91IGNvdWxkIHBvaW50IGF0IHRoZSB1c2Vyc3BhY2UgY29kZSBmb3IgdGhp
cywgaXQgd291bGQgYmUgaW50ZXJlc3RpbmcKPiB0byB0YWtlIGEgbG9vay4KPiAKPiA+IE5vdGU6
IEknbSBub3QgMTAwJSBzdXJlIGlmIGZsYWdzIGZvciBib3RoLCB0b3AgYW5kIGJvdHRvbSBmaWVs
ZHMgYXJlCj4gPiBuZWVkZWQuIEFueSBpbnB1dCBoZXJlIHdvdWxkIGJlIHdlbGNvbWUuCj4gPiAK
PiAKPiBHaXZlbiBlbnVtIHY0bDJfZmllbGQgaXMgYWxyZWFkeSBwYXJ0IG9mIHRoZSB1QVBJLCBw
ZXJoYXBzIGl0IG1ha2VzCj4gc2Vuc2UgdG8ganVzdCByZXVzZSB0aGF0IGZvciB0aGUgZmllbGQg
dHlwZT8gTWF5YmUgaXQncyBhbiBvdmVya2lsbCwKPiBidXQgaXQgd291bGQgbWFrZSBzZW5zZSB0
byByZXVzZSB0aGUgY29uY2VwdHMgYW5kIHR5cGVzIHRoYXQKPiBhbHJlYWR5IGV4aXN0Lgo+IAo+
IFdlIGNhbiBzdGlsbCBhZGQgYSByZXNlcnZlZCBmaWVsZCB0byBtYWtlIHRoaXMgbmV3IHJlZmVy
ZW5jZSB0eXBlCj4gZXh0ZW5zaXZlLgoKSSB0aGluayBpdCdzIGZpbmUgdG8gY3JlYXRlIG5ldyBm
bGFnIGZvciB0aGlzLCBhcyB5b3VyIHNvbHV0aW9uIHdvdWxkCnJlcXVpcmUgZXh0ZW5kaW5nIGEg
cmVmZXJlbmNlIHRvIDI0Yml0ICh0aGlzIHBhdGNoIGV4dGVuZCB0byAxNmJpdHMpLgpUaG91Z2gg
aW5kZWVkLCB3ZSBjb3VsZCBjb21iaW5lIGZyYW1lIGFuZCBUT1AgYW5kIHJlc2VydmUgbW9yZSBi
aXRzIGZvcgpmdXR1cmUgdXNlLgoKPiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKPiAKPiA+IFBs
ZWFzZSB0YWtlIGEgbG9vay4KPiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAK
PiA+IEplcm5laiBTa3JhYmVjICgzKToKPiA+ICAgbWVkaWE6IHVhcGk6IGgyNjQ6IHVwZGF0ZSBy
ZWZlcmVuY2UgbGlzdHMKPiA+ICAgbWVkaWE6IGNlZHJ1czogaDI2NDogUHJvcGVybHkgY29uZmln
dXJlIHJlZmVyZW5jZSBmaWVsZAo+ID4gICBtZWRpYTogY2VkcnVzOiBoMjY0OiBGaXggZnJhbWUg
bGlzdCBjb25zdHJ1Y3Rpb24KPiA+IAo+ID4gIC4uLi9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVj
LnJzdCAgICAgICAgICAgICB8IDQwICsrKysrKysrKysrKysrKysrKy0KPiA+ICAuLi4vc3RhZ2lu
Zy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAgfCAyNyArKysrKysrLS0tLS0tCj4g
PiAgaW5jbHVkZS9tZWRpYS9oMjY0LWN0cmxzLmggICAgICAgICAgICAgICAgICAgIHwgMTIgKysr
KystCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gLS0KPiA+IDIuMjcuMAo+ID4gCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
