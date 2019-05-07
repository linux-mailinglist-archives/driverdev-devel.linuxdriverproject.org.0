Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B106216021
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 11:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E52E085F2B;
	Tue,  7 May 2019 09:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bgz5pCy_B45x; Tue,  7 May 2019 09:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FC2185F0F;
	Tue,  7 May 2019 09:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D72F1BF853
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 09:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99C108584F
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 09:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L6isVM-hhdwv for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 09:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80EFE8569B
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 09:07:44 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id w13so9907617vsc.4
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 02:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8lThRAo28vQwCl4DV4/hRXs4pusVcLZ06vXVXU+ReNg=;
 b=CAmAZidSSud6IM0bN4tQWSN/TvnMdAje3rGsyILZSjnHx8NB1i2JWvMfQygQNRvPvI
 jr2xLHmmup7ocxtso00UHcxgm0CDXjDidEKOjhwCrtx9tqgBJodqfeh7lg8L5GO9xyPK
 DqphOG7Sp0mlUfHKh0GdsZXTmIXbi+bAQdb8Ls19e22RevYXNEMtd1bTwXRCgE/3ULal
 Xq0VFEaAcfDJR/c/TlftX8jphaUeuJhfwTpzIrF4VwqAUPdGY2WEIlnhjLM56T09P2rl
 48AsY87NyG0e+tkXhoHs+mPJh7mb867NnxhS0mvs/4M0PJcWh5et5i+L3bOeXYBhEy+/
 G6+Q==
X-Gm-Message-State: APjAAAXm73TTMcW8kR/WIdTwUsY/+9qdp8ML4T6eLhSkhQ1Qi3jhwOdD
 sK8cLoEf6eeaHo8+Q5PBK1eF5V4llA7WLevpKK4=
X-Google-Smtp-Source: APXvYqyd0GOgX82w7/Ps0Lm4sBbfBrQV34Mg2L46fkooG6+5Z29jjbCP+ChBPEI7uLyAXz7jM3WBzg+6K0S1grth8pg=
X-Received: by 2002:a67:8e03:: with SMTP id q3mr15845324vsd.152.1557220063399; 
 Tue, 07 May 2019 02:07:43 -0700 (PDT)
MIME-Version: 1.0
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
In-Reply-To: <1557177887-30446-1-git-send-email-ynezz@true.cz>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 May 2019 11:07:31 +0200
Message-ID: <CAMuHMdVra2h00OUCxZ1s=ExpkgkN_SGZdUtdohBapjNHf6hesQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUGV0ciwKCk9uIE1vbiwgTWF5IDYsIDIwMTkgYXQgMTE6MjUgUE0gUGV0ciDFoHRldGlhciA8
eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gdGhpcyBwYXRjaCBzZXJpZXMgaXMgYW4gYXR0ZW1wdCB0
byBmaXggdGhlIG1lc3MsIEkndmUgc29tZWhvdyBtYW5hZ2VkIHRvCj4gaW50cm9kdWNlLgo+Cj4g
Rmlyc3QgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgaXMgZGVmYWN0byB2NSBvZiB0aGUgcHJldmlvdXMg
MDUvMTAgcGF0Y2ggaW4gdGhlCj4gc2VyaWVzLCBidXQgc2luY2UgdGhlIHY0IG9mIHRoaXMgMDUv
MTAgcGF0Y2ggd2Fzbid0IHBpY2tlZCB1cCBieSB0aGUKPiBwYXRjaHdvcmsgZm9yIHNvbWUgdW5r
bm93biByZWFzb24sIHRoaXMgcGF0Y2ggd2Fzbid0IGFwcGxpZWQgd2l0aCB0aGUgb3RoZXIKPiA5
IHBhdGNoZXMgaW4gdGhlIHNlcmllcywgc28gSSdtIHJlc2VuZGluZyBpdCBhcyBhIHNlcGFyYXRl
IHBhdGNoIG9mIHRoaXMKPiBmaXh1cCBzZXJpZXMgYWdhaW4uCj4KPiBTZWNvbmQgcGF0Y2ggaXMg
YSByZXN1bHQgb2YgdGhpcyByZWJhc2UgYWdhaW5zdCBuZXQtbmV4dCB0cmVlLCB3aGVyZSBJIHdh
cwo+IGNoZWNraW5nIGFnYWluIGFsbCBjdXJyZW50IHVzZXJzIG9mIG9mX2dldF9tYWNfYWRkcmVz
cyBhbmQgZm91bmQgb3V0LCB0aGF0Cj4gdGhlcmUncyBuZXcgb25lIGluIERTQSwgc28gSSd2ZSBj
b252ZXJ0ZWQgdGhpcyB1c2VyIHRvIHRoZSBuZXcgRVJSX1BUUgo+IGVuY29kZWQgZXJyb3IgdmFs
dWUgYXMgd2VsbC4KPgo+IFRoaXJkIHBhdGNoIHdoaWNoIHdhcyBzZW50IGFzIHY1IHdhc24ndCBj
b25zaWRlcmVkIGZvciBtZXJnZSwgYnV0IEkgc3RpbGwKPiB0aGluaywgdGhhdCB3ZSBuZWVkIHRv
IGNoZWNrIGZvciBwb3NzaWJsZSBOVUxMIHZhbHVlLCB0aHVzIGN1cnJlbnQgSVNfRVJSCj4gY2hl
Y2sgaXNuJ3Qgc3VmZmljaWVudCBhbmQgd2UgbmVlZCB0byB1c2UgSVNfRVJSX09SX05VTEwgaW5z
dGVhZC4KPgo+IEZvdXJ0aCBwYXRjaCBmaXhlcyB3YXJuaW5nIHJlcG9ydGVkIGJ5IGtidWlsZCB0
ZXN0IHJvYm90Lgo+Cj4gQ2hlZXJzLAo+Cj4gUGV0cgo+Cj4gUGV0ciDFoHRldGlhciAoNCk6Cj4g
ICBuZXQ6IGV0aGVybmV0OiBzdXBwb3J0IG9mX2dldF9tYWNfYWRkcmVzcyBuZXcgRVJSX1BUUiBl
cnJvcgoKSSBkaWRuJ3QgcmVjZWl2ZSB0aGUgcGF0Y2ggdGhyb3VnaCBlbWFpbCwgYnV0IHBhdGNo
d29yayBkb2VzIGhhdmUgaXQ6Cmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5
NjA1NC8KClRoaXMgZml4ZXMgdGhlIGNyYXNoICgiVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgcGFn
aW5nIHJlcXVlc3QgYXR2aXJ0dWFsCmFkZHJlc3MgZmZmZmZmZmUiKSBJJ20gc2VlaW5nIHdpdGgg
c2hfZXRoIG9uIHI4YTc3OTEva29lbHNjaCwgc28KClRlc3RlZC1ieTogR2VlcnQgVXl0dGVyaG9l
dmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAg
ICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUn
cyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBw
ZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2Vs
ZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
