Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8272FED11
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 15:40:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 422D522640;
	Thu, 21 Jan 2021 14:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hl3ti20dE8mw; Thu, 21 Jan 2021 14:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52E0D21519;
	Thu, 21 Jan 2021 14:39:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06AA51BF363
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 14:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 007A286239
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 14:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GcHUGZ9W7EoP for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 14:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DBEA38612E
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 14:39:53 +0000 (UTC)
X-Originating-IP: 86.201.233.230
Received: from xps13 (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr
 [86.201.233.230]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id CDBBA1BF20A;
 Thu, 21 Jan 2021 14:39:48 +0000 (UTC)
Date: Thu, 21 Jan 2021 15:39:47 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v7 0/7] clk: clk-wizard: clock-wizard: Driver updates
Message-ID: <20210121153947.04da6fc1@xps13>
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, git@xilinx.com,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU2h1YmhyYWp5b3RpLAoKU2h1YmhyYWp5b3RpIERhdHRhIDxzaHViaHJhanlvdGkuZGF0dGFA
eGlsaW54LmNvbT4gd3JvdGUgb24gV2VkLCA0IE5vdgoyMDIwIDIwOjM2OjQwICswNTMwOgoKPiBJ
biB0aGUgdGhyZWFkIFsxXSBHcmVnIHN1Z2dlc3RlZCB0aGF0IHdlIG1vdmUgdGhlIGRyaXZlcgo+
IHRvIHRoZSBjbGsgZnJvbSB0aGUgc3RhZ2luZy4KPiBBZGQgcGF0Y2hlcyB0byBhZGRyZXNzIHRo
ZSBjb25jZXJucyByZWdhcmRpbmcgdGhlIGZyYWN0aW9uYWwgYW5kCj4gc2V0IHJhdGUgc3VwcG9y
dCBpbiB0aGUgVE9ETy4KPiAKPiBUaGUgcGF0Y2ggc2V0IGRvZXMgdGhlIGZvbGxvd2luZwo+IC0g
VHJpdmlhbCBmaXhlcyBmb3Iga2VybmVsIGRvYy4KPiAtIE1vdmUgdGhlIGRyaXZlciB0byB0aGUg
Y2xrIGZvbGRlcgo+IC0gQWRkIGNhcGFiaWxpdHkgdG8gc2V0IHJhdGUuCj4gLSBBZGQgZnJhY3Rp
b25hbCBzdXBwb3J0Lgo+IC0gQWRkIHN1cHBvcnQgZm9yIGNvbmZpZ3VyYWJsZSBvdXRwdXRzLgo+
IC0gTWFrZSB0aGUgb3V0cHV0IG5hbWVzIHVuaXF1ZSBzbyB0aGF0IG11bHRpcGxlIGluc3RhbmNl
cwo+IGRvIG5vdCBjcmliLgoKQ2FuIHNvbWVvbmUgdGVsbCBtZSB0aGUgc3RhdHVzIG9mIHRoaXMg
c2VyaWVzPyBJIHRoaW5rIGl0IHdvdWxkCmJlbmVmaXQgZXZlcnlvbmUgdG8gaGF2ZSB0aGlzIGRy
aXZlciAib2ZmaWNpYWxseSIgc3VwcG9ydGVkIGluIHRoZQptYWluIHRyZWUsIHVubGVzcyB0aGVy
ZSBhcmUgY3J1Y2lhbCBpc3N1ZXM7IGluIHRoaXMgY2FzZSBpdCBtaWdodCBiZQpnb29kIHRvIGtu
b3cgd2hpY2ggb25lcz8KClRoYW5rcywKTWlxdcOobApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
