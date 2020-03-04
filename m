Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D84B178E54
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 11:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D006A879A7;
	Wed,  4 Mar 2020 10:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sEEI+aGYJuts; Wed,  4 Mar 2020 10:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA87F86D7A;
	Wed,  4 Mar 2020 10:25:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD0B11BF40D
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 10:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B786186462
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 10:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ZYCDgJuVnEz for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 10:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D96CD815F3
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 10:25:46 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id u124so997385qkh.13
 for <devel@driverdev.osuosl.org>; Wed, 04 Mar 2020 02:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Vs92E6t2iJuDEH9h/ywUF++j9tfXcW1XKQ/oXX/xo3Y=;
 b=RjigAAWugnyIHTLiOk0B/tBTJhPYm5ficMzYvrryN0hWII15MfwhmtNWx1FR3JrZz2
 l44Lf9ONnMlrXypxK+2A/Ipxi9Psx6iNOBiQVbEV6/zxDgRkOl01SeknItPWeNiklsGK
 PQ78VQQ68xU+JcYiBvYgMpfY1n7lo9TdDwU5hBlDbzKC/whO2AkL7RcP1xOJz+W0fZO/
 Kev19kXp4Gpdv/6MueV44cVJ/hUnqZPnO8HRjvnbEmAqpVZ4I4ghfEZ8aCdwNjSAZc7C
 bo0ulzMJYScd3LnoTj/uXSkt87NSxRrzonQAmQqA0lh/k7XpDbErPVTdebGipuDNv40o
 rT7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Vs92E6t2iJuDEH9h/ywUF++j9tfXcW1XKQ/oXX/xo3Y=;
 b=eJ5DXkzL99iVmgmWV2BUVUYWt/RzXjm+HesiRAOpDJVeN2jV8X6dbyu4LJ2ehpfvkl
 c1n5b2XaR6b2vSXqGmQMs5dwnkHMx+ubSAWP+UHwoVzn/n3GDWynFU3cfqYOcrAxYRtw
 O2cZ1FKeHFkugiyB2u9T/3fiaPBZ4YwQo7xCyp3SxsV5pQA9sDNYEPmQEd2wtwdY5Gdr
 HX99AxjD/WoOVGEUHkp/qAKT3CNJwM3r4MkIjaofXur+ebD9pz5Ze5BtExJLwXxMdSov
 4OaHWsVvSQK1/c+i4sTcgHkdK0XJd8FClRiL7YOv0MZ+1EfAXWoyaocTGSPdaVdInxYc
 tK3g==
X-Gm-Message-State: ANhLgQ0goepEMg1R5BoMal9nOW8e4FQfeX8OG2HBoKRtVOoN1hhTANVY
 QyOqxCT6+/kF4KRSmug/59/J0lUx0D/usWRRLQo=
X-Google-Smtp-Source: ADFU+vs813/fagg85IoeT76Lq/3A1ZqT+Mq5gua/L+5xcvfreaqLMwonKgzuWMQ+Kjr6SLEw2PgaETteOwKeTmKx6wU=
X-Received: by 2002:a05:620a:13b5:: with SMTP id
 m21mr1994448qki.469.1583317545844; 
 Wed, 04 Mar 2020 02:25:45 -0800 (PST)
MIME-Version: 1.0
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
 <20200212215200.GA2367959@kroah.com>
 <CAKcpw6VczRuMC_KRzP6VRPeZPtmEpVOJE5Fc+JhDH4mWU7jUVg@mail.gmail.com>
 <20200304063910.GA1203555@kroah.com>
In-Reply-To: <20200304063910.GA1203555@kroah.com>
From: YunQiang Su <wzssyqa@gmail.com>
Date: Wed, 4 Mar 2020 18:25:34 +0800
Message-ID: <CAKcpw6Vt1wUGcps2b86YGU8gGijvKTa6ERL5F1Nk=utaJyz+kg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Re-instate octeon staging drivers
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
Cc: devel@driverdev.osuosl.org, Paul Burton <paulburton@kernel.org>,
 linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mips <linux-mips@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Ralf Baechle <ralf@linux-mips.org>, dan.carpenter@oracle.com,
 linux@roeck-us.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IOS6jjIwMjDlubQz5pyINOaXpeWR
qOS4iSDkuIvljYgyOjM55YaZ6YGT77yaCj4KPiBPbiBXZWQsIE1hciAwNCwgMjAyMCBhdCAwOTo0
ODo0NkFNICswODAwLCBZdW5RaWFuZyBTdSB3cm90ZToKPiA+IEdyZWcgS0ggPGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnPiDkuo4yMDIw5bm0MuaciDEz5pel5ZGo5ZubIOS4iuWNiDU6NTLlhpnp
gZPvvJoKPiA+ID4KPiA+ID4gT24gV2VkLCBGZWIgMDUsIDIwMjAgYXQgMDE6MTE6MTBQTSArMTMw
MCwgQ2hyaXMgUGFja2hhbSB3cm90ZToKPiA+ID4gPiBUaGlzIHNlcmllcyByZS1pbnN0YXRlcyB0
aGUgb2N0ZW9uIGRyaXZlcnMgdGhhdCB3ZXJlIHJlY2VudGx5IHJlbW92ZWQgYW5kCj4gPiA+ID4g
YWRkcmVzc2VzIHRoZSBidWlsZCBpc3N1ZXMgdGhhdCBsZWFkIHRvIHRoYXQgZGVjaXNpb24uCj4g
PiA+ID4KPiA+ID4gPiBJJ3ZlIGFwcHJvYWNoZWQgQ2F2aXVtL01hcnZlbGwgYWJvdXQgdGFraW5n
IGEgbW9yZSBhY3RpdmUgaW50ZXJlc3QgaW4gZ2V0dGluZwo+ID4gPiA+IHRoZSBjb2RlIG91dCBv
ZiBzdGFnaW5nIGFuZCBpbnRvIHRoZWlyIHByb3BlciBsb2NhdGlvbi4gTm8gcmVwbHkgb24gdGhh
dCAoeWV0KS4KPiA+ID4KPiA+ID4gR29vZCBsdWNrIHdpdGggdGFsa2luZyB0byB0aGUgY29tcGFu
aWVzLCBob3BlZnVsbHkgdGhhdCB3aWxsIHdvcmsuCj4gPiA+Cj4gPiA+IEFueXdheSwgSSd2ZSBh
cHBsaWVkIHRoaXMgc2VyaWVzLCB0aGFua3MgZm9yIHRoaXMsIGxldCdzIHNlZSB3aGF0IGJyZWFr
cwo+ID4gPiBub3cgOikKPiA+Cj4gPiBEaWQgeW91IG1lZXQgYW55IHByb2JsZW0gdG8gbWVyZ2Ug
Q2hyaXMncyBwYXRjaHNldD8KPgo+IFRoZXkgYXJlIGFsbCBpbiBsaW51eC1uZXh0LCBzbyB5b3Ug
Y2FuIHNlZSBmb3IgeW91cnNlbGYgOikKClRoYW5rIHlvdSBzbyBtdWNoLiBJIGZvdW5kIGl0LgpJ
dCBpcyB2ZXJ5IGltcG9ydGFudCBmb3IgRGViaWFuIE1JUFMgUG9ydHMgYXMgd2UgYXJlIHVzaW5n
IHNvbWUgb2YKT2N0ZW9uIG1hY2hpbmVzLgoKPgo+IGdyZWcgay1oCgoKCi0tIApZdW5RaWFuZyBT
dQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
