Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8785D48C428
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 13:47:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7DD16FBBC;
	Wed, 12 Jan 2022 12:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLOncTJX__IT; Wed, 12 Jan 2022 12:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE9476FB94;
	Wed, 12 Jan 2022 12:47:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEE0A1BF3EB
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE42C401FD
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 12:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bvng6XG7Grr3 for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 12:46:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1321401CE
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 12:46:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 20B2A611C3;
 Wed, 12 Jan 2022 12:46:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D21E9C36AE5;
 Wed, 12 Jan 2022 12:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641991610;
 bh=Q/J6JEZ3cVVSxVKhadTn858ZM/rd91mNJYmHU4mHfIg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=U99u+zmreZJOhJq8CvvcY3iyLgFI7JS44DRn2ZOoCDBLKbVGB+V+wefuIa5P+6tMd
 Z63P3JKuM0hvrMiwhdqbSum6Q5Tr2iXCESBA1+B7JQDpHc2JdFIKK42w1QYp3nX6P3
 3E2o4lGzX2U7DVtHqoxoxW2C67YXo+fQY/qnnSLs6ebPr7qoHxREtZbmLSPsnW7tfy
 TDVq1UkNUinYPY45wIyIFnwUa4vflxV79OZDSLrd2wN62SDGbBzHKijWPjibK1i6XP
 Xm788dUZigBXNZsUm931/h06vq9Qwg4TM6SYf67Cp49Gaq5rymFNeiUzl5nW/V3eOR
 ky0AECcvhk9eA==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 23/24] wfx: remove from the staging area
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-24-Jerome.Pouiller@silabs.com>
 <874k69jsv1.fsf@tynnyri.adurom.net> <65681266.04G08nq4u0@pc-42>
