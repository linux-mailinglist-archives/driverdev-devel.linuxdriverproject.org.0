Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13958168D9D
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Feb 2020 09:32:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0088D86121;
	Sat, 22 Feb 2020 08:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8t1yJPHAsKH8; Sat, 22 Feb 2020 08:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA2368560E;
	Sat, 22 Feb 2020 08:32:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC6701BF5DB
 for <devel@linuxdriverproject.org>; Sat, 22 Feb 2020 08:32:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D912486F88
 for <devel@linuxdriverproject.org>; Sat, 22 Feb 2020 08:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KED-g0ZHWWOV for <devel@linuxdriverproject.org>;
 Sat, 22 Feb 2020 08:32:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-1.consmr.mail.bf2.yahoo.com
 (sonic308-1.consmr.mail.bf2.yahoo.com [74.6.130.40])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1128187BC8
 for <devel@driverdev.osuosl.org>; Sat, 22 Feb 2020 08:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1582360366; bh=oEmV+lvbOveOUwrDB5jl4rt53O4RNh/oI/xakWGg5Pk=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=Hc7HBRLDmqdR8kLEQyohG0qowefIwXHJNRcVZ/OPLr8Ur7j5nSAb+CiefjEoLSKUT+B9QTY+DNNI3UoKxts41Z0l8Gw8GN3X15vr8sxwFj19SV0XIObykuYpgGSaYmmurFP1FwKY+I4aX312hekyMmTbIXIIhlzfC5uBeo0p5NrDZlg+IpeTIjF62pr5CtkDdoFqQT3j1fovubyDBB/rx65f9fItOJpAz98QbwhgpPX4yjqcnY/jfNQVcTWPrXAR7INK9OEpGrkM9tJRVputzeuUbeZ9AcwT/bnhFgINVjXrrunKbdVxe+84tHGeYkI62vb51EbAhXeGBDqCv7fAkw==
