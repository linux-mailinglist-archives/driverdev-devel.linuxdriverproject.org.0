Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4846116001
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 11:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FEFC87B5B;
	Tue,  7 May 2019 09:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ghGzTkEuJQvK; Tue,  7 May 2019 09:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 827DD86F1B;
	Tue,  7 May 2019 09:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE8C1BF3AD
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 09:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F96887364
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 09:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E99D8ni8p0g8 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 09:01:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E849F86F1B
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 09:01:42 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3CDFA6E34;
 Tue,  7 May 2019 11:01:39 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id dba1650f;
 Tue, 7 May 2019 11:01:37 +0200 (CEST)
Date: Tue, 7 May 2019 11:01:37 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: netdev patchwork issues [Was: Re: [PATCH net-next v2 0/4]
 of_get_mac_address ERR_PTR fixes]
Message-ID: <20190507090137.GJ81826@meh.true.cz>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <20190507071914.GJ2269@kadam> <20190507083918.GI81826@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507083918.GI81826@meh.true.cz>
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Jeremy Kerr <jk@ozlabs.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMDUtMDcgMTA6Mzk6MThdOgoKW2Fk
ZGluZyBKZXJlbXkgdG8gdGhlIENjOiBsb29wXQoKPiBpdCB3YXMgYXBwbGllZFsyXSB0byBEYXZp
ZCdzIG5ldC1uZXh0IHRyZWUsIGJ1dCB1bmZvcnR1bmF0ZWx5IHBhcnRpYWx5LCBqdXN0IDkKPiBw
YXRjaGVzIG91dCBvZiAxMCwgYXMgdGhlIHBhdGNoIDA1LzEwIGluIHRoYXQgc2VyaWVzICh3aGlj
aCBpcyBwYXRjaCAxLzQgaW4KPiB0aGlzIHNlcmllcykgbmV2ZXIgcmVhY2hlZCBuZXRkZXYgbWFp
bGluZyBsaXN0IGFuZCBwYXRjaHdvcmssIHByb2JhYmx5IGJlY2F1c2UKPiBvZiBzb21lIG5ldGRl
diBtYWlsaW5nIGxpc3Qgc29mdHdhcmUgYW5kL29yIHBhdGNod29yayBoaWNjdXAsIHZlcnkgbGlr
ZWx5IGR1ZQo+IHRvIHRoZSBsb25nIGxpc3Qgb2YgcmVjaXBpZW50cyBpbiB0aGF0IHBhdGNoIGFu
ZCBhcyBJJ20gbm90IHN1YnNjcmliZWQgdG8gdGhlCj4gbmV0ZGV2IChkdWUgdG8gdGhlIGhpZ2gg
dHJhZmZpYykgSSdtIHByb2JhYmx5IHRyZWF0ZW4gc29tZWhvdyBkaWZmZXJlbnRseS4KCkZvciB0
aGUgcmVjb3JkLCBJJ3ZlIGZvbGxvd2luZyBpbiBteSB+Ly5naXRjb25maWc6CgogW3NlbmRlbWFp
bC5saW51eF0KICAgIHRvY21kID0iYHB3ZGAvc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5v
Z2l0IC0tbm9naXQtZmFsbGJhY2sgLS1ub3JvbGVzdGF0cyAtLW5vbCIKICAgIGNjY21kID0iYHB3
ZGAvc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5vZ2l0IC0tbm9naXQtZmFsbGJhY2sgLS1u
b3JvbGVzdGF0cyAtLW5vbSIKCmFuZCBJJ3ZlIHNlbnQgdGhlIHBhdGNoZXMgd2l0aCB0aGUgZm9s
bG93aW5nIGNvbW1hbmQ6CgogZ2l0IHNlbmQtZW1haWwgXAoJLS10byBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnIFwKCS0tdG8gJ0RhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4nIFwK
CS0tY2MgJ0FuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4nIFwKCS0tY2MgJ0Zsb3JpYW4gRmFp
bmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPicgXAoJLS1jYyAnSGVpbmVyIEthbGx3ZWl0IDxo
a2FsbHdlaXQxQGdtYWlsLmNvbT4nIFwKCS0tY2MgJ0ZyYW5rIFJvd2FuZCA8ZnJvd2FuZC5saXN0
QGdtYWlsLmNvbT4nIFwKCS0tY2MgJ2RldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnJyBcCgktLWNj
ICdsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnJyBcCgktLWNjICdHcmVnIEtyb2FoLUhhcnRt
YW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPicgXAoJLS1jYyAnTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4nIFwKCS0taWRlbnRpdHkgbGludXggdG1wL252bWVt
LWZpeC12Mi8wMDAqCgp3aGljaCByZXN1bHRlZCBqdXN0IGluIHRoZSBmb2xsb3dpbmcgNCBib3Vu
Y2VzOgoKICogbmJkQG9wZW53cnQub3JnIChubyBzdWNoIHJlY2lwaWVudCkKICoga3MuZ2lyaUBz
YW1zdW5nLmNvbSAobm8gc3VjaCByZWNpcGllbnQpCiAqIHZpcHVsLnBhbmR5YUBzYW1zdW5nLmNv
bSAobm8gc3VjaCByZWNpcGllbnQpCgogWW91ciBtYWlsIHRvICdsaW51eC1hcm0ta2VybmVsJyB3
aXRoIHRoZSBzdWJqZWN0CgogICAgW1BBVENIIG5ldC1uZXh0IHYyIDEvNF0gbmV0OiBldGhlcm5l
dDogc3VwcG9ydCBvZl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IKCiBJcyBiZWlu
ZyBoZWxkIHVudGlsIHRoZSBsaXN0IG1vZGVyYXRvciBjYW4gcmV2aWV3IGl0IGZvciBhcHByb3Zh
bC4gIFRoZSByZWFzb24KIGl0IGlzIGJlaW5nIGhlbGQ6CgogICAgVG9vIG1hbnkgcmVjaXBpZW50
cyB0byB0aGUgbWVzc2FnZQoKU28gbWF5YmUgbmV0ZGV2IGhhdmUgc2ltaWxhciBtb2RlcmF0aW9u
IHN0dWZmIGVuYWJsZWQsIGJ1dCBkb2Vzbid0IHNlbmQgb3V0CnRoaXMgbm90aWNlcyBiYWNrPyBJ
J3ZlICJmaXhlZCIgdGhlIGlzc3VlIHdpdGggdGhlIGZvbGxvd2luZyB3b3JrYXJvdW5kOgoKIGdp
dCBzZW5kLWVtYWlsIFwKIAktLXRvIG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcgXAoJLS1pbi1yZXBs
eS10byAnPDE1NTcxNzc4ODctMzA0NDYtMS1naXQtc2VuZC1lbWFpbC15bmV6ekB0cnVlLmN6Picg
XAoJdG1wL252bWVtLWZpeC12Mi8wMDAxLW5ldC1ldGhlcm5ldC1zdXBwb3J0LW9mX2dldF9tYWNf
YWRkcmVzcy1uZXctRVJSX1BUUi0ucGF0Y2gKClRoYXQgaXMsIGp1c3QgdXNpbmcgbmV0ZGV2IGFz
IHRoZSBzb2xlIHJlY2lwaWVudCBhbmQgdGhlbiB0aGUgcGF0Y2ggaGFzCmFwcGVhcmVkIGluIHRo
ZSBwYXRjaHdvcmsgYW5kIGluIHRoZSBtYWlsaW5nIGxpc3QgYXJjaGl2ZSBhcyB3ZWxsLgoKLS0g
eW5lenoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