Date: Wed, 12 Jan 2022 14:46:46 +0200
In-Reply-To: <65681266.04G08nq4u0@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Wed, 12 Jan 2022 10:32:41 +0100")
Message-ID: <87fsptt93d.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFdlZG5lc2RheSAxMiBKYW51YXJ5IDIwMjIgMDg6NDk6NTQgQ0VUIEthbGxlIFZhbG8gd3Jv
dGU6Cj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRl
czoKPj4gCj4+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxh
YnMuY29tPgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9t
ZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+PiA+IC0tLQo+PiA+ICAuLi4vYmluZGluZ3MvbmV0L3dp
cmVsZXNzL3NpbGFicyx3ZngueWFtbCAgICAgfCAxMjUgLS0tCj4+ID4gIGRyaXZlcnMvc3RhZ2lu
Zy93ZngvS2NvbmZpZyAgICAgICAgICAgICAgICAgICB8ICAgOCAtCj4+ID4gIGRyaXZlcnMvc3Rh
Z2luZy93ZngvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAyNSAtCj4+ID4gIGRyaXZlcnMv
c3RhZ2luZy93ZngvYmguYyAgICAgICAgICAgICAgICAgICAgICB8IDMzMCAtLS0tLS0tCj4+ID4g
IGRyaXZlcnMvc3RhZ2luZy93ZngvYmguaCAgICAgICAgICAgICAgICAgICAgICB8ICAzMyAtCj4+
ID4gIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzLmggICAgICAgICAgICAgICAgICAgICB8ICAzOCAt
Cj4+ID4gIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYyAgICAgICAgICAgICAgICB8IDI3
MiAtLS0tLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMgICAgICAgICAgICAg
ICAgIHwgMjcxIC0tLS0tLQo+PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfcnguYyAgICAg
ICAgICAgICAgICAgfCAgOTQgLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4Lmgg
ICAgICAgICAgICAgICAgIHwgIDE4IC0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4
LmMgICAgICAgICAgICAgICAgIHwgNTk2IC0tLS0tLS0tLS0tLS0KPj4gPiAgZHJpdmVycy9zdGFn
aW5nL3dmeC9kYXRhX3R4LmggICAgICAgICAgICAgICAgIHwgIDY4IC0tCj4+ID4gIGRyaXZlcnMv
c3RhZ2luZy93ZngvZGVidWcuYyAgICAgICAgICAgICAgICAgICB8IDM2NSAtLS0tLS0tLQo+PiA+
ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmggICAgICAgICAgICAgICAgICAgfCAgMTkgLQo+
PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYyAgICAgICAgICAgICAgICAgICAgfCA0MDUg
LS0tLS0tLS0tCj4+ID4gIGRyaXZlcnMvc3RhZ2luZy93ZngvZndpby5oICAgICAgICAgICAgICAg
ICAgICB8ICAxNSAtCj4+ID4gIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaCAgICAg
ICAgICAgICB8IDU1NSAtLS0tLS0tLS0tLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZf
YXBpX2dlbmVyYWwuaCAgICAgICAgIHwgMjYyIC0tLS0tLQo+PiA+ICBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9hcGlfbWliLmggICAgICAgICAgICAgfCAzNDYgLS0tLS0tLS0KPj4gPiAgZHJpdmVy
cy9zdGFnaW5nL3dmeC9oaWZfcnguYyAgICAgICAgICAgICAgICAgIHwgNDE2IC0tLS0tLS0tLQo+
PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5oICAgICAgICAgICAgICAgICAgfCAgMTcg
LQo+PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jICAgICAgICAgICAgICAgICAgfCA1
MTMgLS0tLS0tLS0tLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguaCAgICAgICAg
ICAgICAgICAgIHwgIDYwIC0tCj4+ID4gIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5j
ICAgICAgICAgICAgICB8IDMyNCAtLS0tLS0tCj4+ID4gIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3R4X21pYi5oICAgICAgICAgICAgICB8ICA0OSAtLQo+PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4
L2h3aW8uYyAgICAgICAgICAgICAgICAgICAgfCAzNTIgLS0tLS0tLS0KPj4gPiAgZHJpdmVycy9z
dGFnaW5nL3dmeC9od2lvLmggICAgICAgICAgICAgICAgICAgIHwgIDc1IC0tCj4+ID4gIGRyaXZl
cnMvc3RhZ2luZy93Zngva2V5LmMgICAgICAgICAgICAgICAgICAgICB8IDI0MSAtLS0tLQo+PiA+
ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2tleS5oICAgICAgICAgICAgICAgICAgICAgfCAgMjAgLQo+
PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyAgICAgICAgICAgICAgICAgICAgfCA1MDYg
LS0tLS0tLS0tLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmggICAgICAgICAgICAg
ICAgICAgIHwgIDQzIC0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jICAgICAgICAg
ICAgICAgICAgIHwgMzA3IC0tLS0tLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5o
ICAgICAgICAgICAgICAgICAgIHwgIDQ1IC0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC9zY2Fu
LmMgICAgICAgICAgICAgICAgICAgIHwgMTQ5IC0tLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dm
eC9zY2FuLmggICAgICAgICAgICAgICAgICAgIHwgIDIyIC0KPj4gPiAgZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYyAgICAgICAgICAgICAgICAgICAgIHwgODMzIAo+IC0tLS0tLS0tLS0tLS0tLS0t
LQo+PiA+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oICAgICAgICAgICAgICAgICAgICAgfCAg
NzMgLS0KPj4gPiAgZHJpdmVycy9zdGFnaW5nL3dmeC90cmFjZXMuaCAgICAgICAgICAgICAgICAg
IHwgNTAxIC0tLS0tLS0tLS0tCj4+ID4gIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggICAgICAg
ICAgICAgICAgICAgICB8IDE2NCAtLS0tCj4+ID4gIDM5IGZpbGVzIGNoYW5nZWQsIDg1NTUgZGVs
ZXRpb25zKC0pCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS8KPiBiaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsYWJzLHdm
eC55YW1sCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L0tjb25m
aWcKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvTWFrZWZpbGUK
Pj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYwo+PiA+ICBk
ZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5oCj4+ID4gIGRlbGV0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1cy5oCj4+ID4gIGRlbGV0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMKPj4gPiAgZGVsZXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfcnguYwo+PiA+ICBkZWxldGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4LmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguaAo+PiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9zdGFnaW5nL3dmeC9kZWJ1Zy5jCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0
YWdpbmcvd2Z4L2RlYnVnLmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy93ZngvZndpby5jCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4
L2Z3aW8uaAo+PiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZf
YXBpX2NtZC5oCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl9hcGlfZ2VuZXJhbC5oCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9hcGlfbWliLmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy93ZngvaGlmX3J4LmMKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX3J4LmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3R4LmMKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3R4LmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4
X21pYi5jCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90
eF9taWIuaAo+PiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9od2lv
LmMKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5oCj4+
ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2tleS5jCj4+ID4gIGRl
bGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L2tleS5oCj4+ID4gIGRlbGV0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwo+PiA+ICBkZWxldGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYwo+PiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oCj4+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3N0YWdpbmcvd2Z4L3NjYW4uYwo+PiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFn
aW5nL3dmeC9zY2FuLmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmMKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmgKPj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvdHJhY2VzLmgK
Pj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmgKPj4gCj4+
IEknbSBub3Qgc3VyZSB3aGF0J3MgeW91ciBwbGFuIGhlcmUsIGJ1dCB3aXRoIHN0YWdpbmcgd2ly
ZWxlc3MgZHJpdmVycwo+PiB0aGVyZSdzIHVzdWFsbHkgYSBzaW1wbGUgc2ltcGxlIG1vdmUgKGdp
dCBtdikgb2YgdGhlIGRyaXZlciBmcm9tCj4+IGRyaXZlcnMvc3RhZ2luZyB0byBkcml2ZXJzL25l
dC93aXJlbGVzcy4gQW4gZXhhbXBsZSBoZXJlOgo+PiAKPj4gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9saW51cy81NjI1Zjk2NWQ3NjQKPj4gCj4+IFdoYXQgeW91IHNlZW0gdG8gZG8gaGVyZSBpcyB0
aGF0IHlvdSBhZGQgYSBuZXcgZHJpdmVyIHRvCj4+IGRyaXZlcnMvbmV0L3dpcmVsZXNzIGFuZCB0
aGVuIHJlbW92ZSB0aGUgb2xkIGRyaXZlciBmcm9tCj4+IGRyaXZlcnMvc3RhZ2luZy4gQW5kIEkn
bSBndWVzc2luZyB0aGVzZSB0d28gZHJpdmVycyBhcmUgbm90IGlkZW50aWNhbAo+PiBhbmQgaGF2
ZSBkaWZmZXJlbmNlcz8KPgo+IFVudGlsIHY3LCBJIGhhdmUgbW9yZSBvciBsZXNzIGtlcHQgaW4g
c3luYyB0aGlzIFBSIGFuZCB0aGUgc3RhZ2luZyB0cmVlLiAKPiBJIGhhdmUgYmVlbiBhIGJpdCBs
YXp5IGZyb20gdGhlIHY4Lgo+Cj4gSG93ZXZlciwgSSBzdGlsbCBoYXZlIHRoZSBwYXRjaGVzIGlu
IG15IGxvY2FsIHRyZWUuIEkgYW0gZ29pbmcgdG8KPiBjbGVhbi11cCB0aGVtIGFuZCBzZW5kIHRo
ZW0gdG8gc3RhZ2luZy4KClZlcnkgZ29vZCwgdGhhbmtzLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVz
cy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdw
YXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
