Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A57C1E52B5
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 03:12:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D04838890A;
	Thu, 28 May 2020 01:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hnpofESPs6D; Thu, 28 May 2020 01:12:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C58978890E;
	Thu, 28 May 2020 01:12:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 697931BF47F
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 01:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6659186F06
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 01:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L3ssBJh2tJAK for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 01:12:21 +0000 (UTC)
X-Greylist: delayed 00:10:02 by SQLgrey-1.7.6
Received: from sonic309-26.consmr.mail.ir2.yahoo.com
 (sonic309-26.consmr.mail.ir2.yahoo.com [77.238.179.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB63686E5E
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 01:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1590628338; bh=Do4PB9n5L/oUYayFqH6Fq6gAAnMVW+U6x2Q2dpapzLI=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=iEXQVix8x9ZwvOzXPqOLaEQwEWaDk/mjmZirGmFVuk7r1Dmd9Txw0lVxgHrisMtCz+0SiYdUwNlLBQY/Go1tD1WlMEL/EtP9gXTvqfQaN10i8Cg9WEcKxhLA0VOrqJyQMyY+YC5ZrpYzUGQqJNKcuzW7I4TxTUlYx0MIGCrMk6QbT/EEplVesnd6cGdniT0ACBIVBgMH5F3wpuh4ylNzenhEW57V6hv11DNaQFzWvwKWbUhyewKxisCssV49b4KnR+/gGYCHom8cbtcK9AhqvXRZp0J//V93hpC1ZbqrsB0OAnV8XYS22UivE8Jml/DiW7B9t3a5vYc646kuh/YZ5w==
X-YMail-OSG: 1azHipYVM1l3vP7lr6bP.RjbINbJYsxRNBxxf7G4F.84fxBWBiAiIx3V1Dt4f6y
 pyz1YOtqa.IaqsJN8I.qQM5EWlPvjqbkSGVB5dapJQY.Dh4SFq7NevMirljt4mGAMnsptfj5YoF.
 L2N3mRcbNdwwwmkh8gwY3rIQ9kM66uZjZJXbvKWPW6yo2ZKlO8.sS4WbOMCkDKJVqKDAj4_Us2oN
 rEexdGJAydXysNbOZ3a1tis5FbMjOAbSZX6zoZA19GnLrJ7cBrt0Q2EvmHTfAiTMoChHKqi.Ombp
 oHf7cYi8rzEpsWHvERIaBWG1OJPyYtQ_qOYLg.QW7rrijujf8a91OjjQZQfp8BZu9fJt4hPlLIbS
 TpmVNv.4j6WKSeNrXQGXxhiLNtq_OwiqwXO9RjH_5lTbptYOvw039mWdIfnAj6_0HJFplnqRsR28
 1N73U.wJ_5dxpQOyz1ka1TOr1lgKuKbQy0u5FxZt9e2JGuDAUQx6CaUmqxTF8epGg7FottltCWGe
 KTeePaMxH1LL6Czhuj3JUES4oBGl12ZLyb43pb_cfxpXbQWfzijCpATOBzezJTlo8E8XleqsI3ow
 kEN_aWglp..pzSUqIq5VVKIdFw.MeQyWSyTgLemw8yBqwK2r6KpoBpzjVzn_xnYTfEImewdmQNey
 hi0VYAC2lBYgOug1ZJuJ.fkm7ikrXwQjZiR9PjfUfbp39nd7L6u6JyXAYkhKhx28LyASJfSY3UsA
 CGeBGh9zZKPvcsqLOmD.FT6ibQ3jrlfvTM_tYAD6E9hJaFQulS8WcZPf1xp4LWyIot0JtzF.YsTW
 aZrWE1j1Urt_h37YbJ6N6I1BXp9rrM74_HKqbNbOv_xzI6P3gbnzaQ.GslHD2NIlhfkE70MLXfSC
 daBgCUnQVmZ.Px.F6zbiV2z4.7uSvm9kozYzH25XQyFpRYSaO.sRiTltD8ssg8lS74OOW9hK_ZQD
 W04mltYo_QHMdpAFPOWszEDvSSlECaNMhXBnvibaJlXADqubWQmF1NP6gcgLlEpTjCJYIByygFIT
 1s99rbukwNjChuQzac_E4OMED_qDbhwg3MakP.xuoAHAe_OwDahBYEoXkAe8yqmZPkIN.m9xGxYq
 g1tiV3mCG_YyiRDPnrh_TkCizpcsxBz07AEDpo7IZZGisT6_fPgYKJtad8KFfOtVcw89fKW0gzk1
 2dmmcfCHhWxex1jTqTp9aZOOz2Tf_avr6.NIzKekxAo72.Yte7sbTm4paq3pnTk3OSIolQdqlitw
 2lVSs9_fyJ95WRCEK1MH4ojqNheNGuuClMtOBfJmWd2srm1LejJPo5JExaX_d9F9K8f96
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ir2.yahoo.com with HTTP; Thu, 28 May 2020 01:12:18 +0000
Date: Thu, 28 May 2020 00:52:08 +0000 (UTC)
From: Abderazack zebdani <Abdurazackzebdani@yandex.com>
Message-ID: <1946617426.1218564.1590627128308@mail.yahoo.com>
Subject: Greetings My Dear Friend,
MIME-Version: 1.0
References: <1946617426.1218564.1590627128308.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15959 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:76.0) Gecko/20100101 Firefox/76.0
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
Reply-To: mohammedbenanni@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgoKR3JlZXRpbmdzIE15IERlYXIgRnJpZW5kLAoKQmVmb3JlIEkgaW50cm9kdWNlIG15c2VsZiwg
SSB3aXNoIHRvIGluZm9ybSB5b3UgdGhhdCB0aGlzIGxldHRlciBpcyBub3QgYSBob2F4IG1haWwg
YW5kIEkgdXJnZSB5b3UgdG8gdHJlYXQgaXQgc2VyaW91cy5UaGlzIGxldHRlciBtdXN0IGNvbWUg
dG8geW91IGFzIGEgYmlnIHN1cnByaXNlLCBidXQgSSBiZWxpZXZlIGl0IGlzIG9ubHkgYSBkYXkg
dGhhdCBwZW9wbGUgbWVldCBhbmQgYmVjb21lIGdyZWF0IGZyaWVuZHMgYW5kIGJ1c2luZXNzIHBh
cnRuZXJzLiBQbGVhc2UgSSB3YW50IHlvdSB0byByZWFkIHRoaXMgbGV0dGVyIHZlcnkgY2FyZWZ1
bGx5IGFuZCBJIG11c3QgYXBvbG9naXplIGZvciBiYXJnaW5nIHRoaXMgbWVzc2FnZSBpbnRvIHlv
dXIgbWFpbCBib3ggd2l0aG91dCBhbnkgZm9ybWFsIGludHJvZHVjdGlvbiBkdWUgdG8gdGhlIHVy
Z2VuY3kgYW5kIGNvbmZpZGVudGlhbGl0eSBvZiB0aGlzIGJ1c2luZXNzIGFuZCBJIGtub3cgdGhh
dCB0aGlzIG1lc3NhZ2Ugd2lsbCBjb21lIHRvIHlvdSBhcyBhIHN1cnByaXNlLiBQbGVhc2UgdGhp
cyBpcyBub3QgYSBqb2tlIGFuZCBJIHdpbGwgbm90IGxpa2UgeW91IHRvIGpva2Ugd2l0aCBpdCBv
ayxXaXRoIGR1ZSByZXNwZWN0IHRvIHlvdXIgcGVyc29uIGFuZCBtdWNoIHNpbmNlcml0eSBvZiBw
dXJwb3NlLCBJIG1ha2UgdGhpcyBjb250YWN0IHdpdGggeW91IGFzIEkgYmVsaWV2ZSB0aGF0IHlv
dSBjYW4gYmUgb2YgZ3JlYXQgYXNzaXN0YW5jZSB0byBtZS4gTXkgbmFtZSBpcyBNci5BYmRlcmF6
YWNremViZGFuaSwgZnJvbSBCdXJraW5hIEZhc28sIFdlc3QgQWZyaWNhLiBJIHdvcmsgaW4gQmFu
ayBPZiBBZnJpY2EgKEJPQSkgYXMgdGVsZXggbWFuYWdlciwgcGxlYXNlIHNlZSB0aGlzIGFzIGEg
Y29uZmlkZW50aWFsIG1lc3NhZ2UgYW5kIGRvIG5vdCByZXZlYWwgaXQgdG8gYW5vdGhlciBwZXJz
b24gYW5kIGxldCBtZSBrbm93IHdoZXRoZXIgeW91IGNhbiBiZSBvZiBhc3Npc3RhbmNlIHJlZ2Fy
ZGluZyBteSBwcm9wb3NhbCBiZWxvdyBiZWNhdXNlIGl0IGlzIHRvcCBzZWNyZXQuCgpJIGFtIGFi
b3V0IHRvIHJldGlyZSBmcm9tIGFjdGl2ZSBCYW5raW5nIHNlcnZpY2UgdG8gc3RhcnQgYSBuZXcg
bGlmZSBidXQgSSBhbSBza2VwdGljYWwgdG8gcmV2ZWFsIHRoaXMgcGFydGljdWxhciBzZWNyZXQg
dG8gYSBzdHJhbmdlci4gWW91IG11c3QgYXNzdXJlIG1lIHRoYXQgZXZlcnl0aGluZyB3aWxsIGJl
IGhhbmRsZWQgY29uZmlkZW50aWFsbHkgYmVjYXVzZSB3ZSBhcmUgbm90IGdvaW5nIHRvIHN1ZmZl
ciBhZ2FpbiBpbiBsaWZlLiBJdCBoYXMgYmVlbiAxMCB5ZWFycyBub3cgdGhhdCBtb3N0IG9mIHRo
ZSBncmVlZHkgQWZyaWNhbiBQb2xpdGljaWFucyB1c2VkIG91ciBiYW5rIHRvIGxhdW5kZXIgbW9u
ZXkgb3ZlcnNlYXMgdGhyb3VnaCB0aGUgaGVscCBvZiB0aGVpciBQb2xpdGljYWwgYWR2aXNlcnMu
IE1vc3Qgb2YgdGhlIGZ1bmRzIHdoaWNoIHRoZXkgdHJhbnNmZXJyZWQgb3V0IG9mIHRoZSBzaG9y
ZXMgb2YgQWZyaWNhIHdlcmUgZ29sZCBhbmQgb2lsIG1vbmV5IHRoYXQgd2FzIHN1cHBvc2VkIHRv
IGhhdmUgYmVlbiB1c2VkIHRvIGRldmVsb3AgdGhlIGNvbnRpbmVudC4gVGhlaXIgUG9saXRpY2Fs
IGFkdmlzZXJzIGFsd2F5cyBpbmZsYXRlZCB0aGUgYW1vdW50cyBiZWZvcmUgdHJhbnNmZXJyaW5n
IHRvIGZvcmVpZ24gYWNjb3VudHMsIHNvIEkgYWxzbyB1c2VkIHRoZSBvcHBvcnR1bml0eSB0byBk
aXZlcnQgcGFydCBvZiB0aGUgZnVuZHMgaGVuY2UgSSBhbSBhd2FyZSB0aGF0IHRoZXJlIGlzIG5v
IG9mZmljaWFsIHRyYWNlIG9mIGhvdyBtdWNoIHdhcyB0cmFuc2ZlcnJlZCBhcyBhbGwgdGhlIGFj
Y291bnRzIHVzZWQgZm9yIHN1Y2ggdHJhbnNmZXJzIHdlcmUgYmVpbmcgY2xvc2VkIGFmdGVyIHRy
YW5zZmVyLiBJIGFjdGVkIGFzIHRoZSBCYW5rIE9mZmljZXIgdG8gbW9zdCBvZiB0aGUgcG9saXRp
Y2lhbnMgYW5kIHdoZW4gSSBkaXNjb3ZlcmVkIHRoYXQgdGhleSB3ZXJlIHVzaW5nIG1lIHRvIHN1
Y2NlZWQgaW4gdGhlaXIgZ3JlZWR5IGFjdDsgSSBhbHNvIGNsZWFuZWQgc29tZSBvZiB0aGVpciBi
YW5raW5nIHJlY29yZHMgZnJvbSB0aGUgQmFuayBmaWxlcyBhbmQgbm8gb25lIGNhcmVkIHRvIGFz
ayBtZSBiZWNhdXNlIHRoZSBtb25leSB3YXMgdG9vIG11Y2ggZm9yIHRoZW0gdG8gY29udHJvbC4g
VGhleSBsYXVuZGVyZWQgb3ZlciAkNWJpbGxpb24gRG9sbGFycyBkdXJpbmcgdGhlIHByb2Nlc3Mu
CgpCZWZvcmUgSSBzZW5kIHRoaXMgbWVzc2FnZSB0byB5b3UsIEkgaGF2ZSBhbHJlYWR5IGRpdmVy
dGVkICgkMTAuNW1pbGxpb24gRG9sbGFycykgdG8gYW4gZXNjcm93IGFjY291bnQgYmVsb25naW5n
IHRvIG5vIG9uZSBpbiB0aGUgYmFuay4gVGhlIGJhbmsgaXMgYW54aW91cyBub3cgdG8ga25vdyB3
aG8gdGhlIGJlbmVmaWNpYXJ5IHRvIHRoZSBmdW5kcyBpcyBiZWNhdXNlIHRoZXkgaGF2ZSBtYWRl
IGEgbG90IG9mIHByb2ZpdHMgd2l0aCB0aGUgZnVuZHMuIEl0IGlzIG1vcmUgdGhhbiBFaWdodCB5
ZWFycyBub3cgYW5kIG1vc3Qgb2YgdGhlIHBvbGl0aWNpYW5zIGFyZSBubyBsb25nZXIgdXNpbmcg
b3VyIGJhbmsgdG8gdHJhbnNmZXIgZnVuZHMgb3ZlcnNlYXMuIFRoZSAoJDEwLjVtaWxsaW9uIERv
bGxhcnMpIGhhcyBiZWVuIGxheWluZyB3YXN0ZSBpbiBvdXIgYmFuayBhbmQgSSBkb27igJl0IHdh
bnQgdG8gcmV0aXJlIGZyb20gdGhlIGJhbmsgd2l0aG91dCB0cmFuc2ZlcnJpbmcgdGhlIGZ1bmRz
IHRvIGEgZm9yZWlnbiBhY2NvdW50IHRvIGVuYWJsZSBtZSBzaGFyZSB0aGUgcHJvY2VlZHMgd2l0
aCB0aGUgcmVjZWl2ZXIgKGEgZm9yZWlnbmVyKS4gVGhlIG1vbmV5IHdpbGwgYmUgc2hhcmVkIDYw
JSBmb3IgbWUgYW5kIDQwJSBmb3IgeW91LiBUaGVyZSBpcyBubyBvbmUgY29taW5nIHRvIGFzayB5
b3UgYWJvdXQgdGhlIGZ1bmRzIGJlY2F1c2UgSSBzZWN1cmVkIGV2ZXJ5dGhpbmcuIEkgb25seSB3
YW50IHlvdSB0byBhc3Npc3QgbWUgYnkgcHJvdmlkaW5nIGEgcmVsaWFibGUgYmFuayBhY2NvdW50
IHdoZXJlIHRoZSBmdW5kcyBjYW4gYmUgdHJhbnNmZXJyZWQuCgpZb3UgYXJlIG5vdCB0byBmYWNl
IGFueSBkaWZmaWN1bHRpZXMgb3IgbGVnYWwgaW1wbGljYXRpb25zIGFzIEkgYW0gZ29pbmcgdG8g
aGFuZGxlIHRoZSB0cmFuc2ZlciBwZXJzb25hbGx5LiBJZiB5b3UgYXJlIGNhcGFibGUgb2YgcmVj
ZWl2aW5nIHRoZSBmdW5kcywgZG8gbGV0IG1lIGtub3cgaW1tZWRpYXRlbHkgdG8gZW5hYmxlIG1l
IGdpdmUgeW91IGEgZGV0YWlsZWQgaW5mb3JtYXRpb24gb24gd2hhdCB0byBkby4gRm9yIG1lLCBJ
IGhhdmUgbm90IHN0b2xlbiB0aGUgbW9uZXkgZnJvbSBhbnlvbmUgYmVjYXVzZSB0aGUgb3RoZXIg
cGVvcGxlIHRoYXQgdG9vayB0aGUgd2hvbGUgbW9uZXkgZGlkIG5vdCBmYWNlIGFueSBwcm9ibGVt
cy4gVGhpcyBpcyBteSBjaGFuY2UgdG8gZ3JhYiBteSBvd24gbGlmZSBvcHBvcnR1bml0eSBidXQg
eW91IG11c3Qga2VlcCB0aGUgZGV0YWlscyBvZiB0aGUgZnVuZHMgc2VjcmV0IHRvIGF2b2lkIGFu
eSBsZWFrYWdlcyBhcyBubyBvbmUgaW4gdGhlIGJhbmsga25vd3MgYWJvdXQgbXkgcGxhbnMuUGxl
YXNlIGdldCBiYWNrIHRvIG1lIGlmIHlvdSBhcmUgaW50ZXJlc3RlZCBhbmQgY2FwYWJsZSB0byBo
YW5kbGUgdGhpcyBwcm9qZWN0LCBJIHNoYWxsIGludGltYXRlIHlvdSBvbiB3aGF0IHRvIGRvIHdo
ZW4gSSBoZWFyIGZyb20geW91ciBjb25maXJtYXRpb24gYW5kIGFjY2VwdGFuY2UuSWYgeW91IGFy
ZSBjYXBhYmxlIG9mIGJlaW5nIG15IHRydXN0ZWQgYXNzb2NpYXRlLCBkbyBkZWNsYXJlIHlvdXIg
Y29uc2VudCB0byBtZSBJIGFtIGxvb2tpbmcgZm9yd2FyZCB0byBoZWFyIGZyb20geW91IGltbWVk
aWF0ZWx5IGZvciBmdXJ0aGVyIGluZm9ybWF0aW9uLgoKVGhhbmtzIHdpdGggbXkgYmVzdCByZWdh
cmRzLgpNci5BYmRlcmF6YWNrIHplYmRhbmkuClRlbGV4IE1hbmFnZXIKQmFuayBPZiBBZnJpY2Eg
KEJPQSkKQnVya2luYSBGYXNvLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
