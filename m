Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D865BA101
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 20:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B348610C2;
	Thu, 15 Sep 2022 18:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B348610C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kovTLsRoenXo; Thu, 15 Sep 2022 18:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A67761038;
	Thu, 15 Sep 2022 18:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A67761038
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62EAB1BF5AA
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 18:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BE02410CF
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 18:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BE02410CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fsMIYguHeVNW for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 18:53:09 +0000 (UTC)
X-Greylist: delayed 00:10:02 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FAF040359
Received: from sonic306-2.consmr.mail.bf2.yahoo.com
 (sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FAF040359
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 18:53:09 +0000 (UTC)
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663267988; bh=LMX05FOYaHAXGrc1UiKIS8XfmibMy5jtZ7pzjiX6ZfJ=;
 h=X-Sonic-MF:Date:From:Subject:From:Subject;
 b=XG8WU5FqHmaEpYjcy+dch74LLqXjnJn1fo4/pqTINHfadjF1XM0BRXfdFvq8xAmiy0Qcdr4LZBmLnJjPPW7vpm/VHP8tPq5SqIZR9ZEZjY0pWVNWJTlvsNz4iqLDeaL+C2io8W767V8pZjKnWWUjv2qmteDgSgI1ULaAYX0ZoWLysh19ZtvYJaDpY2WE2Qi3hnRJ/H37STrpu4bX+GmxfL/grTlzGH+vC5gk29KuHlQLFe9PoPNKFZsCNj/Fq7Zl5y7WDcZA4XCdm/T5V4ZszF6A4PiQFQmQGJe81wxWcXtUs46vtvCB5ar88+mxse/Jydw8yWmhSDZQ+Ztf89tSsQ==
X-YMail-OSG: lyrxgioVM1mAdpcPGGW8DoaaSmSfNcTfjPQJTdb7Zb_4TC7hYaIRLlcIEWsGtD5
 mpZB.w90AoaxIlKdFrWHp5LNG5EAPb.D3pUluMQUgOFHdMdQtVpRMACnHsdJgeCxuhEZJ59w0oEU
 1VcsuKFHI76LyeJyXCIPhUVDmkIhvKOd2iVmxSn3ljQAXK96W9hHk1aBGF9Vj2QgO6aClGlLm.C_
 IhseucEmU9Ya9t8GoGY7AJ9SkuDM5FH95MLXjAujM3lml3W3r9iCcdn8Pm2TqhSJ19Z75V6q6y7h
 5sJTYVekwdFktgRnGKww7bwNJzERMONMtpGyeNzDBmxDy4rG4oQH6LvPNg2WPfzVySq_URdHe1J9
 xh6Wpzluaxw.uAnNnPIFfqjvjCg3nj.AcSUwqGJXY00uXgIQvhtcXutn2EYsLAn5QfsOw2q.NiWb
 1JXv__UkCVCGeYUmEEDsSW9iEc6c5BcC_KPp7CdFIM6VpOvEJTsr3ujva63N9wpHRrE11_rSZa3W
 KBb11bvMU13F1N_Ac8QfwSXv9.7v72Ff9_llIPtxmcpNgTrgZh4gKk8BxXE.0dFVQho2ZypZSE5x
 _P9YQw0GPcaHSDi4yjDWy6tei.SOA9_prYChMuUUyNicZtvpimiPeQct6dZWeLvRFNcxArIcXZMG
 L_uMLPoOGYY_ypy_UX2LAgJ2fAUfr_5PpKg2Fhawo8M_eSajxm9UvsOUkb5xNpzmjn9eClf5dH9Q
 JHVGemv3HlhtT5L_EXJbi46PJh4PzoqvgEAJQFkzWjGIWTwkFtyhefZ6j6HIEg59e9vL8KMAtSPG
 il2Brkh8L5RUa457GKNGVL502raJ2ZVnXJOdqLC0rgc8tNOdFl12L.wkQndHIL3IrHfbjVwcETJh
 Vi4l1ehB1m8a7MQg.9ixduOoAX0LJiA85FJJfN_m3WGK_RDuU.QHiaeyHYO.fikjfpAuZZXKHHwr
 bFJEvkN6oYrOEnvGrnNukw8M8y35URefbLXoruLuPsRN8SSKRSXtOCpb6FVvHzajd_mUVJiqRAzF
 IHTYJqneIVZEdB18Q9qATl9JBrn9Y6XXFUwk3xya3_ujm_YCxbEewFBZAzk3pqjG5oSkqKFFUP8Q
 nz5cIhX7.Iisn7d1shRs3bDsmGMPl3vnlHGiQ7mgw3EY_HKUTCpEcdNy35yoxWLYAse3DzYTcWu9
 e_prsj7lQcAPhmIdsezpkI6nBMGWnxTSpYCChWoMr.760_dUea4w8o9PrhMZIxmdVf2kE.SKO7et
 2WNQ8Dkj68Ny3i2w8AiO93cqAyHul2hPq03EOGmdizM_KCZjoAeOsLeKUJwut63RJ5Dxw5Wx8cij
 x1ATtcIOM0b5F.j.oxrrnOdAz3rCMtEGBLmPS_P3B4uhMsmdhAIzuDw2WvnZmfM7k5HtYm3QE.nu
 svHjS8mKjTtaYcqI7mNLtsAB0_GURYtfFOn0PHdmzEqafoZdJoSiYcgLWE0GwmngaIH0QoeEgUFw
 9qSeun2LlOUWau2CaOgJ9AZKvagqsKJCtak5mZ3mgQV17DQqsxR.sYd88WLX8dWk9UVUdDwo_bN_
 sxU17XZ287lHFPiDHyEZO6rXjMBYSnmbb9_RGTBjyjzQr73pPrmCHc6vzsjyc3Y58y75i.nKuL4d
 ImDaeYkea51.rrcyeSQSaead7KqiEZpcnLSoP9oJ0PWOAnFHUVChb1UAbaas3OoydZrKFQ5ZcRhG
 6xlyC_pOf3hYX0N3zjV.4WXp26laKWPtWPC32AY4aiiTEx3OWWmbOdiU.RDNb6orLhShFyyZjCWG
 9AfHo9UtUYzw1wq6.vdAjrBzeCuHUnERdUB7nrovpgKvTQnic.KJhWvLcPwhy0PGRxIJidwpb5OF
 1V5ZYy0wCJAnfMDnPg64aA181PH2ob9s0.Jhq_sLusSWPD_1GMT0ARLWBjnG76pdGkUqeskK3zG0
 uTIcdxoYH1g6xHZIcwFmW_ZdDhU.UP6rV295s9KN.79Fn.dRAILnOKoDbjtAJ9gWFWSbPn6Vo5rc
 Vk4Fm_hhhOQoJw7VqhvdSj9eIYKIbY56QXLzanUQmth7fYMb7zyFrWNfPIh6DzfFgg7CLzGITve5
 5ZzbwmwaPqMNYw78JoePRK8gIKYR5qzsewDwF4q4c.QofxM6reP5hbZ8B8BPc1_Qtg56bUTo7agu
 tF.iH__rsZ6Pbwtpl3REmNVEUNTpV
X-Sonic-MF: <kaborms.fatima61@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Thu, 15 Sep 2022 18:53:08 +0000
Date: Thu, 15 Sep 2022 18:43:04 +0000 (UTC)
From: "Ms.Fatima Kabor" <kaborms.fatima61@yahoo.com>
Message-ID: <1821797005.2358681.1663267384019@mail.yahoo.com>
Subject: Business proposal/ Partnership investment
MIME-Version: 1.0
References: <1821797005.2358681.1663267384019.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.20612 YMailNodin
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yahoo.com; s=s2048; t=1663267988;
 bh=swySodpvIPCqFrEh4MM4V4rKJ5hUg7rcwDERJwMA8J0=;
 h=Date:From:Reply-To:Subject:References:From:Subject:Reply-To;
 b=BRPeAnMAsv0QeAa5VIcOguLR9HS6CA1ChVtBqRx2JUNWTCUr0xliEFmb5cXXe1hL5wYXQMwhGUw8NCq+BONRBdgKc8TIFyezd2KxJPWHAa7WmQ+3XIc3d9/vPCOMTGZAT+uguee8LMNh9qY4n5b6xEZ9fsZW5cTUI+QyshHZTNRuxqtPziuQAMkSOFMAvFzD/9dpxIbo9By6SF8aoYbl1SpBzSwPxuIiNkL3opecmuuEqROl7eNoRVzhv5dXZPGd7JvaBi6bvoSZYwS78qhdReI3Ajy7NimTq1q1+ohwYFfxp7trp3++HAYqEngER52UUZUnwaoWKRK5tc/6yVrJWg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com
 header.a=rsa-sha256 header.s=s2048 header.b=BRPeAnMA
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
Reply-To: kaborms.fatima61@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpIZWxsbywKCkdvb2QgZGF5IHRvIHlvdTsgcGxlYXNlIEkgdGhpbmsgaSBmZWVsIHF1aXRlIHNh
ZmUgZGVhbGluZyB3aXRoIHlvdSBpbiB0aGlzIGltcG9ydGFudCBidXNpbmVzcyB0cmFuc2FjdGlv
bi4gVGhvdWdoIHRoaXMgbWVkaXVtIEludGVybmV0IGhhcyBiZWVuIGdyZWF0bHkgYWJ1c2VkLCBi
dXQgSSBjaG9vc2UgdG8gcmVhY2ggeW91IHRocm91Z2ggaXQgYmVjYXVzZSBpdCBzdGlsbCByZW1h
aW5zIHRoZSBmYXN0ZXN0IG1lZGl1bSBvZiBjb21tdW5pY2F0aW9uLgoKSG93ZXZlciwgaSB3aWxs
IGxpa2UgeW91IHRvIGtub3cgdGhhdCB0aGlzIGNvcnJlc3BvbmRlbmNlIGlzIHByaXZhdGUsIGFu
ZCBpdCBzaG91bGQgYmUgdHJlYXRlZCBpbiBzdHJpY3QgY29uZmlkZW5jZS4gQXQgZmlyc3QgSSB3
aWxsIGxpa2UgdG8gYXNzdXJlIHlvdSB0aGF0IHRoaXMgdHJhbnNhY3Rpb24gaXMgMTAwJSByaXNr
IGFuZCB0cm91YmxlIGZyZWUgdG8gYm90aCBwYXJ0aWVzLCBNeSBOYW1lcyBhcmUgTWFkYW0gRmF0
aW1hIEthYm9yLiBBbmQgSSB3aWxsIGxpa2UgdG8gYXNrIGZvciB5b3VyIGFzc2lzdGFuY2UgdG8g
UkVDRUlWRSBpbiB5b3VyIGFjY291bnQgJDcuMk1pbGxpb24gRG9sbGFycyBmb3IgaW52ZXN0bWVu
dC4KClRoaXMgaXMgYSBsZWdpdGltYXRlIHRyYW5zYWN0aW9uIGFuZCBJIGFncmVlZCB0byBvZmZl
ciB5b3UgNDAlIG9mIHRoZSB0b3RhbCBmdW5kIGZvciB5b3VyIGFzc2lzdGFuY2UgYXMgbXkgZm9y
ZWlnbiBwYXJ0bmVyIGFmdGVyIGNvbmZpcm1hdGlvbiBvZiB0aGUgZnVuZCBpbiB5b3VyIGJhbmsg
YWNjb3VudCwgc28gcGxlYXNlIGlmIHlvdSBhcmUgaW50ZXJlc3RlZCBhbmQgdG8gaGFuZGxlIHRo
aXMgcHJvamVjdCBraW5kbHkgZ2V0IGJhY2sgdG8gbWUgd2l0aCB0aGUgZm9sbG93aW5nIHF1ZXN0
aW9uIGJlbG93LgoKMS4gQ2FuIHlvdSBoYW5kbGUgdGhpcyB0cmFuc2FjdGlvbj8KMi4gQ2FuIGkg
Z2l2ZSB5b3UgdGhpcyB0cnVzdCBhbmQgYmVsaWV2ZSB5b3Ugd2lsbCBub3QgYmV0cmF5IG1lIHdo
ZW4gdGhlCmZ1bmRzIHRyYW5zZmVyIHRvIHlvdXIgYWNjb3VudD8KMy4gVGhhdCB5b3Ugd2lsbCBo
ZWxwIG1lIGFuZCBteSBkYXVnaHRlciBmb3IgdGhlIGludmVzdG1lbnQgb2YgdGhlIGZ1bmQKdGhl
cmUgaW4geW91ciBjb3VudHJ5IHdpdGhvdXQgYXBwbHlpbmcgYW55IGdyZWVkeSBvbiB0aGUgZnVu
ZCB3aGVuIGl0IGdldCB0bwp5b3VyIGN1c3RvZHk/CgpZb3VyIGZ1bGwgbmFtZS4uLi4uLi4uLi4u
Li4uLi4KWW91ciBwcm9mZXNzaW9uLi4uLi4uLi4KWW91ciBkaXJlY3QgbW9iaWxlIG51bWJlci4u
Li4uLi4uCllvdXIgcHJpdmV0IGVtYWlsIGFkZHJlc3MuLi4uCllvdXIgc2Nhbm5lZCBjb3B5IG9m
IHlvdXIgaW50ZXJuYXRpb25hbCBwYXNzcG9ydCBvciBhbnkgb2YgeW91ciBjb3VudHJ5IGlkZW50
aXR5CgpPbiB0aGUgb3RoZXIgaGFuZCwgbXkgZGlyZWN0IGZhbWlseSBoYXZlIGEgbGFyZ2UgcXVh
bnRpdHkgb2YgR29sZCBkdXN0IGFuZCBiYXJzIGZvciBzYWxlIHRvIGEgZGlyZWN0IGJ1eWVyLiBP
biBhIG11dHVhbCB1bmRlcnN0YW5kaW5nLCB0aGUgZmFtaWx5IHdpbGwgYWdyZWUgd2l0aCB5b3Ug
YXMgdGhlIHNvbGUgbWlkZGxlIG1hbiBmb3IgdGhlIHNhbGUgb2YgdGhlIGdvbGQgZHVzdCBhbmQg
YmFycy4KCllvdXIgdXJnZW50IHJlc3BvbnNlIGlzIGV4cGVjdGluZyBoZXJlIGluIG15IHByaXZl
dCBlbWFpbCAoIG1kZmF0aW1ha2Fib3JAZ21haWwuY29tKSBidXQgcGxlYXNlIGlmIHlvdSBhcmUg
bm90IGludGVyZXN0ZWQgZGVsZXRlIHRoaXMgbWVzc2FnZSBhbmQgZG9u4oCZdCBib3RoZXIgdG8g
cmVzcG9uZAoKVGhhbmtzIGFuZCBHb2QgYmxlc3MgeW91LApSZWdhcmRzCgpNYWRhbSBGYXRpbWEg
S2Fib3IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
