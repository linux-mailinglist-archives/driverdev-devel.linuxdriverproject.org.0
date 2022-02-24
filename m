Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B0D4C36C6
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 21:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5BEB611CB;
	Thu, 24 Feb 2022 20:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7O48JEbpi0zt; Thu, 24 Feb 2022 20:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79C0760E96;
	Thu, 24 Feb 2022 20:20:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 682301BF3FC
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 20:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56373611CB
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 20:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNsPa8m0rUql for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 20:20:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4F0860E96
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 20:20:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DADD7B82941
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 20:20:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A98BC340F3
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 20:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645734016;
 bh=Sb5PnffgEyE8tNmtHk0zKaVtcMek5aLE64+seXgzdLQ=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=Olh0wOusMfC35r3km/RwCku9fDWzbSmQKlkoSyYEUGxvcN4AOZqZStLJIh4NGou07
 a9duAAdOJ3Y3RnevVHnvegLHE6NdD4VK1iR5pXVY5e7HDFuponR7Kq/PM/WzSp2wmW
 j+DQqjVi1Z943QNwt15dP+BFVue0hpNtAGTdSH+Xqx6iKYy/Et9+wAaa5nTmWIukop
 xMDn1FbVbb8Wv9qQXAnYv0GcStVEsQWV8LjIK1nvsiBhWhuPfCmRqAa+o0U4lBUd/W
 UVoOldFhSjSK963J883RE0nqnz2aPDXMvHUHWdvCffW7hqK3pGzuhLmyStgTPvHQrS
 SnAgyufeaJphw==
Received: by mail-io1-f41.google.com with SMTP id w7so4161743ioj.5
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 12:20:16 -0800 (PST)
X-Gm-Message-State: AOAM532Fh8B9rSqb/Aw0sIQQLfz6UTGcadG2mO3alaVbkTxl/n21jGnY
 PO2eKhYqIgcbh0c7q4h+C0wZfxiokDX+tGNLvfk=
X-Google-Smtp-Source: ABdhPJxEO4XQqOdYX0gmAA7mFOvK688/piUblsSicZ4wTfUU0hHTXbn7Mn0FrKvb7DBWeUidraLj8Wnt4jzapeRCTlI=
X-Received: by 2002:a02:cc16:0:b0:30d:289a:f7d7 with SMTP id
 n22-20020a02cc16000000b0030d289af7d7mr3302224jap.144.1645734015698; Thu, 24
 Feb 2022 12:20:15 -0800 (PST)
MIME-Version: 1.0
References: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 24 Feb 2022 15:20:04 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4yMABHrNoP+wNnPhTDhftDcXVNDZgfhGuQx+eUudVzTw@mail.gmail.com>
Message-ID: <CA+5PVA4yMABHrNoP+wNnPhTDhftDcXVNDZgfhGuQx+eUudVzTw@mail.gmail.com>
Subject: Re: [PATCH 0/3] linux-firmware: update wfx
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, jerome.pouiller@gmail.com,
 netdev <netdev@vger.kernel.org>,
 Linux Wireless <linux-wireless@vger.kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBGZWIgMjEsIDIwMjIgYXQgMTE6MzggQU0gSmVyb21lIFBvdWlsbGVyCjxKZXJvbWUu
UG91aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8
amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBUaGUgdHdvIGZpcnN0IHBhdGNoZXMgcmVm
bGVjdCBjaGFuZ2VzIG1hZGUgaW4gdGhlIGtlcm5lbC4KPgo+IErDqXLDtG1lIFBvdWlsbGVyICgz
KToKPiAgIHdmeDogcmVuYW1lIHNpbGFicy8gaW50byB3ZngvCj4gICB3Zng6IGFkZCBhbnRlbm5h
IGNvbmZpZ3VyYXRpb24gZmlsZXMKPiAgIHdmeDogdXBkYXRlIHRvIGZpcm13YXJlIDMuMTQKCkFs
bCAzIGFwcGxpZWQgYW5kIHB1c2hlZCBvdXQuCgpqb3NoCgo+Cj4gIFdIRU5DRSAgICAgICAgICAg
ICAgICAgICAgICAgIHwgIDE4ICsrKysrKysrKysrKysrLS0tLQo+ICBzaWxhYnMvd2ZtX3dmMjAw
X0MwLnNlYyAgICAgICB8IEJpbiAzMDUyMzIgLT4gMCBieXRlcwo+ICB7c2lsYWJzID0+IHdmeH0v
TElDRU5DRS53ZjIwMCB8ICAgMAo+ICB3ZngvYnJkNDAwMWEucGRzICAgICAgICAgICAgICB8IEJp
biAwIC0+IDYyNSBieXRlcwo+ICB3ZngvYnJkODAyMmEucGRzICAgICAgICAgICAgICB8IEJpbiAw
IC0+IDU4NCBieXRlcwo+ICB3ZngvYnJkODAyM2EucGRzICAgICAgICAgICAgICB8IEJpbiAwIC0+
IDYyNSBieXRlcwo+ICB3Zngvd2ZtX3dmMjAwX0MwLnNlYyAgICAgICAgICB8IEJpbiAwIC0+IDMw
OTMyOCBieXRlcwo+ICA3IGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBzaWxhYnMvd2ZtX3dmMjAwX0MwLnNlYwo+ICBy
ZW5hbWUge3NpbGFicyA9PiB3Znh9L0xJQ0VOQ0Uud2YyMDAgKDEwMCUpCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCB3ZngvYnJkNDAwMWEucGRzCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB3ZngvYnJkODAy
MmEucGRzCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB3ZngvYnJkODAyM2EucGRzCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCB3Zngvd2ZtX3dmMjAwX0MwLnNlYwo+Cj4gLS0KPiAyLjM0LjEKPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
