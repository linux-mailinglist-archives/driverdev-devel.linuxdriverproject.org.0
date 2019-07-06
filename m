Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C830960FDE
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 12:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA01187866;
	Sat,  6 Jul 2019 10:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ys8VOt6bx0ri; Sat,  6 Jul 2019 10:37:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2244487762;
	Sat,  6 Jul 2019 10:37:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26A541BF2AE
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 10:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B454203D7
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 10:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id da7fps0A0X-z for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 10:37:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C3BD20198
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 10:37:56 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id w7so8939177oic.3
 for <devel@driverdev.osuosl.org>; Sat, 06 Jul 2019 03:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=I9lLw+p+dpF2AMi/OgsCaR2TnI2s0BzyVsp8WbGxG9Y=;
 b=iI1UUbeZm3cpKHaOF3ZAetgoj5KG9ejSoI2uy3bXOFZK06jqDCtZ+3Cwl2Sfh7rGRe
 WX+PDodPcxVXNNvVQPvfBtB3ieXHweFhLUaehFuyU0OLF0nqpyJ6GMeWG+Xt+xwuL6Sk
 FIr8GzylvxH+RyW792v8L5JuYSrcgNM8RmXlG7sQVIlPovYDAI0zxYAWS+83R4B9GI6q
 AixyUCcmnMeI02D2OtyLi5JAyYkeaO1BOZSDu8kO1hdRv9mnPddD0o+j1lLhRacAO85Q
 UgmynOlWciw5JsRym052edebhRa5mPyWNW/59PrV8m06VSOuwuoP6q0SEF32vByJ9xfP
 NJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=I9lLw+p+dpF2AMi/OgsCaR2TnI2s0BzyVsp8WbGxG9Y=;
 b=JjSIUSZcJ0G58tvReiSjSze8DTazpA9zJxhvzGBuCtxRNkHv0GK/i+VwsAOsF/QJoG
 2g2JS+mTPeiJn/QJxPVZcPWQSrb4JWej+OB3AYi8HVXu7FawuKo32pezGtUR1VN50gA8
 IZ3JaGPmWB2qveCWK+RR1tzZ1hn+/0isL2y3pVcYtjCqrDnce+Ii1auuLnr3+c6i/8Fy
 Q3voF20zLxhcG3sMGVBwtAyroQmVQUyxr1xHfFEwu5qQ1y8NqFbs+9dLsiP6QSGGIdEy
 0xq2QTQ5TUaGooLsP4x6JKYy+5661AVBETlbCVhR5pn7qikYHxIppz/qGke7xqm+YWtI
 fX5Q==
X-Gm-Message-State: APjAAAV97WwJUmP8nbtrF0zP+wwXS/Img/YLk/NVNHN39U4NRoVwwG9D
 I94RcX3MruTwOsz5OVg02POhpwZOoPDo1csAvQ0=
X-Google-Smtp-Source: APXvYqybdrptYE2pC/0xYiX0LVoqTqjOoP79fzxBEfhia64Xmna5sPRVvCbMcwbYtPLsLqo9DCdhKIKt+uAJPxpvy/E=
X-Received: by 2002:aca:2416:: with SMTP id n22mr4253502oic.116.1562409475543; 
 Sat, 06 Jul 2019 03:37:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190705203327.8493-1-opensource@vdorst.com>
In-Reply-To: <20190705203327.8493-1-opensource@vdorst.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 6 Jul 2019 12:37:44 +0200
Message-ID: <CAMhs-H9+jA1=_=V04ox8Nthdyc2xL4yGpzRr==Hh=P4Pb8ZZyg@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: Fix compiler error 'slot' may be
 used uninitialized