X-YMail-OSG: mchyL_sVM1mXm1GJJG7utOnwb5FtP7KyFRcYhyaskTAyQssnRpbEEYunLfIR9_9
 KUpfMar4s9PLA8Y.IK800BuhhL2E6x6oZeJZONKJpsus4kZcXR_Ib60_Qsxh1e0yxA7UwcUjLyoD
 k84aG76EYy_DL2D6oFbSCe7Hf_20RRpkUHzbcbtfU5s_ee3Zd0qyDF3RWLmprHVpiKD7a6HWKwvc
 vMETYGO8t013GyiiKutqr2G.5NLWwlt6xAerrp7wpOazQHiszGIiCSgsGigXimBxPBwjRtJLhFaF
 1qNOe8xFy987ucnWLpoFoYaafjwH1ai19iTn2tmzWX24X95qCz7V._Fvq0rQ6sfK2W_2JNBgjyuq
 1CGpfdpsA6j83ewPY9VsH5k7eV1K0EzRKE6OcFv.vzMEc958T_Os0LyRpNw_yR28AXxFNXTXXUb9
 O3YefVIAy1s7BCqqgQ2hsOzlK4pwe0Mp4rx.FcSW77HULd21_4wm71ZVR0CnhpeFDjyA__Vlw1kC
 eW_r8.bYVD.CawXTM..epl2zAixsXjFqJobpwG.bIvtP8v8rnpFK1RWj2mM7OgCEKBeyhxvOD5eI
 Ngw._yKHUZQEDhxV60.4C_REoYYC5qW3LoJvclFq59mMsuytuWC0NSisYEp6eyazGnR5fM9iTE.j
 2gzIyyjS_uSJVCk9QkPTcACJLBredsXvPhXpObvaM22NwsR7mreQ63ly5vlPpTm35mMDnAvm6F9Y
 aYyVc5GC3q4hqDkSwWiUDIgvoDvHc2gxI8JvFf837kVVi_bkGxzXkpWUtWuWB60vW6fSk3Czx90N
 SSi1LDnhjxvFatA7IW6f1CKoFzyy_hyYLJ0AlyhTgGwW3.qia4v1ZBczfSnvUZnZ_nU_Znr83czu
 5DbF9JbXpNjoA98KVn7v60HSkCioOQA.nMVZ.JyZ.UXlci56XTMcm_uStoxblsc_moRPneIIqJgZ
 wt2Tx15hMXURNzy6J72GrP72YRDaaRgVUrAueems53j4WyCcLD2jGvIGBDbipiZdkxWR.f4SFPx_
 Rb1fZMB5SwQhfhVOPUU3oaS4uP2FH02g4AYi6XOWGqwg3M7Kc_5cmoPKU974FhOiAw_PFMrs7P0f
 2fU.GrzJb0wRuN3JrbFNgwFJTRg4NDZqW7iJMJ3MR0Ta5FST1UW1z5gMsRVRU65H2qOeF66DXObn
 y1tff._dyrESfsTRfS6G2eOs_2vEYAs1HTAQbvC7TxGWejQEmajJywSmFUhu923Muxm3592NUiD.
 QNetts.gIJ6nemGIbk6Lw87FcvRjXr3lLL7B17zizk2EsrO0oUjREBeeXBv1HTPq5QNMWT1J.HpQ
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.bf2.yahoo.com with HTTP; Sat, 22 Feb 2020 08:32:46 +0000
Date: Sat, 22 Feb 2020 08:32:41 +0000 (UTC)
From: AHMED AHMED <yaqilallay2017@gmail.com>
Message-ID: <892786128.4813007.1582360361299@mail.yahoo.com>
Subject: BUSINESS REQUEST...............
MIME-Version: 1.0
References: <892786128.4813007.1582360361299.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15199 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36
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
Reply-To: zaama250@gmx.us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLAoKTXkgbmFtZSBpcyBNci4gQWhtZWQgWmFtYSAgSSBhbSB3cml0aW5nIHRvIHNl
ZWsgeW91ciBjby1vcGVyYXRpb24gb3ZlciB0aGlzIGJ1c2luZXNzIHByb3Bvc2FsLCBBbSB0aGUg
Y2hpZWYgRmluYW5jaWFsIE9mZmljZXIgd2l0aCBhIHdlbGwta25vd24gYmFuayBoZXJlIGluIEJ1
cmtpbmEgRmFzby4gRmlyc3QgaSBtdXN0IHNvbGljaXQgeW91ciBjb25maWRlbmNlIGluIHRoaXMg
dHJhbnNhY3Rpb247IHRoaXMgaXMgYnkgdmlydHVlIGFzIGJlaW5nIHV0dGVybHkgY29uZmlkZW50
aWFsIGFuZCB0b3Agc2VjcmV0LiBUaG91Z2ggSSBrbm93IHRoYXQgYSB0cmFuc2FjdGlvbiBvZiB0
aGlzIG1hZ25pdHVkZSB3aWxsIG1ha2UgYW55IG9uZSBhcHByZWhlbnNpdmUgYW5kIHdvcnJpZWQu
CgpNeSBjb250YWN0aW5nIHlvdSBpcyBiYXNlZCBvbiBhIHNlY3JldCBkaXNjb3Zlcnkgb2YgYSBk
b3JtYW50IGFjY291bnQgIHdpdGggYSB0b3RhbCBzdW0gb2Yg4oKsIDE1IG1pbGxpb24gRXVyb3Mg
LiBEdXJpbmcgb3VyIEJhbmsncyBBY2NvdW50IEF1ZGl0aW5nLiBJdCB3aWxsIGJlIGluIG15IGlu
dGVyZXN0IHRvIHdvcmsgYW5kIGZpbmlzaCB0aGlzIHRyYW5zYWN0aW9uIHdpdGggeW91LiBJZiB5
b3UgY2FuIGJlIGEgY29sbGFib3JhdG9yIHRvIHRoaXMgdHJhbnNhY3Rpb24sIHRoZSBiYW5raW5n
IGxhdyBhbmQgZ3VpZGVsaW5lIGhlcmUgc3RpcHVsYXRlcyB0aGF0IGlmIHN1Y2ggbW9uZXkgcmVt
YWluZWQgdW5jbGFpbWVkIGFmdGVyIDUgeWVhcnMsIHRoZSBtb25leSB3aWxsIGJlIHRyYW5zZmVy
cmVkIGludG8gdGhlIEJhbmsgdHJlYXN1cnkgYXMgdW5jbGFpbWVkIGZ1bmQuCiAgIApNb3N0IGlt
cG9ydGFudGx5LCB5b3Ugd2lsbCBiZSByZXF1aXJlZCB0bzsKCigxKS4gQWN0IGFzIHRoZSBvcmln
aW5hbCBiZW5lZmljaWFyeSBvZiB0aGUgZnVuZHMuICgyKS4gUmVjZWl2ZSB0aGUgZnVuZHMgaW50
byBhIGJ1c2luZXNzL3ByaXZhdGUgYmFuayBhY2NvdW50LiAoMykuIEF0IHRoZSBjb21wbGV0aW9u
IG9mIHRoaXMgdHJhbnNhY3Rpb24sIHRoZSBzaGFyaW5nIHJhdGVzIHNoYWxsIGJlIDYwJSBmb3Ig
bWUsIDMwJSBmb3IgeW91IHdoaWxlIDEwJSB3aWxsIGJlIHVzZWQgYWZ0ZXIgdGhlIGNvbmNsdXNp
b24gb2YgdGhlIHRyYW5zYWN0aW9uLCB0byBzZXR0bGUgYWxsIGZvcmVpZ24gZXhwZW5zZXMgbWFk
ZSBmcm9tIGJvdGggZW5kIGluIHJlc3BlY3QgdG8gdGhlIHNlY3VyaW5nIG9mIHRoZSBmdW5kcy4K
CllvdSBhcmUgbm90IHRvIGZhY2UgYW55IGRpZmZpY3VsdGllcyBvciBsZWdhbCBpbXBsaWNhdGlv
bnMgYXMgSSB3aWxsIHNlY3VyZSBhbGwgdGhlIHZpdGFsIGRvY3VtZW50cyBuZWVkZWQgaW4gdGhp
cyB0cmFuc2FjdGlvbi4gUGxlYXNlIGluZGljYXRlIHlvdXIgcG9zaXRpdmUgaW50ZXJlc3QgaW1t
ZWRpYXRlbHkgZm9yIHVzIHRvIHByb2NlZWQgaWYgbm90IHBsZWFzZSBpZ25vcmUsIHJlbWVtYmVy
IHRoaXMgaXMgYWJzb2x1dGVseSBjb25maWRlbnRpYWwgYmVjYXVzZSBteSBCYW5rIGRvZXMgbm90
IGtub3cgYWJvdXQgaXQuIEdldCBiYWNrIHRvIG1lIGZvciBtb3JlIGRldGFpbHMKClRoYW5rcyBm
b3IgWW91ciBDb29wZXJhdGlvbi4KCldhcm1lc3QgcmVnYXJkcywKCk1yLiBBaG1lZCBaYW1hCkNo
aWVmIEZpbmFuY2lhbCBPZmZpY2VyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
