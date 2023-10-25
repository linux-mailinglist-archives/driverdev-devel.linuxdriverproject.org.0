Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340CC7D8032
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Oct 2023 12:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55164415AE;
	Thu, 26 Oct 2023 10:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55164415AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6Epy-OFQ9_N; Thu, 26 Oct 2023 10:03:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C62204114E;
	Thu, 26 Oct 2023 10:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C62204114E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B78611BF2B8
 for <devel@linuxdriverproject.org>; Thu, 26 Oct 2023 10:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D22F83A34
 for <devel@linuxdriverproject.org>; Thu, 26 Oct 2023 10:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D22F83A34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJzRmSEC6R9L for <devel@linuxdriverproject.org>;
 Thu, 26 Oct 2023 10:03:01 +0000 (UTC)
X-Greylist: delayed 4048 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 26 Oct 2023 10:03:01 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13EEC839E5
Received: from mail.gruporscom.com (mail.gruporscom.com [179.96.231.27])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13EEC839E5
 for <devel@linuxdriverproject.org>; Thu, 26 Oct 2023 10:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.gruporscom.com (Postfix) with ESMTP id 77A2413EB864;
 Wed, 25 Oct 2023 19:29:04 -0300 (-03)
Received: from mail.gruporscom.com ([127.0.0.1])
 by localhost (mail.gruporscom.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dyCifMLzCoHn; Wed, 25 Oct 2023 19:29:04 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.gruporscom.com (Postfix) with ESMTP id 78AAE11EEA0A;
 Wed, 25 Oct 2023 18:39:05 -0300 (-03)
X-Virus-Scanned: amavisd-new at gruporscom.com
Received: from mail.gruporscom.com ([127.0.0.1])
 by localhost (mail.gruporscom.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id jxi9kjv95eBB; Wed, 25 Oct 2023 18:39:05 -0300 (-03)
Received: from [192.168.0.38] (unknown [41.216.203.154])
 by mail.gruporscom.com (Postfix) with ESMTPSA id DB6506F1ED5F;
 Wed, 25 Oct 2023 18:23:58 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?VmzDoWRvdSBzY2h2w6FsZW7DqSBkYXJvdmFjw60gZm9uZHk7IOKCrCAyLDAw?=
 =?utf-8?q?0=2C000=2700_EUR?=
To: Recipients <official180@rediffmail.com>
From: "Pan Richard Wahl" <official180@rediffmail.com>
Date: Wed, 25 Oct 2023 14:29:40 -0700
Message-Id: <20231025212358.DB6506F1ED5F@mail.gruporscom.com>
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
Reply-To: info@wahlfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHJhaMO9IHByw610ZWxpLAoKSnNlbSBSaWNoYXJkIFdhaGwgeiBWZXJub24gVG93bnNoaXAsIE5l
dyBKZXJzZXksIFVTQS4gSmUgbWkgNTIgbGV0IGEgdnlocsOhbCBqc2VtIGphY2twb3QgNTMzIG1p
bGlvbnUgJCBNZWdhIE1pbGxpb25zLCBjb8W+IGplIGplZGVuIHogbmVqdmV0xaHDrWNoIGphY2tw
b3R1IHYgbG90ZXJpaS4gWmFzw61sw6FtIHbDoW0gdHV0byB6cHLDoXZ1LCBhYnljaCB2w6FzIHBv
xb7DoWRhbCBvIHNvdWhsYXMgcyB1c2t1dGVjbmVuw61tIGZ1bmRyYWlzaW5nb3bDqWhvIHByb2pl
a3R1LCBrdGVyw70ganNlbSBqacW+IGRsb3VobyBjaHRlbCB1c2t1dGVjbml0LgoKU290dmEgdGkg
dG8gcHJpcGFkw6EgcG9kZXpyZWzDqSwgaSBrZHnFviBqZSBwcmF2ZGEsIMW+ZSBtZSBuZXpuw6HF
oSBhIMW+ZSBqw6EgbmV6bsOhbSB0ZWJlLiBNw6FtIHJha292aW51IHYgdGVybWluw6FsbsOtbSBz
dMOhZGl1LiBNdWogb8WhZXRydWrDrWPDrSBsw6lrYXIgbWkgcHLDoXZlIHJla2wsIMW+ZSBtw6kg
ZG55IGpzb3Ugc2VjdGVueSBrdnVsaSBtw6ltdSB6aG9yxaF1asOtY8OtbXUgc2UgemRyYXbDrS4g
UG9kbGUgZG9rdG9yYSBzZSBtaSB2IG1vemtvdsOpIGtsZWNpIGNoeXN0w6EgdXNhZGl0IGt1bGth
LiBUcnDDrW0gdG91dG8gbmVtb2PDrSB2w61jZSBuZcW+IDMgcm9reSBhIHByb8WhZWwganNlbSBz
cG91c3RvdSBsw6ljYnksIGFieWNoIGppIHZ5bMOpY2lsLiBWZXTFoWludSBzdsOpaG8gbWFqZXRr
dSBqc2VtIHJvemRhbCByYWRlIGNoYXJpdGF0aXZuw61jaCBvcmdhbml6YWPDrSBhIG9yZ2FuaXph
Y8OtIGEgZG9icm92b2xuZSBqc2VtIHbDoW0gZGFsICjigqwgMiwwMDAsMDAwJzAwIEVVUikgamFr
byBkw6FyZWsgYSBkb3Vmw6FtLCDFvmUgcyB0w61tIHVkZWzDoXRlIGRvYnLDqSB2ZWNpLgoKTXXF
vmV0ZSBwcm9zw61tIG92ZXJpdCBtw6kgdsO9aHJ5IHByb3N0cmVkbmljdHbDrW0gc3Ryw6Fua3kg
WW91VHViZS4gVklEw41URSBNRSBaREUgaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj10
bmUwMkV4TkRydwoKVE9UTyBKRSBWw4HFoCBEQVJPVkFDw40gS8OTRDogW0RGRFc0MzAzNFJXMjAy
M10KCk9kcG92ZXp0ZSBuYSB0ZW50byBlLW1haWwgYSB1dmVkdGUga8OzZCBkYXJ1OiBpbmZvQHdh
aGxmb3VuZGF0aW9uLm9yZwoKUHJpam1ldGUgcHJvc8OtbSBtdWogZGFyLiBNw6FtIGPDoXN0a3Ug
KOKCrCAyLDAwMCwwMDAnMDAgRVVSKSBqYWtvIGRhci4gUHJpam1ldGUgcHJvc8OtbSB0dXRvIGPD
oXN0a3UsIHByb3Rvxb5lIHBybyB2w6FzIG11xb5lIGLDvXQgdmVsa8O9bSBwcsOtbm9zZW0uIFBv
a3VkIHByaWptZXRlIG1vamkgbmFiw61ka3UsIG11c8OtdGUgbWkgb2Rwb3ZlZGV0IHByw61tbyBw
cm9zdHJlZG5pY3R2w61tIGUtbWFpbHU6IGluZm9Ad2FobGZvdW5kYXRpb24ub3JnCgpDw610w61t
IHNlIHZlbG1pIMWhcGF0bmUgYSBtw6FtIHZlbGvDvSBzdHJhY2gsIHYgbm9jaSBhbmkgdmUgZG5l
IHNrb3JvIG5lc3DDrW0uIE5lbW9odSB6ZW1yw610IGJleiBkYXJvdsOhbsOtIHbFoWVjaCB0ZWNo
dG8gcGVuZXosIGppbmFrIHNpIG15c2zDrW0sIMW+ZSBieSB0byBieWxvIHBsw710dsOhbsOtLiBU
b3RvIGplIG3DqSBuZWp6YXrFocOtIHByw6Fuw60gYSBwcm9zw61tLCBwcmFjdWp0ZSBzZSBtbm91
IGEgcHJvdmVkdGUgdG8uIE1vxb5uw6EgYnVkdSBtw610IHDDoXIgbWVzw61jdSDFvml2b3RhIG5h
IHTDqXRvIG7DoWRoZXJuw6kgemVtaSwgYWxlIGNoY2kgY2luaXQgZG9icm8gdsOhbWkgYSBvc3Rh
dG7DrW1pLiBDaGNpLCBhYnkgc2kgbcOpIGptw6lubyBwYW1hdG92YWxpIG5hIHplbWkgaSB2IG5l
YmkuCgpTbmHFvsOtbSBzZSBvc2xvdml0IG5lemlza292w6kgc2lyb3RjaW5jZSBhIHByaXNwZXQg
a2Ugem3DrXJuZW7DrSBjaHVkb2J5IGEgcG9za3l0bm91dCBuw6FsZcW+aXRvdSB6ZHJhdm90bsOt
IHDDqWNpIGplZG5vdGxpdmN1bSwgemVqbcOpbmEgYmVoZW0gdMOpdG8gc3ZldG92w6kgcGFuZGVt
aWUgYSBpbmZsYWNlLiBCeWwgYnljaCB0YWvDqSByw6FkLCBrZHlieXN0ZSBjw6FzdCB0b2hvdG8g
ZGFydSBpbnZlc3RvdmFsaSBkbyB2ZXJlam7DqSBpbmZyYXN0cnVrdHVyeSwgYWJ5c3RlIHBvbW9o
bGkgbmV6YW1lc3RuYW7DvW0gbGlkZW0gdmUgdmHFocOtIHplbWkgbmFiw616ZXQgcHLDoWNpLiBW
eWJyYWwganNlbSBzaSB0ZSwgcHJvdG/FvmUgdGkgdmVyw61tLiBQb3RyZWJ1amkgdmHFoWkgcGxu
b3Ugc3BvbHVwcsOhY2kgb2hsZWRuZSB0b2hvdG8gZGFydS4gWmRlIGplIHbDoW1pIHp2b2xlbsO9
IHRham7DvSBrw7NkOiBbREZEVzQzMDM0UlcyMDIzXSBhIHByb3PDrW0sIG5lc2RlbHVqdGUga8Oz
ZCBuaWtvbXUsIHBva3VkIG3DoXRlIHrDoWplbSBhIGpzdGUgb2Nob3RuaSBzZSBtbm91IHNwb2x1
cHJhY292YXQuIEtvbnRha3R1anRlIG1lIHByb3PDrW0gcyB2YcWhw61tIGRhcm92YWPDrW0vdGFq
bsO9bSBrw7NkZW0gW0RGRFc0MzAzNFJXMjAyM10gYSBjZWzDvW0gam3DqW5lbSB6ZGUgbmEgbXVq
IHNvdWtyb23DvSBlLW1haWw6IGluZm9Ad2FobGZvdW5kYXRpb24ub3JnCgpQYW4gUmljaGFyZCBX
YWhsCkVtYWlsOiBpbmZvQHdhaGxmb3VuZGF0aW9uLm9yZwpBZGRyZXNzOiBWZXJub24gVG93bnNo
aXAsIE5ldyBKZXJzZXksIFVTQQpSaWNoYXJkIFdhaGwgRm91bmRhdGlvbgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
