Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB401DCA8A
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 716B924CB2;
	Thu, 21 May 2020 09:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GaO25cSgDx3U; Thu, 21 May 2020 09:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 42A832306F;
	Thu, 21 May 2020 09:57:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E22061BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DBBBA891EE
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6npsKimDE-HE for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:57:06 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.7.6
Received: from sonic307-56.consmr.mail.ne1.yahoo.com
 (sonic307-56.consmr.mail.ne1.yahoo.com [66.163.190.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82BC9891ED
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1590055025; bh=OWGwHJ9x9PJf7dlxBBeRBfUZJODNYne2+kl8BjeMq+M=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=ojkrhem3CDRAwsXheW7yS3494A2Af3xO68hmTco99PnAsbZB+nLrmuAPk0/HaAypYefdfYA386exkIpzukb4NDasDX4eBQUe3XZ4dTmL77GdpUVLmWLyai/CbkqN2t+rMRWkaruBqhdZuE+THPPLrp/7dyu+umzBIHJBGs+/vPTEq+blWe4bAsTFXQCWkTGB4FT+LCg6WWW0tW7Dwwc3PvBgwee0o4esWkx2Ajgk6odDBTdAGGCFpKlA7OWNWXsV0B12n2raSIVdJG08UbbZkoCEGxpP2p1rpexITSnzZ7EcPMfmc8yjKpwuENsySkM6tO/r4LYa08bDHfpb86lE5A==
X-YMail-OSG: f8GiwRAVM1m5PtwTZqwrFsXWwg6MITGcD05UthwbvwSo72SePGHp8p1Q_i26gbA
 TMk24V0HjtPgHMCe2K3UAI.EE94O9GEKicVeqz11KiAOLabwVoizuIbpEnv8.Er7VaBC5ppfuHeG
 wS1e_bB8TjJBkIwpnw0oZz9.3h4sIQqbEYy9srlDcByHBd2J2V64tvLUmqtvAxaXFpTjJOg6rQVZ
 yRqWJib.ZI4jakwJGON7NL_Dpo1FHZalFaMdLNJ9osqkRYv0fnAPzJcq_l6ViGwgqnXdQnlcWgYJ
 HDBwvJOn6Rr07ELEkODow2CpABkV6JGr49_EMrbcHTC0RMXOuBtsvBexPZ8nU0DgE8_TaKXTxfou
 WCy0mgntkmLF4Zxo6BesymVIjDvaix3PfsvQ3oquzYqoM5TZ9bigVVtIhPVopoldWrK.eWF4gVkJ
 0YxsOXVpVC7ANuba5WZcYplL9.dPfQvIaHDfjS5zyq6vGkH0DzpX7Mj3T2BDPt5AG_AqYnwpL30h
 qriHbxca50XDzYlf367X5VPDZzRnpsXwAqqiI_sU53kxxZXQCr4XfinKeMDHgJv3PrRPQj09oLEt
 VlvfrLq3KOI9URVwefVlqS1Gzbnox0mVAOYLOVQwMLtrNipYvJlQQ3E_NcopCAB6GseGxlQDalU5
 mfFBMvfNXG9m3gv3gZQBjggj7bnJcf5Uo1YSk03iNJPZpea26fnffYIvxPN9uUM8vE3Eu26lxAIj
 zwZPJVyQn_v.R9QCSR_lqtg32WHJkGQe7BHQ.pMve7MP35zUEdzCd7huy.Tsueqx3gYQ60.1K8e7
 ykEAWuMX.7sIuEFu6yHYr_YwIh90wZy5DjXhojU25s2tQGXPQeoo3GxyIDLHmu1P3kioYMvdIcEO
 dm9MVBt_8bu6gnFdVvB_jGfu4mbdCv8cGSKT7ecPhiIAG.2Ekh7obXJc.LK4mLvkaxZv44IQmeqb
 i1K1hrAhw3NfRFaI7Ve01QGvl11yRbLb41d8YKxrq5DFoMiBJDstfm96JUWbH8Oqz_ueh489858Q
 cHXtBE2FhbtWeX6R8G8Zonv0NW7TeICw9TqEaLT_615jHZmCiKssCgdbKyxXU5q3D8juw3dVt_G4
 y7NgL5I_wr.rEwRBJl6PINX32614050EcItOqspKpxyMK8ZbJb6_ImCcO.DtBVtDVHwlEs_h7nsn
 GkP7WWKsc.yl.Se9nrrHYpg1ioh7cr3q1.UzrEhJVj9tFN2Dn0_EdDs.xN6t2lYGHfbz9jB445sm
 3DHnINaxXRMObvUVsaeuMJ2PmFMAHnFj878.Co6uvGmEv88Y8CdJb3z.TxBWIztVyawuN
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ne1.yahoo.com with HTTP; Thu, 21 May 2020 09:57:05 +0000
Date: Thu, 21 May 2020 09:47:03 +0000 (UTC)
From: "Mrs. Flora Diomande" <flora-diomande@outlook.fr>
Message-ID: <46660002.341909.1590054423717@mail.yahoo.com>
Subject: Greetings dearest in the lord,
MIME-Version: 1.0
References: <46660002.341909.1590054423717.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15959 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36
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
Reply-To: d_iomandeflora@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzIGRlYXJlc3QgaW4gdGhlIGxvcmQsCgpJIGdyZWV0IHlvdSB3aXRoIHRoZSBuYW1l
IG9mIG91ciBMb3JkIEplc3VzIENocmlzdDsgaXQgaXMgdHJ1ZSB0aGF0IHRoaXMgbGV0dGVyIG1h
eSBjb21lIHRvIHlvdSBhcyBhIHN1cnByaXNlLiBOZXZlcnRoZWxlc3MsIEkgaHVtYmx5IGFzayB5
b3UgdG8gZ2l2ZSBtZSB5b3VyIGF0dGVudGlvbiBhbmQgaGVhciBtZSB3ZWxsLiBNeSBuYW1lIGlz
IE1ycy4gRmxvcmEgRGlvbWFuZGUgZnJvbSBVbml0ZWQgU3RhdGVzIG9mIEFtZXJpY2EuIEkgYW0g
NTggeWVhcnMgb2xkIGFuZCBJIGFtIG1hcnJpZWQgdG8gTXIuIEJha2F5b2tvIERpb21hbmRlIHdo
byBvbmNlIHdvcmtlZCB3aXRoIG91ciBFbWJhc3N5IGluIEdlcm1hbnkgaW4gdGhlIHllYXIgMjAw
MiBhbmQgaGUgYWxzbyB3b3JrZWQgaW4gYW4gZW1iYXNzeSBpbiBDb3RlIGQnSXZvaXJlIGZvciBh
IHBlcmlvZCBvZiAxNiB5ZWFycyBiZWZvcmUgaGUgZGllZC4KCldlIHdlcmUgbWFycmllZCBmb3Ig
MzAgeWVhcnMgd2l0aG91dCBhIGNoaWxkIGJlZm9yZSBoZSBkaWVkIGFmdGVyIGEgYnJpZWYgaWxs
bmVzcy4gU2luY2UgaGlzIGRlYXRoIEkgZGVjaWRlZCBub3QgdG8gcmVtYXJyeSBkdWUgdG8gbXkg
cmVsaWdpb3VzIGJlbGllZi4gV2hlbiBteSBsYXRlIGh1c2JhbmQgd2FzIGFsaXZlIGhlIGRlcG9z
aXRlZCB0aGUgc3VtIG9mIFVTRCQ0LjUgTWlsbGlvbiAoRm91ciBNaWxsaW9uLCBGaXZlIEh1bmRy
ZWQgVGhvdXNhbmQgVW5pdGVkIFN0YXRlIGRvbGxhcnMpIHdpdGggYSBCYW5rIGluIENvdGUgZCdJ
dm9pcmUuIFByZXNlbnRseSB0aGlzIG1vbmV5IGlzIHN0aWxsIGluIHRoZSBjdXN0b2R5IG9mIHRo
ZSBCYW5rLiBSZWNlbnRseSwgbXkgRG9jdG9yIHRvbGQgbWUgdGhhdCBJIHdvdWxkIG5vdCBsYXN0
IGZvciB0aGUgbmV4dCBGb3VyIG1vbnRocyBkdWUgdG8gbXkgY2FuY2VyIGlsbG5lc3MuCgpIYXZp
bmcga25vd24gbXkgY29uZGl0aW9uIEkgZGVjaWRlZCB0byBkb25hdGUgdGhpcyBtb25leSB0byBj
aHVyY2hlcywgb3JnYW5pemF0aW9uIG9yIGdvb2QgcGVyc29uIHRoYXQgd2lsbCB1dGlsaXplIHRo
aXMgbW9uZXkgdGhlIHdheSBJIGFtIGdvaW5nIHRvIGluc3RydWN0IGhlcmVpbi4KCkkgd2FudCB5
b3UgdG8gdXNlIHRoaXMgbW9uZXkgZm9yIGNodXJjaGVzLCBDaGFyaXR5IG9yZ2FuaXphdGlvbiwg
b3JwaGFuYWdlcywgd2lkb3dzIGFuZCBvdGhlciBwZW9wbGUgdGhhdCBhcmUgaW4gbmVlZC4gbCB0
b29rIHRoaXMgZGVjaXNpb24gYmVjYXVzZSBJIGRvbid0IGhhdmUgYW55IGNoaWxkIHRoYXQgd2ls
bCBpbmhlcml0IHRoaXMgbW9uZXkuIE1vcmVvdmVyLCBteSBodXNiYW5kIHJlbGF0aXZlcyBhcmUg
bm90IGNsb3NlIHRvIG1lIHNpbmNlIEkgZGV2ZWxvcCBhIENhbmNlciBwcm9ibGVtIGFuZCBpdCBo
YWQgYmVlbiB0aGVpciB3aXNoIHRvIHNlZSBtZSBkZWFkIGluIG9yZGVyIHRvIGluaGVyaXQgaGlz
IHdlYWx0aCBzaW5jZSB3ZSBoYXZlIG5vIENoaWxkLiBUaGVzZSBwZW9wbGUgYXJlIG5vdCB3b3J0
aHkgb2YgdGhpcyBpbmhlcml0YW5jZS4gVGhpcyBpcyB3aHkgSSBhbSB0YWtpbmcgdGhpcyBkZWNp
c2lvbiB0byBjb250YWN0IHlvdSBhbmQgZG9uYXRlIHRoaXMgZnVuZCB0byB5b3UgaW4gb3JkZXIg
Zm9yIHlvdSB0byB1c2UgaXQgZm9yIHRoZSBjaGFyaXR5IHdvcmtzLgoKQXMgc29vbiBhcyBJIHJl
Y2VpdmUgeW91ciByZXBseSBJIHdpbGwgZ2l2ZSB5b3UgdGhlIGNvbnRhY3Qgb2YgdGhlIEJhbmsg
aW4gQ290ZSBkJ0l2b2lyZSB3aGVyZSB0aGlzIG1vbmV5IGlzIGRlcG9zaXRlZCBieSBteSBodXNi
YW5kIGJlZm9yZSBoaXMgc3VkZGVuIGRlYXRoLCBhbHNvIEkgd2lsbCBpbnN0cnVjdCBvdXIgZmFt
aWx5IGxhd3llciBpbiBDb3RlIGTigJlJdm9pcmUgdG8gaXNzdWUgYSBsZXR0ZXIgb2YgYXV0aG9y
aXphdGlvbiB0byB0aGUgYmFuayB0aGF0IHdpbGwgcHJvdmUgeW91IHRoZSBwcmVzZW50IGJlbmVm
aWNpYXJ5IG9mIHRoaXMgbW9uZXkuIEkgYWxzbyB3YW50IHlvdSB0byBhbHdheXMgcHV0IG1lIGlu
IHlvdXIgZGFpbHkgcHJheWVyLgoKQW55IGRlbGF5IGluIHlvdXIgcmVwbHkgbWF5IGdpdmUgbWUg
cm9vbSB0byBsb29rIGZvciBhbm90aGVyIGdvb2QgcGVyc29uIGZvciB0aGlzIHNhbWUgcHVycG9z
ZS4gUGxlYXNlIGFzc3VyZSBtZSB0aGF0IHlvdSB3aWxsIGFjdCBhY2NvcmRpbmdseSBhcyBJIHN0
YXRlZCBoZXJlaW4uCgpUaGFua3MgYW5kIFJlbWFpbiBibGVzc2VkLgoKWW91cnMgc2lzdGVyIGlu
IHRoZSBMb3JkLAoKTXJzLiBGbG9yYSBEaW9tYW5kZSwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
