Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 246A3146251
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 08:11:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2AD28694A;
	Thu, 23 Jan 2020 07:11:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DrZa_asShALJ; Thu, 23 Jan 2020 07:11:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7935C86934;
	Thu, 23 Jan 2020 07:11:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9721F1BF3FD
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 07:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91CEE20352
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 07:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LM+bntWpvWrl for <devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 07:11:29 +0000 (UTC)
X-Greylist: delayed 00:06:49 by SQLgrey-1.7.6
Received: from mail.kaowomen.cn (unknown [175.24.100.79])
 by silver.osuosl.org (Postfix) with ESMTP id 06F532034F
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 07:11:29 +0000 (UTC)
Received: by mail.kaowomen.cn (Postfix, from userid 5002)
 id 6C067E12EA; Thu, 23 Jan 2020 15:04:35 +0800 (CST)
Date: Thu, 23 Jan 2020 15:04:35 +0800
From: me@kaowomen.cn
To: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH] staging: exfat: remove fs_func struct.
Message-ID: <20200123070435.cjso5yh6nmmhd4gm@kaowomen.cn>
References: <20200117062046.20491-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200122085737.GA2511011@kroah.com>
 <OSAPR01MB1569F24512678DEA1C175504900F0@OSAPR01MB1569.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSAPR01MB1569F24512678DEA1C175504900F0@OSAPR01MB1569.jpnprd01.prod.outlook.com>
User-Agent: NeoMutt/20171215
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
Cc: "'devel@driverdev.osuosl.org'" <devel@driverdev.osuosl.org>,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 "Motai.Hirotaka@aj.MitsubishiElectric.co.jp"
 <Motai.Hirotaka@aj.MitsubishiElectric.co.jp>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "Mori.Takahiro@ab.MitsubishiElectric.co.jp"
 <Mori.Takahiro@ab.MitsubishiElectric.co.jp>,
 "'linux-fsdevel@vger.kernel.org'" <linux-fsdevel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDY6Mzg6NTNBTSArMDAwMCwgS29oYWRhLlRldHN1aGly
b0BkYy5NaXRzdWJpc2hpRWxlY3RyaWMuY28uanAgd3JvdGU6Cj5IZWxsbywgR3JlZy4KPgo+VGhh
bmsgeW91IGZvciB0aGUgcXVpY2sgcmVwbHkuCj4KPj4gQWxzbyB0aGUgcGF0Y2ggZG9lcyBub3Qg
YXBwbHkgdG8gdGhlIGxpbnV4LW5leHQgdHJlZSBhdCBhbGwsIHNvIEkgY2FuJ3QgdGFrZSBpdC4K
PlRoZSBwYXRjaCBJIHNlbnQgd2FzIGJhc2VkIG9uIHRoZSBtYXN0ZXIgYnJhbmNoIG9mIOKAnGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2dyZWdraC9zdGFn
aW5nLmdpdC/igJ0KPmFuZCBpdHMgdGFnIHdhcyB2NS41LXJjNi4KPgo+PiBBbHNvIHRoZSBwYXRj
aCBkb2VzIG5vdCBhcHBseSB0byB0aGUgbGludXgtbmV4dCB0cmVlIGF0IGFsbCwgc28gSSBjYW4n
dCB0YWtlIGl0LiAgUGxlYXNlIHJlYmFzZSBhbmQgcmVzZW5kLgo+SSB3aWxsIHNlbmQgYSBuZXcg
cGF0Y2ggYmFzZWQgb24gdGhlIGxhdGVzdCBtYXN0ZXIgYnJhbmNoIG9mIOKAnGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXTi
gJ0uCj4KPgo+QnkgdGhlIHdheSwgY291bGQgeW91IGFuc3dlciBiZWxvdyBxdWVzdGlvbnMgZm9y
IG15IHNlbmRpbmcgcGF0Y2hlcyBpbiBmdXR1cmU/Cj4xLiBXaGljaCByZXBvc2l0b3J5IGFuZCBi
cmFuY2ggc2hvdWxkIGJlIGJhc2VkIHdoZW4gY3JlYXRpbmcgYSBuZXcgcGF0Y2g/Cj4yLiBIb3cg
ZG8gSSBpbmZvcm0geW91IGFib3V0IGEgYmFzZSBvbiB3aGljaCBJIGNyZWF0ZSBhIHBhdGNoPwpJ
ZiB5b3UgbGlrZSB5b3UgY2FuIGFkZCBbUEFUQ0ggLW5leHRdIHRvIHBhdGNoIHRpdGxlIGJlZm9y
ZSBzZW5kIGl0LiA6KQpCUiwKPgo+LS0KPkJlc3QgcmVnYXJkcywKPktvaGFkYSBUZXRzdWhpcm8g
PEtvaGFkYS5UZXRzdWhpcm9AZGMuTWl0c3ViaXNoaUVsZWN0cmljLmNvLmpwPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
