Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A045D22163E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 22:31:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4449388031;
	Wed, 15 Jul 2020 20:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5SToP9Ad1SQ; Wed, 15 Jul 2020 20:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAF2E87E24;
	Wed, 15 Jul 2020 20:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D24B91BF40F
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 20:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C01A987E36
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 20:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZ0m0+CIbWGy for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 20:31:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 693B987DCC
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 20:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 413A92FE3;
 Wed, 15 Jul 2020 22:31:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibs7Zj-7XLWF; Wed, 15 Jul 2020 22:31:50 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 6A5032FCD;
 Wed, 15 Jul 2020 22:31:50 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jvo4D-000k9L-Cw; Wed, 15 Jul 2020 22:31:49 +0200
Date: Wed, 15 Jul 2020 22:31:49 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: Re: [PATCH] Staging: speakup: Replace HTTP links with HTTPS ones
Message-ID: <20200715203149.b6cmsku5lfrx56rm@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
 gregkh@linuxfoundation.org, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20200713091305.32708-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200713091305.32708-1-grandmaster@al2klimov.de>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
Cc: devel@driverdev.osuosl.org, kirk@reisers.ca, gregkh@linuxfoundation.org,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 chris@the-brannons.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWxleGFuZGVyIEEuIEtsaW1vdiwgbGUgbHVuLiAxMyBqdWlsLiAyMDIwIDExOjEzOjA1ICswMjAw
LCBhIGVjcml0Ogo+IFJhdGlvbmFsZToKPiBSZWR1Y2VzIGF0dGFjayBzdXJmYWNlIG9uIGtlcm5l
bCBkZXZzIG9wZW5pbmcgdGhlIGxpbmtzIGZvciBNSVRNCj4gYXMgSFRUUFMgdHJhZmZpYyBpcyBt
dWNoIGhhcmRlciB0byBtYW5pcHVsYXRlLgo+IAo+IERldGVybWluaXN0aWMgYWxnb3JpdGhtOgo+
IEZvciBlYWNoIGZpbGU6Cj4gICBJZiBub3QgLnN2ZzoKPiAgICAgRm9yIGVhY2ggbGluZToKPiAg
ICAgICBJZiBkb2Vzbid0IGNvbnRhaW4gYFxieG1sbnNcYmA6Cj4gICAgICAgICBGb3IgZWFjaCBs
aW5rLCBgXGJodHRwOi8vW14jIFx0XHJcbl0qKD86XHd8LylgOgo+IAkgIElmIG5laXRoZXIgYFxi
Z251XC5vcmcvbGljZW5zZWAsIG5vciBgXGJtb3ppbGxhXC5vcmcvTVBMXGJgOgo+ICAgICAgICAg
ICAgIElmIGJvdGggdGhlIEhUVFAgYW5kIEhUVFBTIHZlcnNpb25zCj4gICAgICAgICAgICAgcmV0
dXJuIDIwMCBPSyBhbmQgc2VydmUgdGhlIHNhbWUgY29udGVudDoKPiAgICAgICAgICAgICAgIFJl
cGxhY2UgSFRUUCB3aXRoIEhUVFBTLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBBLiBL
bGltb3YgPGdyYW5kbWFzdGVyQGFsMmtsaW1vdi5kZT4KClJldmlld2VkLWJ5OiBTYW11ZWwgVGhp
YmF1bHQgPHNhbXVlbC50aGliYXVsdEBlbnMtbHlvbi5vcmc+CgpUaGFua3MhCgo+IC0tLQo+ICBD
b250aW51aW5nIG15IHdvcmsgc3RhcnRlZCBhdCA5MzQzMWUwNjA3ZTUuCj4gIFNlZSBhbHNvOiBn
aXQgbG9nIC0tb25lbGluZSAnLS1hdXRob3I9QWxleGFuZGVyIEEuIEtsaW1vdiA8Z3JhbmRtYXN0
ZXJAYWwya2xpbW92LmRlPicgdjUuNy4ubWFzdGVyCj4gIChBY3R1YWxseSBsZXR0aW5nIGEgc2hl
bGwgZm9yIGxvb3Agc3VibWl0IGFsbCB0aGlzIHN0dWZmIGZvciBtZS4pCj4gCj4gIElmIHRoZXJl
IGFyZSBhbnkgVVJMcyB0byBiZSByZW1vdmVkIGNvbXBsZXRlbHkgb3IgYXQgbGVhc3Qgbm90IGp1
c3QgSFRUUFNpZmllZDoKPiAgSnVzdCBjbGVhcmx5IHNheSBzbyBhbmQgSSdsbCAqdW5kbyBteSBj
aGFuZ2UqLgo+ICBTZWUgYWxzbzogaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjAvNi8yNy82NAo+
IAo+ICBJZiB0aGVyZSBhcmUgYW55IHZhbGlkLCBidXQgeWV0IG5vdCBjaGFuZ2VkIFVSTHM6Cj4g
IFNlZTogaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjAvNi8yNi84MzcKPiAKPiAgSWYgeW91IGFw
cGx5IHRoZSBwYXRjaCwgcGxlYXNlIGxldCBtZSBrbm93Lgo+IAo+ICBTb3JyeSBhZ2FpbiB0byBh
bGwgbWFpbnRhaW5lcnMgd2hvIGNvbXBsYWluZWQgYWJvdXQgc3ViamVjdCBsaW5lcy4KPiAgTm93
IEkgcmVhbGl6ZWQgdGhhdCB5b3Ugd2FudCBhbiBhY3R1YWxseSBwZXJmZWN0IHByZWZpeGVzLAo+
ICBub3QganVzdCBzdWJzeXN0ZW0gb25lcy4KPiAgSSB0cmllZCBteSBiZXN0Li4uCj4gIEFuZCB5
ZXMsICpJIGNvdWxkKiAoYXQgbGVhc3QgaGFsZi0pYXV0b21hdGUgaXQuCj4gIEltcG9zc2libGUg
aXMgbm90aGluZyEgOikKPiAKPiAKPiAgZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrZ3VpZGUu
dHh0IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrZ3VpZGUudHh0
IGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrZ3VpZGUudHh0Cj4gaW5kZXggMWU2MjJjZDM0
MzYzLi4zNzgyZjZhMDllOTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAv
c3BrZ3VpZGUudHh0Cj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrZ3VpZGUudHh0
Cj4gQEAgLTE1MzEsNyArMTUzMSw3IEBAIFRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24gbWF5
IHB1Ymxpc2ggbmV3LCByZXZpc2VkIHZlcnNpb25zCj4gIG9mIHRoZSBHTlUgRnJlZSBEb2N1bWVu
dGF0aW9uIExpY2Vuc2UgZnJvbSB0aW1lIHRvIHRpbWUuICBTdWNoIG5ldwo+ICB2ZXJzaW9ucyB3
aWxsIGJlIHNpbWlsYXIgaW4gc3Bpcml0IHRvIHRoZSBwcmVzZW50IHZlcnNpb24sIGJ1dCBtYXkK
PiAgZGlmZmVyIGluIGRldGFpbCB0byBhZGRyZXNzIG5ldyBwcm9ibGVtcyBvciBjb25jZXJucy4g
IFNlZQo+IC1odHRwOi8vd3d3LmdudS5vcmcvY29weWxlZnQvLgo+ICtodHRwczovL3d3dy5nbnUu
b3JnL2NvcHlsZWZ0Ly4KPiAgCj4gIEVhY2ggdmVyc2lvbiBvZiB0aGUgTGljZW5zZSBpcyBnaXZl
biBhIGRpc3Rpbmd1aXNoaW5nIHZlcnNpb24gbnVtYmVyLgo+ICBJZiB0aGUgRG9jdW1lbnQgc3Bl
Y2lmaWVzIHRoYXQgYSBwYXJ0aWN1bGFyIG51bWJlcmVkIHZlcnNpb24gb2YgdGhpcwo+IC0tIAo+
IDIuMjcuMAo+IAoKLS0gClNhbXVlbAogSidhaSB1biBncm9zIHByb2Jsw6htZTogaidhaSBjZXQg
ZXhlcmNpY2Ugw6AgcmVuZHJlIGRlbWFpbiBsdW5kaSwgbWFpcyBtYQogVEkgODkgbmUgc2FpdCBw
YXMgbGUgZmFpcmUuLi4KIEVzdC1jZSBxdWUgcXVlbHF1J3VuIHBvdXJyYWl0IG0nYWlkZXI/Pwog
LSstIE9EIEluIEd1aWRlIGR1IE5ldW5ldSBVc2VuZXQgOiBDb21tZW50IMOnYSAhIElsIGZhdXQg
csOpZmzDqWNoaXIgPy0rLQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