To: =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUmVuw6ksCgpPbiBGcmksIEp1bCA1LCAyMDE5IGF0IDEwOjM1IFBNIFJlbsOpIHZhbiBEb3Jz
dCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPiB3cm90ZToKPgo+IEluIGNvbW1pdCA4MDJhMmY3YjJm
ZTMgKCJzdGFnaW5nOiBtdDc2MjEtcGNpOiBmYWN0b3Igb3V0Cj4gJ210NzYyMV9wY2llX2VuYWJs
ZV9wb3J0JyBmdW5jdGlvbiIpLCBzbG90ID0gcG9ydC0+c2xvdDsgbGluZSB3YXMgcmVtb3ZlZC4K
PiBBbHNvIG90aGVyIGRldl9lcnIoKSBwcmludCBwYXJhbWV0ZXIgd2FzIGNoYW5nZWQgZnJvbSBz
bG90IHRvIHBvcnQtPnNsb3QuCj4gU28gdGhlIHNhbWUgc2hvdWxkIGJlIGRvbmUgaGVyZS4KPgo+
IFRoaXMgYWxzbyBmaXhlcyBjb21waWxlciBlcnJvcjoKPiBkcml2ZXJzL3N0YWdpbmcvbXQ3NjIx
LXBjaS9wY2ktbXQ3NjIxLmM6IEluIGZ1bmN0aW9uICdtdDc2MjFfcGNpX3Byb2JlJzoKPiAuL2lu
Y2x1ZGUvbGludXgvZGV2aWNlLmg6MTQ5MDoyOiB3YXJuaW5nOiAnc2xvdCcgbWF5IGJlIHVzZWQg
dW5pbml0aWFsaXplZCBpbiB0aGlzIGZ1bmN0aW9uIFstV21heWJlLXVuaW5pdGlhbGl6ZWRdCj4g
ICBfZGV2X2luZm8oZGV2LCBkZXZfZm10KGZtdCksICMjX19WQV9BUkdTX18pCj4gICBefn5+fn5+
fn4KPiBkcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9wY2ktbXQ3NjIxLmM6NTA0OjY6IG5vdGU6
ICdzbG90JyB3YXMgZGVjbGFyZWQgaGVyZQo+ICAgdTMyIHNsb3Q7Cj4gICAgICAgXn5+fgo+Cj4g
Rml4ZXM6IDgwMmEyZjdiMmZlMyAoInN0YWdpbmc6IG10NzYyMS1wY2k6IGZhY3RvciBvdXQgJ210
NzYyMV9wY2llX2VuYWJsZV9wb3J0JyBmdW5jdGlvbiIpCj4gU2lnbmVkLW9mZi1ieTogUmVuw6kg
dmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2lu
Zy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L210NzYyMS1wY2kvcGNpLW10NzYyMS5jIGIvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNp
LW10NzYyMS5jCj4gaW5kZXggMDNkOTE5YTk0NTUyLi44MTYwMGMwM2NhZTEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYyMS5jCj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYyMS5jCj4gQEAgLTUxMSw3ICs1MTEsNyBAQCBz
dGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9lbmFibGVfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpw
Y2llKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3J0LT5zbG90
KTsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIH0KPiAtICAgICAgICAgICAgICAgICAgICAgICBkZXZfaW5mbyhkZXYs
ICJQQ0lFJWQgZW5hYmxlZFxuIiwgc2xvdCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2
X2luZm8oZGV2LCAiUENJRSVkIGVuYWJsZWRcbiIsIHBvcnQtPnNsb3QpOwo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIG51bV9zbG90c19lbmFibGVkKys7Cj4gICAgICAgICAgICAgICAgIH0KPiAg
ICAgICAgIH0KPiAtLQo+IDIuMjAuMQo+CgpJIGRvbid0IGtub3cgd2hhdCB0cmVlIGFuZCBicmFu
Y2ggYXJlIHlvdSB1c2luZyBmb3IgdGhpcyBidXQgdGhpcyBpcwpraW5kIG9mIG9sZCBjb2RlLi4u
IFlvdSBzaG91bGQKdXNlIHN0YWdpbmcgZ2l0IHRyZWUsICdzdGFnaW5nLW5leHQnIGJyYW5jaCBm
b3Igc3RhZ2luZyBwYXRjaGVzIHRvCmF2b2lkIHByb2JsZW1zIGxpa2UgdGhpcy4KCkJlc3QgcmVn
YXJkcywKICAgIFNlcmdpbyBQYXJhY3VlbGxvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
