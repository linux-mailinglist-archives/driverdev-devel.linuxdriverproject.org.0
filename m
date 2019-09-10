Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8075AE795
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 12:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D57E85D35;
	Tue, 10 Sep 2019 10:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0O44utf_tmKh; Tue, 10 Sep 2019 10:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B76E98542A;
	Tue, 10 Sep 2019 10:05:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2D5F1BF5DA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 10:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF5DC87648
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 10:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vSSX4g-rZjad
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 10:05:53 +0000 (UTC)
X-Greylist: delayed 00:05:19 by SQLgrey-1.7.6
Received: from mx.unpitiably.parpen.xyz (mx.unpitiably.parpen.xyz
 [157.245.160.8])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F14CC85BA1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 10:05:52 +0000 (UTC)
Received: from mx.unpitiably.parpen.xyz (mx.unpitiably.parpen.xyz [127.0.0.1])
 by mx.unpitiably.parpen.xyz (Postfix) with ESMTP id 46SLBR4NgJz24hG
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 10:00:31 +0000 (UTC)
Authentication-Results: mx.unpitiably.parpen.xyz (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=unpitiably.parpen.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 unpitiably.parpen.xyz; h=content-transfer-encoding:content-type
 :content-type:mime-version:message-id:x-mailer:user-agent
 :reply-to:list-unsubscribe:subject:subject:to:from:from:date
 :date; s=dkim; t=1568109631; x=1570701632; bh=RhlH8UF47raGEQWRnJ
 fVocRB/x+mmRYLv4eqXyNwxHo=; b=iCNsYZGYFcLJ65SLXuivZ+RANbR9bgCs5t
 KW1ihCDid/B2+O/hoeF0w5AhBSyBul5RHoizhjrMWfweT7Y2oMF594NZ7QSiV2Sj
 /kvXJJUTgTpA1+qjJHh5rQHJcq/nIKzWawJbWZSvsdz/XBF+l0Z1Y/k6tB+p2ACG
 russM1ZSQ=
X-Virus-Scanned: Debian amavisd-new at mx.unpitiably.parpen.xyz
Received: from mx.unpitiably.parpen.xyz ([127.0.0.1])
 by mx.unpitiably.parpen.xyz (mx.unpitiably.parpen.xyz [127.0.0.1])
 (amavisd-new, port 10024) with ESMTP id RXw1DUdb1tvN
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 10:00:31 +0000 (UTC)
Received: from [127.0.0.1] (mx.unpitiably.parpen.xyz [127.0.0.1])
 by mx.unpitiably.parpen.xyz (Postfix) with ESMTP id 46SKwK0zRmz24Bg
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 09:48:17 +0000 (UTC)
Date: Tue, 10 Sep 2019 10:48:16 +0100
From: =?UTF-8?Q?A=C5=89onymn=C3=AD=20H=CA=8Ccker?=
 <lina906@unpitiably.parpen.xyz>
To: driverdev-devel@linuxdriverproject.org
Subject: =?UTF-8?Q?Toto=20je=20moje=20posledn=C3=AD=20v=C9=91rov=C3=A1n=C3=AD=20D?=
 =?UTF-8?Q?riverdev=20Devel!?=
User-Agent: CodeIgniter
X-Sender: lina906@unpitiably.parpen.xyz
X-Mailer: CodeIgniter
X-Priority: 3 (Normal)
Message-ID: <5d777160ea027@unpitiably.parpen.xyz>
Mime-Version: 1.0
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
Reply-To: lina906@unpitiably.parpen.xyz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UE9TTEVETsONIFZBUk9Ww4FOw40gZHJpdmVyZGV2LWRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmchCgpNw6F0ZSBrb25lxI1ub3UgcMWZw61sZcW+aXRvc3QgemFjaHLDoW5pdCBzdsWvagpzcG9s
ZcSNZW5za8O9IMW+aXZvdCAtIGrDoSBzaSBzcmFuZHUgISEKCkTDoXbDoW0gdsOhbSBwb3NsZWRu
w61jaCA3MiBob2RpbiwgYWJ5Y2ggcHJvdmVkbCBwbGF0YnUsCm5lxb4gcG/FoWx1IHbOr2RlbyBz
IHZhxaHDrSDKjWFzdHVyYmFjw60gdsWhZW0gc3bDvW0KcMWZw6F0ZWzFr20gYSBzcG9sdXByYWNv
dm7DrWvFr20uCgoKTmFwb3NsZWR5IGpzdGUgbmF2xaF0w612aWxpIMe3b3Jub2dyYWZpY2tvdSBz
dHLDoW5rdSBzCm1sYWTDvW1pIHRlZW5hZ2VyeSwgc3TDoWhsaSBqc3RlIGEgYXV0b21hdGlja3kg
bmFpbnN0YWxvdmFsaQrFnnB5d2FyZSwga3RlcsO9IGpzZW0gdnl0dm/FmWlsLgoKTcWvaiBwcm9n
cmFtIHphcG51bCBmb3RvYXBhcsOhdCBhIHphem5hbWVuYWwgYWt0IHZhxaHDrQrKjWFzdHVyYmFj
ZSBhIHbOr2Rlbywga3RlcsOpIGpzdGUgc2xlZG92YWxpIHDFmWkgyo1hc3R1cmJvdsOhbsOtLgpN
xa9qIHNvZnR3YXJlIHRha8OpIHN0w6FobCBzZXpuYW0gZS1tYWlsb3bDvWNoIGtvbnRha3TFrwph
IHNlem5hbSB2YcWhaWNoIHDFmcOhdGVsIG5hIEZhY2Vib29rdSB6ZSB6YcWZw616ZW7DrS4KCk3D
oW0gb2JhLSBEcml2ZXJkZXYgRGV2ZWwubXA0IC0gcyB2YcWhw60gyo1hc3R1cmJhY8OtCmEgc291
Ym9yIHNlIHbFoWVtaSBrb250YWt0eSBuYSBwZXZuw6ltIGRpc2t1LgoKSnN0ZSB2ZWxtaSB6dnJo
bMOtIQoKClBva3VkIGNoY2V0ZSwgYWJ5Y2ggb2RzdHJhbmlsIG9iYSBzb3Vib3J5IGEgdWNob3Zh
bCB2YcWhZQp0YWplbXN0dsOtLCBtdXPDrXRlIG1pIHBvc2xhdCBwbGF0YnUgQml0Y29pbmVtLgpE
w6F2w6FtIHbDoW0gcG9zbGVkbsOtY2ggNzIgaG9kaW4gbmEgcMWZZXZvZCBwcm9zdMWZZWRrxa8u
CgpQb2t1ZCBuZXbDrXRlLCBqYWsgcyBCaXRjb2luZW0gcGxhdGl0LCBuYXbFoXRpdnRlCkdvb2ds
ZSBhIGhsZWRlanRlIC0gamFrIG5ha3Vwb3ZhdCBiaXRjb2luLgoKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpPa2Ftxb5pdMSbIG9kZcWhbGV0ZSBuYSB0dXRvCmFkcmVz
dSBCaXRjb2luIDUwLjAwMCBDWksgPSAwLjIwODU2NzIgQlRDOgoKM0tad05NWldndHBTWVBTWXN4
QlBldXg4cmRZTlpOallNUwoKKHprb3DDrXJ1anRlIGEgdmxvxb50ZSkKCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KMSBCVEMgPSAyNDAuMTIwIENaSyBwcsOhdsSbIHRl
xI8sIHRha8W+ZSBvZGXFoWxldGUgcMWZZXNuxJsgMC4yMDg1NjcyIEJUQwpuYSB2w73FoWUgdXZl
ZGVub3UgYWRyZXN1LgoKCk5lc25hxb4gc2UgbcSbIHBvZHbDoWTEm3QhCkpha21pbGUgb3RldsWZ
ZXRlIHRlbnRvIGUtbWFpbCwgYnVkdSB2xJtkxJt0LCDFvmUganN0ZSBqZWogb3RldsWZZWxpLgoK
VGF0byBhZHJlc2EgQml0Y29pbnUgamUgcHJvcG9qZW5hIHBvdXplIHMgdsOhbWksIHRha8W+ZSBi
dWR1CnbEm2TEm3QsIHpkYSBqc3RlIG9kZXNsYWxpIHNwcsOhdm5vdSDEjcOhc3RrdS4KS2R5xb4g
emFwbGF0w610ZSB2IHBsbsOpIHbDvcWhaSwgb2RzdHJhbsOtbSBvYmEKc291Ym9yeSBhIGRlYWt0
aXZ1amkgc29mdHdhcmUuCgpQb2t1ZCBwbGF0YnUgbmVwb3PDrWzDoXRlLCBwb8WhbHUgdmHFoWUg
ds6vZGVvIHMgyo1hc3R1cmJhY8OtIHbFoWVtCnDFmcOhdGVsxa9tIGEgc3BvbHVwcmFjb3Zuw61r
xa9tIHplIHNlem5hbXUga29udGFrdMWvLAprdGVyw70ganNlbSBzaSBzdMOhaG51bC4KCgpaZGUg
anNvdSBvcMSbdCBwbGF0ZWJuw60gw7pkYWplOgoKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KT2Rlc2xhdDoKCjAuMjA4NTY3MiBCVEMKCnTDqXRvIGFkcmVzZSBCaXRj
b2luOgoKM0tad05NWldndHBTWVBTWXN4QlBldXg4cmRZTlpOallNUwoKKHprb3DDrXJ1anRlIGEg
dmxvxb50ZSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKCk3Fr8W+
ZXRlIG5hdsWhdMOtdml0IHBvbGljaWksIGFsZSBuaWtkbyB2w6FtIG5lcG9txa/FvmUuClbDrW0s
IGNvIGTEm2zDoW0uCk5lxb5pamkgdmUgdmHFocOtIHplbWkgYSB2w61tLCBqYWsgesWvc3RhdCBh
bm9ueW1uw60uCgpOZXNuYcW+dGUgc2Ugb2tsYW1hdCBtxJsgLSBidWR1IHbEm2TEm3Qgb2thbcW+
aXTEmyAtIG3Fr2ogxZ5weXNvZnQKbmFocsOhdsOhIHbFoWVjaG55IHdlYm92w6kgc3Ryw6Fua3ks
IGt0ZXLDqSBuYXbFoXTDrXbDrXRlLAphIHbFoWVjaG55IGtsw6F2ZXN5LCBrdGVyw6kgc3Rpc2tu
ZXRlLgpQb2t1ZCBhbm8gLSBwb8WhbHUgdGVudG8gb8Wha2xpdsO9IHrDoXpuYW0gdsWhZW0sCmtv
aG8gem7DoXRlLCB2xI1ldG7EmyB2YcWhw60gcm9kaW55IQoKTmVwb2R2w6FkxJtqIG3EmyEgTmV6
YXBvbWXFiHRlIG5hIGhhbmJ1IGEgcG9rdWQKdHV0byB6cHLDoXZ1IGlnbm9ydWpldGUsIHbDocWh
IMW+aXZvdCBidWRlIHpuacSNZW4uCgrEjGVrw6FtIG5hIHZhxaFpIHBsYXRidSBCaXRjb2luZW0u
CgpBxYlvbnltbsOtIEjKjGNrZXIKCgpQLlMuIFBva3VkIHBvdMWZZWJ1amV0ZSB2w61jZSDEjWFz
dSBuYSBuw6FrdXAgYSBvZGVzbMOhbsOtIEJUQywKb3RldsWZZXRlIHN2xa9qIHBvem7DoW1rb3bD
vSBibG9rIGEgbmFwacWhdGUgLSA0OEggKysgLSBhIHVsb8W+dGUuClTDrW10byB6cMWvc29iZW0g
bcSbIG3Fr8W+ZXRlIGtvbnRha3RvdmF0LgpVdmHFvnVqaSBvIHRvbSwgxb5lIHbDoW0gamXFoXTE
myA0OCBob2RpbiBwxZllZCBvZGVzbMOhbsOtbSB2zq9kZWEKdmHFoWltIGtvbnRha3TFr20sIGFs
ZSBwb3V6ZSB0ZWhkeSwga2R5xb4gds6vZMOtbSwKxb5lIHNlIG9wcmF2ZHUgc25hxb7DrXRlIGtv
dXBpdCBiaXRjb2luLgoKCgooKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgo
KCgoKCgKSnNtZSBhbm9ueW1uw60uCk15IG5lb2Rwb3XFoXTDrW1lLiBOZXphcG9tw61uw6FtZS4K
T8SNZWvDoXZlanRlIG7DoXMuCikpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkp
KSkpKSkpKSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
